--- @meta

--- @class network
local network = {}

--- @class playerNetwork
--- @field latency number
--- @field display_name string?
--- @field name string?
--- @field id number?
--- @field gamemode string?
--- @field skin_texture string?

--- @return playerNetwork[]
function network.getPlayersList() end

--- @param x number
--- @param y number
--- @param z number
--- @param direction direction
--- @return boolean
function network.sendStartDestroyBlockPacket(x, y, z, direction) end

--- @param x number
--- @param y number
--- @param z number
--- @param direction direction
--- @return boolean
function network.sendStopDestroyBlockPacket(x, y, z, direction) end

--- @param x number
--- @param y number
--- @param z number
--- @param direction direction
--- @return boolean
function network.sendAbortDestroyBlockPacket(x, y, z, direction) end

return network
