---@meta
---
--- @class creator
local creator = {}

--- @param minX number
--- @param minY number
--- @param minZ number
--- @param maxX number
--- @param maxY number
--- @param maxZ number
--- @return box
function creator.createBox(minX, minY, minZ, maxX, maxY, maxZ) end

--- @param minX number
--- @param minY number
--- @param minZ number
--- @param maxX number
--- @param maxY number
--- @param maxZ number
--- @return box
function creator.createAABB(minX, minY, minZ, maxX, maxY, maxZ) end

--- @param x number
--- @param y number
--- @param z number
--- @return vector3d
function creator.createVector3(x, y, z) end

--- @param x integer
--- @param y integer
--- @param z integer
--- @return blockpos
function creator.createBlockPos(x, y, z) end

--- @param direction string north or west or other
--- @return direction
function creator.createDirection(direction) end

--- @param id string example HYPERION
--- @return item
function creator.createItemStackFromHypixelSkyblockId(id) end

--- @param id integer example 1
--- @return item
function creator.createItemStackId(id) end

--- @param identifier string example minecraft:stone
--- @return item
function creator.createItemStackIdentifier(identifier) end

return creator
