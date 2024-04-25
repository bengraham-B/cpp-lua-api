local http = require("socket.http")
local json = require("JSON")
print("starting POST")

local data = {
    name = "Goose McQuack",
    age = 21,
    language = 'JS'
}

local request_body = json.encode(data)

local options = {
    url = "http://localhost:8001/data",
    method = "POST",
    headers = {
        ["Content-Type"] = "application/json",
        ["Content-Length"] = tostring(#request_body)
    },

    source = ltn12.source.string(request_body)
}

local response_body = {}
local _, status_code, _ = http.request{
    url = options.url,
    method = options.method,
    headers = options.headers,
    source = options.source,sink = ltn12.sink.table(response_body)
}

if status_code == 200 then 
    print("Request Successful")
print(table.concat(response_body))
else 
 print("Failed:", status_code)
end

print("Ending POST")
