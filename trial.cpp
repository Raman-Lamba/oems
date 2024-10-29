#include <iostream>
#include <vector>
#include <cpr/cpr.h>
#include <nlohmann/json.hpp>

using json = nlohmann::json;

// Function to authenticate and get the access token and refresh token
bool authenticate(std::string &access_token, std::string &refresh_token)
{
    cpr::Response r = cpr::Get(cpr::Url{"https://test.deribit.com/api/v2/public/auth"},
                               cpr::Parameters{{"grant_type", "client_credentials"},
                                               {"client_id", "dRzcO-3a"},
                                               {"client_secret", "ajDsRJMbYmHhWL_0r5hWHCdiRomsz0QgGrBvFhQTfis"}});

    if (r.status_code == 200)
    {
        try
        {
            json j_res = json::parse(r.text);
            access_token = j_res["result"]["access_token"];
            refresh_token = j_res["result"]["refresh_token"];
            std::cout << "Access Token: " << access_token << std::endl;
            std::cout << "Refresh Token: " << refresh_token << std::endl;
            return true;
        }
        catch (const std::exception &e)
        {
            std::cerr << "Error parsing JSON during authentication" << std::endl;
        }
    }
    else
    {
        std::cerr << "Failed to get access token, status code: " << r.status_code << std::endl;
    }
    return false;
}

// Function to refresh the access token using the refresh token
bool refresh_access_token(std::string &access_token, const std::string &refresh_token)
{
    cpr::Response r = cpr::Get(cpr::Url{"https://test.deribit.com/api/v2/public/auth"},
                               cpr::Parameters{{"grant_type", "refresh_token"},
                                               {"refresh_token", refresh_token}});

    if (r.status_code == 200)
    {
        try
        {
            json j_res = json::parse(r.text);
            access_token = j_res["result"]["access_token"];
            std::cout << "New Access Token: " << access_token << std::endl;
            return true;
        }
        catch (const std::exception &e)
        {
            std::cerr << "Error parsing JSON during token refresh" << std::endl;
        }
    }
    else
    {
        std::cerr << "Failed to refresh access token, status code: " << r.status_code << std::endl;
    }
    return false;
}

// Function to place an order
cpr::Response place_order(const std::string &access_token, const std::string &instrument_name, int amount,
                          const std::string &order_type, const std::string &side, double price = 0, double stop_price = 0)
{
    // Base parameters for the order
    cpr::Parameters params = {{"instrument_name", instrument_name},
                              {"amount", std::to_string(amount)},
                              {"type", order_type}};

    // Conditional parameters based on order type
    if (order_type == "limit" || order_type == "stop_limit" || order_type == "take_limit")
    {
        params.Add({"price", std::to_string(price)});
    }
    if (order_type == "stop_limit" || order_type == "stop_market" || order_type == "take_limit" || order_type == "take_market")
    {
        params.Add({"stop_price", std::to_string(stop_price)});
    }
    if (order_type == "trailing_stop")
    {
        params.Add({"trail_value", std::to_string(stop_price)}); // Assuming 'stop_price' parameter is used for trail value
    }

    // Perform the order request
    return cpr::Get(cpr::Url{"https://test.deribit.com/api/v2/private/" + side},
                    params,
                    cpr::Header{{"Authorization", "Bearer " + access_token}});
}

// Function to cancel an order
cpr::Response cancel_order(std::string &access_token, const std::string &refresh_token, const std::string &order_id)
{
    auto send_cancel_request = [&]()
    {
        return cpr::Get(cpr::Url{"https://test.deribit.com/api/v2/private/cancel"},
                        cpr::Parameters{{"order_id", order_id}},
                        cpr::Header{{"Authorization", "Bearer " + access_token}});
    };

    cpr::Response response = send_cancel_request();
    if (response.status_code == 401) // Token expired
    {
        std::cout << "Access token expired, refreshing..." << std::endl;
        if (refresh_access_token(access_token, refresh_token))
        {
            response = send_cancel_request();
        }
    }
    return response;
}

