--- @meta

--- @class network
local network = {}

--- @return string[]
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
