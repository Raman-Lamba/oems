Hello this is C++ api sort of application, you can place, cancel and modify orders on deribit test with it's help.

It uses cpr, nlohmann_json, and libwebsockets, so not too fast but not too slow as well, works best for synchronous calls.

It has a websocketserver which can connect to multiple clients and show orderbook in a table format, orderbook updates every 1 second.

I have removed config.json file before uploading it to github, so you would have to add your own config.json file with your client id and client secret

Format for config.json
{
    "api_id": "client-id",
    "secret_key": "client-secret"
}

Just add it to main directory and it will run like a f1 car
