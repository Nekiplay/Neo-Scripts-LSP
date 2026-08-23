---@meta
---
--- @class creator
local creator = {}

---Creates a box (AABB) from two corners.
--- @param minX number
--- @param minY number
--- @param minZ number
--- @param maxX number
--- @param maxY number
--- @param maxZ number
--- @return box
function creator.createBox(minX, minY, minZ, maxX, maxY, maxZ) end

---Creates a box (AABB) from two corners.
--- @param minX number
--- @param minY number
--- @param minZ number
--- @param maxX number
--- @param maxY number
--- @param maxZ number
--- @return box
function creator.createAABB(minX, minY, minZ, maxX, maxY, maxZ) end

---Creates a 3D vector.
--- @param x number
--- @param y number
--- @param z number
--- @return vector3d
function creator.createVector3(x, y, z) end

---Creates a 3D vector.
--- @param x number
--- @param y number
--- @param z number
--- @return vector3d
function creator.createVector3d(x, y, z) end

---Creates a block position.
--- @param x integer
--- @param y integer
--- @param z integer
--- @return blockpos
function creator.createBlockPos(x, y, z) end

---Creates a mutable block position.
--- @param x integer
--- @param y integer
--- @param z integer
--- @return mutableblockpos
--- @overload fun(): mutableblockpos
function creator.createMutableBlockPos(x, y, z) end

---Creates a direction from its name, e.g. "north", "west", "up".
--- @param direction string Direction name (DOWN, UP, NORTH, SOUTH, WEST, EAST), case insensitive
--- @return direction?
function creator.createDirection(direction) end

---Creates a block state by its numeric state id.
--- @param id integer Block state id
--- @return block?
function creator.createBlockState(id) end

---Entity type object created by creator.createEntity. Can be passed to world.spawnEntity / serverworld.spawnEntity.
--- @class entitytype

---Creates an entity type from an identifier, e.g. "minecraft:sheep". Returns nil if the type is unknown.
---The result can be passed to world.spawnEntity / serverworld.spawnEntity instead of a string.
--- @param identifier string Entity identifier like "minecraft:pig"
--- @return entitytype?
function creator.createEntity(identifier) end

---Creates an entity type from an identifier, e.g. "minecraft:sheep". Returns nil if the type is unknown.
--- @param identifier string Entity identifier like "minecraft:pig"
--- @return entitytype?
function creator.createEntityType(identifier) end

return creator
