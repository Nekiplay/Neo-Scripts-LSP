---@meta

---@class http
http = {}

--- @param url string
--- @param timeout number?
--- @return number[] bytes
function http.get(url, timeout) end

--- @param url string
--- @param timeout number
--- @param callback fun(bytes: number[], error: string?)
--- @return number[] bytes
function http.get_async_callback(url, timeout, callback) end

--- @param url string
--- @param headers table
--- @param callback fun(bytes: number[], error: string?)
--- @return number[] bytes
function http.get_async_with_headers_callback(url, headers, callback) end

--- @param url string
--- @param headers table
--- @param body string
--- @return number[] bytes
function http.post(url, headers, body) end

--- @param url string
--- @param headers table
--- @param body string
--- @param callback fun(bytes: number[], error: string?)
--- @return number[] bytes
function http.post_async_with_headers_callback(url, headers, body, callback) end

return http
