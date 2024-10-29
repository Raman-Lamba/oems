#include "OrderManager.h"
#include <iostream>
#include <vector>

OrderManager::OrderManager(const std::string &client_id, const std::string &client_secret)
    : client_id(client_id), client_secret(client_secret) {}

bool OrderManager::authenticate()
{
    cpr::Response r = cpr::Get(cpr::Url{"https://test.deribit.com/api/v2/public/auth"},
                               cpr::Parameters{{"grant_type", "client_credentials"},
                                               {"client_id", client_id},
                                               {"client_secret", client_secret}});

    if (r.status_code == 200)
    {
        json j_res;
        if (parse_json_response(r.text, j_res))
        {
            access_token = j_res["result"]["access_token"];
            refresh_token = j_res["result"]["refresh_token"];
            std::cout << "Access Token: " << access_token << std::endl;
            std::cout << "Refresh Token: " << refresh_token << std::endl;
            return true;
        }
    }
    std::cerr << "Failed to authenticate, status code: " << r.status_code << std::endl;
    return false;
}

bool OrderManager::refresh_access_token()
{
    cpr::Response r = cpr::Get(cpr::Url{"https://test.deribit.com/api/v2/public/auth"},
                               cpr::Parameters{{"grant_type", "refresh_token"},
                                               {"refresh_token", refresh_token}});

    if (r.status_code == 200)
    {
        json j_res;
        if (parse_json_response(r.text, j_res))
        {
            access_token = j_res["result"]["access_token"];
            std::cout << "New Access Token: " << access_token << std::endl;
            return true;
        }
    }
    std::cerr << "Failed to refresh access token, status code: " << r.status_code << std::endl;
    return false;
}

cpr::Response OrderManager::place_order(const std::string &instrument_name, int amount,
                                        const std::string &order_type, const std::string &side,
                                        double price, double stop_price)
{
    cpr::Parameters params = {
        {"instrument_name", instrument_name},
        {"amount", std::to_string(amount)},
        {"type", order_type}};

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
        params.Add({"trail_value", std::to_string(stop_price)});
    }

    return cpr::Get(cpr::Url{"https://test.deribit.com/api/v2/private/" + side},
                    params,
                    cpr::Header{{"Authorization", "Bearer " + access_token}});
}

cpr::Response OrderManager::cancel_order(const std::string &order_id)
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
        if (refresh_access_token())
        {
            response = send_cancel_request();
        }
    }
    return response;
}

cpr::Response OrderManager::modify_order(const std::string &order_id, int new_amount,
                                         const std::string &new_type, double new_price)
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
        if (refresh_access_token())
        {
            response = send_modify_request();
        }
    }
    return response;
}

cpr::Response OrderManager::get_order_book(const std::string &instrument_name)
{
    return cpr::Get(cpr::Url{"https://test.deribit.com/api/v2/public/get_order_book"},
                    cpr::Parameters{{"instrument_name", instrument_name}});
}

cpr::Response OrderManager::get_current_positions(const std::string &currency)
{
    return cpr::Get(cpr::Url{"https://test.deribit.com/api/v2/private/get_positions"},
                    cpr::Parameters{{"currency", currency}},
                    cpr::Header{{"Authorization", "Bearer " + access_token}});
}

cpr::Response OrderManager::get_open_orders(const std::string &instrument_name)
{
    return cpr::Get(cpr::Url{"https://test.deribit.com/api/v2/private/get_open_orders_by_instrument"},
                    cpr::Parameters{{"instrument_name", instrument_name}},
                    cpr::Header{{"Authorization", "Bearer " + access_token}});
}

std::vector<std::string> OrderManager::get_order_ids(const std::string &instrument_name)
{
    std::vector<std::string> order_ids;
    auto response = get_open_orders(instrument_name);
    if (response.status_code == 200)
    {
        json j_res;
        if (parse_json_response(response.text, j_res))
        {
            for (const auto &order : j_res["result"])
            {
                order_ids.push_back(order["order_id"].get<std::string>());
            }
        }
    }
    else
    {
        std::cerr << "Failed to get open orders, status code: " << response.status_code << std::endl;
    }
    return order_ids;
}

std::vector<std::string> OrderManager::get_instruments(const std::string &currency_symbol)
{
    std::vector<std::string> instrument_names;
    cpr::Response response = cpr::Get(cpr::Url{"https://test.deribit.com/api/v2/public/get_instruments"},
                                      cpr::Parameters{{"currency", currency_symbol}});   // Optional parameter

    if (response.status_code == 200)
    {
        json j_res;
        if (parse_json_response(response.text, j_res))
        {
            for (const auto &instrument : j_res["result"])
            {
                instrument_names.push_back(instrument["instrument_name"]);
            }
        }
    }
    else
    {
        std::cerr << "Failed to get instruments, status code: " << response.status_code << std::endl;
    }
    return instrument_names;
}

bool OrderManager::parse_json_response(const std::string &response_text, json &j_res)
{
    try
    {
        j_res = json::parse(response_text);
        return true;
    }
    catch (const std::exception &e)
    {
        std::cerr << "Error parsing JSON: " << e.what() << std::endl;
        return false;
    }
}