// Function to modify an order with token expiration handling
cpr::Response modify_order(std::string &access_token, const std::string &refresh_token, const std::string &order_id, int new_amount, const std::string &new_type, double new_price = 0)
{
    auto send_modify_request = [&]()
    {
        return cpr::Get(cpr::Url{"https://test.deribit.com/api/v2/private/edit"},
                        cpr::Parameters{{"order_id", order_id},
                                        {"amount", std::to_string(new_amount)},
                                        {"type", new_type},
                                        {"price", std::to_string(new_price)}},
                        cpr::Header{{"Authorization", "Bearer " + access_token}});
    };

    cpr::Response response = send_modify_request();
    if (response.status_code == 401) // Token expired
    {
        std::cout << "Access token expired, refreshing..." << std::endl;
        if (refresh_access_token(access_token, refresh_token))
        {
            response = send_modify_request();
        }
    }
    return response;
}

// Function to get the order book
// Function to get the order book and print it
// Function to get the order book and print it
cpr::Response get_order_book(const std::string &access_token, const std::string &instrument_name)
{
    auto response = cpr::Get(cpr::Url{"https://test.deribit.com/api/v2/public/get_order_book"},
                             cpr::Parameters{{"instrument_name", instrument_name}});

    if (response.status_code == 200)
    {
        try
        {
            json j_res = json::parse(response.text);
            std::cout << "Order Book for " << instrument_name << ":\n";

            // Print the ask orders
            std::cout << "Asks:\n";
            for (const auto &ask : j_res["result"]["asks"])
            {
                std::cout << "Price: " << ask[0] << ", Amount: " << ask[1] << "\n";
            }

            // Print the bid orders
            std::cout << "Bids:\n";
            for (const auto &bid : j_res["result"]["bids"])
            {
                std::cout << "Price: " << bid[0] << ", Amount: " << bid[1] << "\n";
            }
        }
        catch (const std::exception &e)
        {
            std::cerr << "Error parsing JSON for order book: " << e.what() << std::endl;
        }
    }
    else
    {
        std::cerr << "Failed to get order book, status code: " << response.status_code << std::endl;
    }
    return response; // Return the response for further use
}

// Function to get current positions and print them
cpr::Response get_current_positions(const std::string &access_token, const std::string &currency)
{
    auto response = cpr::Get(cpr::Url{"https://test.deribit.com/api/v2/private/get_positions"},
                             cpr::Parameters{{"currency", currency}},
                             cpr::Header{{"Authorization", "Bearer " + access_token}});

    if (response.status_code == 200)
    {
        try
        {
            json j_res = json::parse(response.text);
            // std::cout << "Response JSON: " << j_res.dump(4) << std::endl; // Print the entire response

            std::cout << "Current Positions in " << currency << ":\n";

            if (j_res.contains("result") && !j_res["result"].is_null())
            {
                for (const auto &position : j_res["result"])
                {
                    std::string instrument_name = position.contains("instrument_name") ? position["instrument_name"].get<std::string>() : "N/A";
                    std::string amount = position.contains("size") ? std::to_string(position["size"].get<double>()) : "N/A";                                         // Accessing "size" for amount
                    std::string entry_price = position.contains("average_price") ? std::to_string(position["average_price"].get<double>()) : "N/A";                  // Accessing "average_price" for entry price
                    std::string unrealized_pnl = position.contains("floating_profit_loss") ? std::to_string(position["floating_profit_loss"].get<double>()) : "N/A"; // Accessing "floating_profit_loss" for unrealized PnL

                    std::cout << "Instrument: " << instrument_name
                              << ", Amount: " << amount
                              << ", Entry Price: " << entry_price
                              << ", Unrealized PnL: " << unrealized_pnl << "\n";
                }
            }
            else
            {
                std::cout << "No positions found." << std::endl;
            }
        }
        catch (const std::exception &e)
        {
            std::cerr << "Error parsing JSON for current positions: " << e.what() << std::endl;
        }
    }
    else
    {
        std::cerr << "Failed to get current positions, status code: " << response.status_code << std::endl;
        std::cerr << "Response body: " << response.text << std::endl; // Print response body for further debugging
    }
    return response; // Return the response for further use
}

