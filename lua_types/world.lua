---@meta

---@class world
world = {}

--- Gets yaw and pitch to look exactly at the specified coordinates
--- @param x number
--- @param y number
--- @param z number
--- @return rotation
function world.getRotation(x, y, z) end

--- Gets information about block at posistion
--- @param x number
--- @param y number
--- @param z number
--- @return block
function world.getBlock(x, y, z) end

--- Gets information about block at posistion
--- @param x number
--- @param y number
--- @param z number
--- @return block
function world.getBlockState(x, y, z) end

--- Returns a list of all entities within the rendering radius
--- @return entity[] entities List of entities (array of Entity objects)
function world.getEntities() end

--- Returns a list of all entities within the rendering radius
--- @return entity[] entities List of living entities (array of Entity objects)
function world.getLivingEntities() end

--- Returns a list of all entities within the rendering radius
--- @return entity[] entities List of armor stand entities (array of Entity objects)
function world.getArmorStandEntities() end

return world
