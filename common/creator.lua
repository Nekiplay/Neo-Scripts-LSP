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

---Creates a transform for display entities (text_display, item_display, block_display).
---All parameters are optional - without arguments an identity transform is created.
---Assign the result to entity.transformation to apply.
--- @param tx number? Translation X offset
--- @param ty number? Translation Y offset
--- @param tz number? Translation Z offset
--- @param sx number? Scale X
--- @param sy number? Scale Y
--- @param sz number? Scale Z
--- @param rx number? Rotation X in degrees
--- @param ry number? Rotation Y in degrees
--- @param rz number? Rotation Z in degrees
--- @return transform
--- @overload fun(): transform
function creator.createTransform(tx, ty, tz, sx, sy, sz, rx, ry, rz) end

---Alias for createTransform
--- @param tx number? Translation X offset
--- @param ty number? Translation Y offset
--- @param tz number? Translation Z offset
--- @param sx number? Scale X
--- @param sy number? Scale Y
--- @param sz number? Scale Z
--- @param rx number? Rotation X in degrees
--- @param ry number? Rotation Y in degrees
--- @param rz number? Rotation Z in degrees
--- @return transform
--- @overload fun(): transform
function creator.createTransformation(tx, ty, tz, sx, sy, sz, rx, ry, rz) end

return creator