// Function to get all open orders for a specific instrument
cpr::Response get_open_orders(const std::string &access_token, const std::string &instrument_name)
{
    return cpr::Get(cpr::Url{"https://test.deribit.com/api/v2/private/get_open_orders_by_instrument"},
                    cpr::Parameters{{"instrument_name", instrument_name}},
                    cpr::Header{{"Authorization", "Bearer " + access_token}});
}
std::vector<std::string> get_order_ids(const std::string &access_token, const std::string &instrument_name)
{
    std::vector<std::string> order_ids;

    auto response = get_open_orders(access_token, instrument_name);
    if (response.status_code == 200)
    {
        try
        {
            json j_res = json::parse(response.text);
            auto orders = j_res["result"];
            for (const auto &order : orders)
            {
                order_ids.push_back(order["order_id"].get<std::string>());
            }
        }
        catch (const std::exception &e)
        {
            std::cerr << "Error parsing JSON for open orders" << std::endl;
        }
    }
    else
    {
        std::cerr << "Failed to get open orders, status code: " << response.status_code << std::endl;
    }

    return order_ids;
}
int main(int, char **)
{
    std::string access_token, refresh_token;

    // Step 1: Authenticate and get the initial tokens
    if (!authenticate(access_token, refresh_token))
    {
        return 1;
    }

    // Step 2: Place multiple limit orders
    std::vector<std::string> order_ids;
    for (int i = 1; i <= 3; ++i) // Create 3 limit orders as an example
    {
        double price = 10000 + i * 10; // Example price increment for each order
        auto order_response = place_order(access_token, "BTC-PERPETUAL", 10, "limit", "buy", price);

        if (order_response.status_code == 200)
        {
            try
            {
                json j_res = json::parse(order_response.text);
                std::string order_id = j_res["result"]["order"]["order_id"];
                order_ids.push_back(order_id);
                std::cout << "Placed order with ID: " << order_id << " at price: " << price << std::endl;
            }
            catch (const std::exception &e)
            {
                std::cerr << "Error parsing JSON for order response: " << e.what() << std::endl;
            }
        }
        else
        {
            std::cerr << "Failed to place order, status code: " << order_response.status_code << std::endl;
        }
    }

    // Step 3: Retrieve and print all current open order IDs
    order_ids = get_order_ids(access_token, "BTC-PERPETUAL");
    std::cout << "Open Order IDs:" << std::endl;
    for (const auto &order_id : order_ids)
    {
        std::cout << order_id << std::endl;
    }

    // Step 4: Modify each order
    for (const auto &order_id : order_ids)
    {
        double new_price = 10500.0; // Example new price for modification
        auto modify_response = modify_order(access_token, refresh_token, order_id, 10, "limit", new_price);

        if (modify_response.status_code == 200)
        {
            std::cout << "Successfully modified order " << order_id << " to new price: " << new_price << std::endl;
        }
        else
        {
            std::cerr << "Failed to modify order " << order_id << ", status code: " << modify_response.status_code << std::endl;
        }
    }

    auto order_book_response = get_order_book(access_token, "BTC-PERPETUAL");
    auto positions_response = get_current_positions(access_token, "BTC");

    // Step 5: Cancel each order
    for (const auto &order_id : order_ids)
    {
        auto cancel_response = cancel_order(access_token, refresh_token, order_id);

        if (cancel_response.status_code == 200)
        {
            std::cout << "Successfully canceled order " << order_id << std::endl;
        }
        else
        {
            std::cerr << "Failed to cancel order " << order_id << ", status code: " << cancel_response.status_code << std::endl;
        }
    }
    return 0;
}
