#include <libwebsockets.h>
#include <unordered_map>
#include <set>
#include <string>
#include <iostream>
#include <thread>
#include <chrono>
#include "OrderManager.h"
#include <nlohmann/json.hpp>

using json = nlohmann::json;

// Structure to store client data, including the symbols they are subscribed to
struct ClientData {
    std::string subscribed_symbol;  // Currently subscribed symbol
};

// Global mapping from client connections to their associated data
std::unordered_map<struct lws*, ClientData> clients;

// Initialize OrderManager for instrument and order book management
OrderManager orderManager("client_id", "client_secret");  // Replace with actual values

// Function to send a JSON message to the client
void send_message(struct lws *wsi, const json &message) {
    std::string message_str = message.dump();
    unsigned char *buf = new unsigned char[LWS_SEND_BUFFER_PRE_PADDING + message_str.size() + LWS_SEND_BUFFER_POST_PADDING];
    std::copy(message_str.begin(), message_str.end(), buf + LWS_SEND_BUFFER_PRE_PADDING);
    lws_write(wsi, buf + LWS_SEND_BUFFER_PRE_PADDING, message_str.size(), LWS_WRITE_TEXT);
    delete[] buf;
}

// Callback function to handle WebSocket events
static int websocket_callback(struct lws *wsi, enum lws_callback_reasons reason, void *user, void *in, size_t len) {
    switch (reason) {
        case LWS_CALLBACK_ESTABLISHED:
            std::cout << "Client connected." << std::endl;
            clients[wsi] = {}; // Initialize client data
            break;

        case LWS_CALLBACK_RECEIVE: {
            std::string message((const char*)in, len);
            std::cout << "Received message: " << message << std::endl;
            
            json parsed_message;
            try {
                parsed_message = json::parse(message);
            } catch (...) {
                std::cerr << "Received non-JSON message." << std::endl;
                return 0;
            }

            if (parsed_message.contains("type")) {
                // Handle currency selection to send available instruments
                if (parsed_message["type"] == "currency_select") {
                    std::string currency = parsed_message["currency"];
                    auto instruments = orderManager.get_instruments(currency);
                    json response = {{"type", "instrument_list"}, {"instruments", instruments}};
                    send_message(wsi, response);
                }
                // Handle instrument subscription and order book update requests
                else if (parsed_message["type"] == "instrument_select") {
                    std::string instrument_name = parsed_message["instrument_name"];
                    clients[wsi].subscribed_symbol = instrument_name;
                }
            }
            break;
        }

        case LWS_CALLBACK_CLOSED:
            std::cout << "Client disconnected." << std::endl;
            clients.erase(wsi); // Remove client data on disconnect
            break;

        default:
            break;
    }
    return 0;
}

// WebSocket protocols array
static const struct lws_protocols protocols[] = {
    {"websocket-protocol", websocket_callback, sizeof(ClientData), 1024},
    {NULL, NULL, 0, 0}
};

// Function to broadcast order book updates based on subscriptions
void broadcast_order_book_updates(struct lws_context *context) {
    while (true) {
        for (auto &[client_wsi, client_data] : clients) {
            if (!client_data.subscribed_symbol.empty()) {
                auto response = orderManager.get_order_book(client_data.subscribed_symbol);
                if (response.status_code == 200) {
                    json j_res = json::parse(response.text);
                    json order_book_update = {
                        {"type", "order_book_update"},
                        {"order_book", j_res["result"]}
                    };
                    send_message(client_wsi, order_book_update);
                }
            }
        }
        std::this_thread::sleep_for(std::chrono::seconds(1));
    }
}

int main() {
    struct lws_context_creation_info info;
    memset(&info, 0, sizeof(info));
    info.port = 8080;
    info.protocols = protocols;
    info.gid = -1;
    info.uid = -1;

    struct lws_context *context = lws_create_context(&info);
    if (!context) {
        std::cerr << "Failed to create WebSocket context." << std::endl;
        return 1;
    }

    std::thread broadcaster_thread(broadcast_order_book_updates, context);

    while (true) {
        lws_service(context, 1000);
    }

    broadcaster_thread.join();
    lws_context_destroy(context);
    return 0;
}
