---@meta

---@class world
world = {}

--- Gets yaw and pitch to look exactly at the specified coordinates
--- @param x number | blockpos The X coordinate or a blockpos object.
--- @param y? number The Y coordinate (optional if blockpos is provided).
--- @param z? number The Z coordinate (optional if blockpos is provided).
--- @overload fun(pos: blockpos): rotation
--- @return rotation
function world.getRotation(x, y, z) end

--- Returns the block type at the specified position.
--- @param x number The X coordinate or a blockpos object.
--- @param y? number The Y coordinate (optional if blockpos is provided).
--- @param z? number The Z coordinate (optional if blockpos is provided).
--- @return block
--- @overload fun(pos: blockpos): block
function world.getBlock(x, y, z) end

--- Returns the full state of the block at the specified position (including properties like rotation, waterlogged, etc.).
--- @param x number The X coordinate or a blockpos object.
--- @param y? number The Y coordinate (optional if blockpos is provided).
--- @param z? number The Z coordinate (optional if blockpos is provided).
--- @return block
--- @overload fun(pos: blockpos): block
function world.getBlockState(x, y, z) end

--- Checks whether the chunk has been loaded based on its coordinatesc.).
--- @param x number | blockpos The X coordinate or a blockpos object.
--- @param y? number The Y coordinate (optional if blockpos is provided).
--- @param z? number The Z coordinate (optional if blockpos is provided).
--- @return boolean
--- @overload fun(pos: blockpos): boolean
function world.isBlockLoaded(x, y, z) end

--- Retrieves an entity by its ID
--- @param id number
--- @return entity?
function world.getEntityById(id) end

--- Returns a list of all entities within the rendering radius
--- @return entity[] entities List of entities (array of Entity objects)
function world.getEntities() end

--- Returns a list of all entities within the rendering radius
--- @return entity[] entities List of living entities (array of Entity objects)
function world.getLivingEntities() end

--- Returns a list of all entities within the rendering radius
--- @return entity[] entities List of armor stand entities (array of Entity objects)
function world.getArmorStandEntities() end

--- Returns a list of all entities within the specified box
--- @param box box
--- @return entity[] entities List of armor stand entities (array of Entity objects)
function world.getEntitiesInBox(box) end

--- Returns a list of all armor stand entities within the specified box
--- @param box box
--- @return entity[] entities List of armor stand entities (array of Entity objects)
function world.getArmorStandEntitiesInBox(box) end

--- Receives a block collision
--- @param x number | blockpos The X coordinate or a blockpos object.
--- @param y? number The Y coordinate (optional if blockpos is provided).
--- @param z? number The Z coordinate (optional if blockpos is provided).
--- @return box[]
--- @overload fun(pos: blockpos, block: block): box[]
function world.getCollisionBoxes(x, y, z, block) end

--- Gets the block outline
--- @param x number | blockpos The X coordinate or a blockpos object.
--- @param y? number The Y coordinate (optional if blockpos is provided).
--- @param z? number The Z coordinate (optional if blockpos is provided).
--- @return box[]
--- @overload fun(pos: blockpos, block: block): box[]
function world.getOutlineBoxes(x, y, z, block) end

--- @class raycastConfiguration
--- @field startX number
--- @field startY number
--- @field startZ number
--- @field endX number
--- @field endY number
--- @field endZ number
--- @field include_fluid boolean? optional (default false)
--- @field include_entity boolean? optional (default false)

--- Gets the block outline
--- @param configuration raycastConfiguration
--- @return raycastResult
function world.raycast(configuration) end

--- @class raycastConfigurationBlocks
--- @field startX number
--- @field startY number
--- @field startZ number
--- @field endX number
--- @field endY number
--- @field endZ number
--- @field blocks number[] optional (default none)

--- Gets the block outline
--- @param configuration raycastConfigurationBlocks
--- @return raycastResult
function world.raycastToBlocks(configuration) end

return world
