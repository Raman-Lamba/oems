#include <iostream>
#include <fstream>
#include <nlohmann/json.hpp> 
#include "OrderManager.h"

using json = nlohmann::json;

void print_response(const std::string& title, const cpr::Response& response) {
    std::cout << title << " Response: " << response.text << std::endl;
}

void print_open_orders(OrderManager& order_manager, const std::string& instrument_name) {
    std::vector<std::string> order_ids = order_manager.get_order_ids(instrument_name);
    std::cout << "Current open orders for " << instrument_name << ":" << std::endl;
    for (const auto& id : order_ids) {
        std::cout << "- Order ID: " << id << std::endl;
    }
}


int main()
{
    std::ifstream config_file("/Users/ramanlamba/Desktop/deribit/oems/config.json");

    // Check if the file is open
    if (!config_file.is_open()) {
        std::cerr << "Error: Unable to open config.json file." << std::endl;
        return 1; // Exit with error code
    }

    // Read the config file
    json config;
    try {
        config_file >> config;
    } catch (const json::parse_error& e) {
        std::cerr << "Error parsing JSON: " << e.what() << std::endl;
        return 1; // Exit with error code
    }

    // Get API credentials
    std::string client_id = config["api_id"];
    std::string client_secret = config["secret_key"];
    
    OrderManager order_manager(client_id, client_secret);

    if (!order_manager.authenticate())
    {
        return 1;
    }

    // Test getting instruments
    std::vector<std::string> instruments = order_manager.get_instruments("BTC");
    if (instruments.empty()) {
        std::cerr << "No instruments found for BTC." << std::endl;
        return 1; // Exit if no instruments are available
    }
    const std::string& instrument_name = instruments[0];
    std::cout << "Instrument: " << instrument_name << std::endl;
    std::cout<<std::endl;
    // Place 5 market buy orders
    for (int i = 0; i < 5; ++i) {
        cpr::Response response = order_manager.place_order(instrument_name, 1, "market", "buy", 0.0, 0.0);
        print_response("Market Buy Order " + std::to_string(i + 1), response);
        std::cout<<std::endl;
    }

    std::cout<<std::endl;

    // Place 3 market sell orders
    for (int i = 0; i < 3; ++i) {
        cpr::Response response = order_manager.place_order(instrument_name, 1, "market", "sell", 0.0, 0.0);
        print_response("Market Sell Order " + std::to_string(i + 1), response);
        std::cout<<std::endl;
    }

    std::cout<<std::endl;

    // Place 2 limit buy orders
    for (int i = 0; i < 2; ++i) {
        cpr::Response response = order_manager.place_order(instrument_name, 1, "limit", "buy", 0.1 + i * 0.01, 0.0);
        print_response("Limit Buy Order " + std::to_string(i + 1), response);
        std::cout<<std::endl;
    }

    std::cout<<std::endl;

    // Place 2 limit sell orders
    for (int i = 0; i < 2; ++i) {
        cpr::Response response = order_manager.place_order(instrument_name, 1, "limit", "sell", 0.2 + i * 0.01, 0.0);
        print_response("Limit Sell Order " + std::to_string(i + 1), response);
        std::cout<<std::endl;
    }

    std::cout<<std::endl;

    // Print all open orders
    print_open_orders(order_manager, instrument_name);
    std::cout<<std::endl;
    std::cout<<std::endl;

    // Modify the first limit sell order (assuming we have some orders to modify)
    std::vector<std::string> order_ids = order_manager.get_order_ids(instrument_name);
    if (!order_ids.empty()) {
        cpr::Response modify_response = order_manager.modify_order(order_ids[0], 2, "limit", 0.25);
        print_response("Modify Order ID: " + order_ids[0], modify_response);
        std::cout<<std::endl;
    }

    std::cout<<std::endl;

    // Cancel the first market sell order and one limit sell order
    if (order_ids.size() >= 2) {
        cpr::Response cancel_response = order_manager.cancel_order(order_ids[1]);
        print_response("Cancel Order ID: " + order_ids[1], cancel_response);
        std::cout<<std::endl;
    }

    std::cout<<std::endl;
    // Ensure we have something left in our account (let's check open orders again)
    print_open_orders(order_manager, instrument_name);
    std::cout<<std::endl;
    // Get the BTC order book
    cpr::Response order_book_response = order_manager.get_order_book(instrument_name);
    print_response("BTC Order Book", order_book_response);
    std::cout<<std::endl;

    // Print current positions
    cpr::Response current_positions_response = order_manager.get_current_positions("BTC");
    print_response("Current Positions in BTC", current_positions_response);
    std::cout<<std::endl;



    return 0;
}
