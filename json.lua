local json = require("JSON")

local data = {key1 = "Test", key2 = "Silly7"}
local encoded_date = json.encode(data)

print(encoded_date)
