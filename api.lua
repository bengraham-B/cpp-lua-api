local http = require("socket.http")

local url = "http://localhost:8001/test"

local response, status_code, headers, status_line = http.request(url)

if status_code == 200 then
    print(response)
else
    print("Error" ..status_code)
end

