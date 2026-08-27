---@meta

---@class packets
---@field [string] packet_channel channel proxy, e.g. packets["balance"] or packets.balance
local packets = {}

---@class packet_channel
---@field name string channel name
---@field channel string channel name
local packet_channel = {}

---Send packet from logical client to server (client-side).
---Data is serialized to JSON: numbers, strings, booleans, tables (nested) supported.
---Tables with sequential 1..n keys become JSON arrays, others become objects.
---Example: `packets.sendToServer("balance", 10)` or `packets.sendToServer("balance", {10})`
---@param channel string packet name, e.g. "balance"
---@param data any Lua value: number|string|boolean|table|nil
---@return boolean success true if sent
function packets.sendToServer(channel, data) end

---@alias packets_sendToServer fun(channel:string, data:any):boolean
---@diagnostic disable-next-line: duplicate-doc-alias
---Aliases: send_to_server, c2s
function packets.send_to_server(channel, data) end
function packets.c2s(channel, data) end

---Send packet from server to single client (server-side).
---@param player entity ServerPlayer who will receive packet
---@param channel string packet name
---@param data any Lua value
---@return boolean success
function packets.sendToClient(player, channel, data) end

---Broadcast packet from server to all players.
---@param channel string packet name
---@param data any Lua value
---@return boolean success true if at least one player received
function packets.sendToClient(channel, data) end

---@diagnostic disable-next-line: duplicate-doc-field
---@alias packets_sendToClient fun(player:entity, channel:string, data:any):boolean
function packets.send_to_client(player, channel, data) end
function packets.s2c(player, channel, data) end

---Broadcast to all players (alias for sendToClient without player).
---@param channel string
---@param data any
---@return boolean
function packets.broadcast(channel, data) end
function packets.sendToAll(channel, data) end
function packets.send_to_all(channel, data) end

---Generic send: tries client->server then server->client
---@param channel string
---@param data any
---@return boolean
function packets.send(channel, data) end

---Channel proxy: `packets["balance"]:sendToServer(data)` sugar for `packets.sendToServer("balance", data)`
---@param data any
---@return boolean
function packet_channel:sendToServer(data) end
function packet_channel:send_to_server(data) end
function packet_channel:send(data) end
function packet_channel:c2s(data) end

---Channel proxy server->client: `packets.balance:sendToClient(player, data)` or `packets.balance:sendToClient(data)` (broadcast)
---@param player entity|any ServerPlayer or data for broadcast
---@param data any? required if first arg is player
---@return boolean
function packet_channel:sendToClient(player, data) end
function packet_channel:send_to_client(player, data) end
function packet_channel:s2c(player, data) end

---@param data any
---@return boolean
function packet_channel:broadcast(data) end
function packet_channel:sendToAll(data) end

return packets
