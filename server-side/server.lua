---@meta

---Server module. Provides access to the Minecraft server, its levels and online players.
---Usage: local server = require("server")
---@class server
local server = {}

---Returns the world (level) by dimension identifier.
--- @param name? string Dimension identifier like "minecraft:overworld" (default "minecraft:overworld")
--- @return serverworld?
function server.getLevel(name) end

---Alias for getLevel
--- @param name? string Dimension identifier like "minecraft:overworld"
--- @return serverworld?
function server.getWorld(name) end

---Returns a list of all loaded worlds (dimensions).
--- @return serverworld[]
function server.getLevels() end

---Alias for getLevels
--- @return serverworld[]
function server.getWorlds() end

---Returns a list of all online players.
--- @return entity[]
function server.getOnlinePlayers() end

---Finds an online player by name (case-insensitive) or UUID.
--- @param name_or_uuid string Player name or UUID string
--- @return entity?
function server.getPlayer(name_or_uuid) end

---Broadcasts a message to all players (string or text component).
--- @param message string Message text or text component
--- @return boolean success
function server.broadcast(message) end

---Executes a command as the console with full permissions, output suppressed.
---Optional position sets the anchor point for relative coordinates (~).
--- @param command string Command string with or without leading "/"
--- @param x number? Position x for relative coordinates
--- @param y number? Position y
--- @param z number? Position z
--- @return boolean|entity|entity[] result TRUE if no entities spawned, spawned entity/entities otherwise, false on error
--- @return number? value Numeric command result or nil
--- @return string? error Error message or nil
function server.executeCommand(command, x, y, z) end

---Alias for executeCommand
--- @param command string Command string with or without leading "/"
--- @param x number? Position x for relative coordinates
--- @param y number? Position y
--- @param z number? Position z
--- @return boolean|entity|entity[] result
--- @return number? value
--- @return string? error
function server.runCommand(command, x, y, z) end

---Calls the function after the given amount of ticks (1 tick = 50 ms). The callback runs on the main server thread.
--- @param ticks integer Delay in ticks
--- @param fn fun() Callback function
--- @return boolean success
function server.schedule(ticks, fn) end

---Runs the function on the main server thread (useful from other threads).
--- @param fn fun() Callback function
--- @return boolean success
function server.runTask(fn) end

---Returns current server TPS (max 20).
--- @return number tps
function server.getTps() end

---Alias for getTps
--- @return number tps
function server.getTPS() end

---Returns average tick time in milliseconds.
--- @return number mspt
function server.getMspt() end

---Alias for getMspt
--- @return number mspt
function server.getMSPT() end

---Reads a gamerule value.
--- @param name string Gamerule name like "keepInventory"
--- @return boolean|number|string value Current value
function server.gameRule(name) end

---Sets a gamerule value.
--- @param name string Gamerule name like "keepInventory"
--- @param value boolean|number|string New value
--- @return string value String representation of the new value
--- @overload fun(name: string): boolean|number|string
function server.gameRule(name, value) end

---Aliases for gameRule
--- @param name string Gamerule name
--- @param value boolean|number|string? New value (omit to read)
--- @return boolean|number|string value
function server.gamerule(name, value) end

---Alias for gameRule
--- @param name string Gamerule name
--- @param value boolean|number|string? New value (omit to read)
--- @return boolean|number|string value
function server.getGameRule(name, value) end

---Alias for gameRule
--- @param name string Gamerule name
--- @param value boolean|number|string? New value (omit to read)
--- @return boolean|number|string value
function server.setGameRule(name, value) end

---Reads the world difficulty: "peaceful", "easy", "normal" or "hard".
--- @return string difficulty
function server.difficulty() end

---Sets the world difficulty by name or id (0-3).
--- @param value string|integer Difficulty ("peaceful", "easy", "normal", "hard" or 0-3)
--- @return string difficulty New difficulty name
--- @overload fun(): string
function server.difficulty(value) end

---Aliases for difficulty
--- @param value string|integer? Difficulty (omit to read)
--- @return string difficulty
function server.getDifficulty(value) end

---Alias for difficulty
--- @param value string|integer? Difficulty (omit to read)
--- @return string difficulty
function server.setDifficulty(value) end

---Saves all worlds and player data.
--- @return boolean success
function server.saveAll() end

---Stops the server (saves everything first).
function server.stop() end

return server
