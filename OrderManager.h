#ifndef ORDER_MANAGER_H
#define ORDER_MANAGER_H

#include <iostream>
#include <vector>
#include <cpr/cpr.h>
#include <nlohmann/json.hpp>

using json = nlohmann::json;

class OrderManager
{
public:
    OrderManager(const std::string &client_id, const std::string &client_secret);
    bool authenticate();
    bool refresh_access_token();
    cpr::Response place_order(const std::string &instrument_name, int amount,
                              const std::string &order_type, const std::string &side,
                              double price = 0, double stop_price = 0);
    cpr::Response cancel_order(const std::string &order_id);
    cpr::Response modify_order(const std::string &order_id, int new_amount,
                               const std::string &new_type, double new_price = 0);
    cpr::Response get_order_book(const std::string &instrument_name);
    cpr::Response get_current_positions(const std::string &currency);
    cpr::Response get_open_orders(const std::string &instrument_name);
    std::vector<std::string> get_order_ids(const std::string &instrument_name);
    std::vector<std::string> get_instruments(const std::string &currency_symbol);
    bool parse_json_response(const std::string &response_text, json &j_res);

private:
    std::string access_token;
    std::string refresh_token;
    std::string client_id;
    std::string client_secret;
};

#endif // ORDER_MANAGER_H
