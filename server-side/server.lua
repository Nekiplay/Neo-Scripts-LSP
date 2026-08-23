---@meta

---Server module. Provides access to the Minecraft server, its levels and online players.
---Usage: local server = require("server")
---@class server
local server = {}

---Returns the world (level) by dimension identifier.
--- @param name? string Dimension identifier like "minecraft:overworld" (default "minecraft:overworld")
--- @return serverworld?
function server.getLevel(name) end

---Returns a list of all online players.
--- @return entity[]
function server.getOnlinePlayers() end

return server
