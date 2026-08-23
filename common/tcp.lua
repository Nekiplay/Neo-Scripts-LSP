---@meta

---@class TCPAddress
---@field address string
---@field port number

--- @class tcp
local tcp = {}

--- Connect to server
--- @param host string -- ip
--- @param port number -- port
--- @return number connectionId
function tcp.connect(host, port) end

--- Disconnect to server
--- @param connectionId number -- Connection ID
--- @return number connectionId
function tcp.disconnect(connectionId) end

--- Send text
--- @param id number
--- @param text string
function tcp.send(id, text) end

--- Accepts an string
--- @param connectionId number Connection ID
--- @param timeout? number Timeout in ms (-1 for infinite)
--- @return string? message Received message
--- @return string? error Error if reading failed
function tcp.receive(connectionId, timeout) end

--- Send a byte array
--- @param connectionId number Connection ID
--- @param bytesTable number[] Table of numbers (bytes) from 0 to 255
--- @return boolean success Whether the sequence was sent successfully
--- @return string? error Error message if success is false
function tcp.sendBytes(connectionId, bytesTable) end

--- Accepts an array of bytes
--- @param connectionId number Connection ID
--- @param timeout? number Timeout in ms (-1 for infinite)
--- @param maxBytes? number Maximum number of bytes to read (default 1024)
--- @return number[]? bytes Table of received bytes, or nil on error
--- @return string? error Error if reading failed
function tcp.receiveBytes(connectionId, timeout, maxBytes) end

--- Checks the connection
--- @param connectionId number Connection ID
--- @return boolean
function tcp.isConnected(connectionId) end

--- Checks the connection
--- @param connectionId number Connection ID
--- @return boolean
function tcp.isConnected(connectionId) end

--- Get a local address
--- @param connectionId number Connection ID
--- @return TCPAddress? Local address
function tcp.getLocalAddress(connectionId) end

--- Get a local address
--- @param connectionId number Connection ID
--- @return TCPAddress? Local address
function tcp.getRemoteAddress(connectionId) end

--- Change the blocking mode
--- @param connectionId number Connection ID
--- @param blocking boolean Is it blocked?
--- @return boolean Status always true
function tcp.setBlocking(connectionId, blocking) end

--- Change the timeout
--- @param connectionId number Connection ID
--- @param timeout number Timeout in ms (-1 for infinite)
--- @return boolean Status always true
function tcp.setTimeout(connectionId, timeout) end

--- Become a listener
--- @param port number Port
--- @param host string? IP address
--- @param backlog number? Default 50
--- @return number? Server id
--- @return string? Status always true
function tcp.listen(port, host, backlog) end

--- Accept the connection
--- @param serverId number Server id
--- @param timeout number Timeout in ms (-1 for infinite)
--- @return number connectonId
function tcp.accept(serverId, timeout) end

return tcp
