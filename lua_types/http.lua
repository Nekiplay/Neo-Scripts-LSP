---@meta

---@class http
http = {}

--- Synchronous GET request
---@param url string
---@param timeout number?
---@return number[] bytes
function http.get(url, timeout) end

--- Synchronous GET request with custom headers
---@param url string
---@param headers table<string, string>
---@return number[] bytes
function http.get_with_headers(url, headers) end

--- Asynchronous GET request with custom headers and callback
---@param url string
---@param headers table<string, string>
---@param callback fun(bytes: number[]|nil, error: string|nil)
---@return boolean success
function http.get_async_with_headers_callback(url, headers, callback) end

--- Synchronous POST request with headers and body
---@param url string
---@param headers table<string, string>
---@param body string
---@return number[] bytes
function http.post(url, headers, body) end

--- Synchronous POST request with body only (Content-Type: application/json)
---@param url string
---@param body string
---@return number[] bytes
function http.post_with_headers(url, body) end

--- Asynchronous POST request with headers, body and callback
---@param url string
---@param headers table<string, string>
---@param body string
---@param callback fun(bytes: number[]|nil, error: string|nil)
---@return boolean success
function http.post_async_with_headers_callback(url, headers, body, callback) end

--- Synchronous GET request through proxy
---@param url string
---@param host string
---@param port number
---@param user string|nil
---@param pass string|nil
---@param timeout number|nil
---@return number[] bytes
function http.get_with_proxy(url, host, port, user, pass, timeout) end

--- Synchronous GET request with headers through proxy
---@param url string
---@param headers table<string, string>
---@param host string
---@param port number
---@param user string|nil
---@param pass string|nil
---@return number[] bytes
function http.get_with_headers_with_proxy(url, headers, host, port, user, pass) end

--- Asynchronous GET request with headers through proxy and callback
---@param url string
---@param headers table<string, string>
---@param host string
---@param port number
---@param user string|nil
---@param pass string|nil
---@param callback fun(bytes: number[]|nil, error: string|nil)
---@return boolean success
function http.get_async_with_headers_with_proxy_callback(url, headers, host, port, user, pass, callback) end

--- Synchronous POST request through proxy
---@param url string
---@param body string
---@param host string
---@param port number
---@param user string|nil
---@param pass string|nil
---@return number[] bytes
function http.post_with_proxy(url, body, host, port, user, pass) end

--- Synchronous POST request with headers through proxy
---@param url string
---@param body string
---@param headers table<string, string>
---@param host string
---@param port number
---@param user string|nil
---@param pass string|nil
---@return number[] bytes
function http.post_with_headers_with_proxy(url, body, headers, host, port, user, pass) end

--- Asynchronous POST request with headers through proxy and callback
---@param url string
---@param body string
---@param headers table<string, string>
---@param host string
---@param port number
---@param user string|nil
---@param pass string|nil
---@param callback fun(bytes: number[]|nil, error: string|nil)
---@return boolean success
function http.post_async_with_headers_with_proxy_callback(url, body, headers, host, port, user, pass, callback) end

return http