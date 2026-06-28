local http = require("http")
local server = http.create_server("localhost", 8080, function(req)
    if req.method == "GET" and req.path == "/" then
        return {
            status = 200,
            headers = {
                ["Content-Type"] = "text/plain",
            },
            body = "",
        }
    end
end)
