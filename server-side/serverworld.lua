---@meta

---@class serverworld
local serverworld = {}

---Returns the block type at the specified position.
--- @param x number The X coordinate
--- @param y number The Y coordinate
--- @param z number The Z coordinate
--- @return block?
--- @overload fun(pos: blockpos): block?
--- @overload fun(pos: mutableblockpos): block?
function serverworld.getBlock(x, y, z) end

---Returns the full state of the block at the specified position (including properties like rotation, waterlogged, etc.).
--- @param x number The X coordinate
--- @param y number The Y coordinate
--- @param z number The Z coordinate
--- @return block?
--- @overload fun(pos: blockpos): block?
--- @overload fun(pos: mutableblockpos): block?
function serverworld.getBlockState(x, y, z) end

---Returns the block entity at the specified position.
--- @param x number The X coordinate
--- @param y number The Y coordinate
--- @param z number The Z coordinate
--- @return blockentity?
--- @overload fun(pos: blockpos): blockentity?
--- @overload fun(pos: mutableblockpos): blockentity?
function serverworld.getBlockEntity(x, y, z) end

---Sets the block at the specified position and updates neighbors.
--- @param x number The X coordinate
--- @param y number The Y coordinate
--- @param z number The Z coordinate
--- @param state block Block state to set
--- @return boolean
--- @overload fun(x: number, y: number, z: number, id: number): boolean
--- @overload fun(pos: blockpos, state: block): boolean
--- @overload fun(pos: blockpos, id: number): boolean
function serverworld.setBlock(x, y, z, state) end

---Returns the block light.
--- @param x number The X coordinate
--- @param y number The Y coordinate
--- @param z number The Z coordinate
--- @return integer?
--- @overload fun(pos: blockpos): integer?
--- @overload fun(pos: mutableblockpos): integer?
function serverworld.getLight(x, y, z) end

---Returns the block light.
--- @param x number The X coordinate
--- @param y number The Y coordinate
--- @param z number The Z coordinate
--- @return integer?
--- @overload fun(pos: blockpos): integer?
--- @overload fun(pos: mutableblockpos): integer?
function serverworld.getBrightness(x, y, z) end

---Returns the block sky light.
--- @param x number The X coordinate
--- @param y number The Y coordinate
--- @param z number The Z coordinate
--- @return integer?
--- @overload fun(pos: blockpos): integer?
--- @overload fun(pos: mutableblockpos): integer?
function serverworld.getLightSky(x, y, z) end

---Returns the block sky light.
--- @param x number The X coordinate
--- @param y number The Y coordinate
--- @param z number The Z coordinate
--- @return integer?
--- @overload fun(pos: blockpos): integer?
--- @overload fun(pos: mutableblockpos): integer?
function serverworld.getBrightnessSky(x, y, z) end

---Returns the dimension identifier of this world, e.g. "minecraft:overworld".
--- @return string?
function serverworld.getDimension() end

---Checks whether the chunk at the specified position has been loaded.
--- @param x number The X coordinate
--- @param y number The Y coordinate
--- @param z number The Z coordinate
--- @return boolean
--- @overload fun(pos: blockpos): boolean
--- @overload fun(pos: mutableblockpos): boolean
function serverworld.isBlockLoaded(x, y, z) end

---Retrieves an entity by its ID.
--- @param id number
--- @return entity?
function serverworld.getEntityById(id) end

---Returns a list of all entities in the world.
--- @return entity[]
function serverworld.getEntities() end

---Returns a list of all living entities in the world.
--- @return entity[]
function serverworld.getLivingEntities() end

---Returns a list of all armor stand entities in the world.
--- @return entity[]
function serverworld.getArmorStandEntities() end

---Returns a list of all entities within the specified box.
--- @param box box
--- @return entity[]
function serverworld.getEntitiesInBox(box) end

---Returns a list of all armor stand entities within the specified box.
--- @param box box
--- @return entity[]
function serverworld.getArmorStandEntitiesInBox(box) end

---Spawns an entity of the specified type at the specified position.
--- @param type string | entitytype Entity identifier like "minecraft:pig" or creator.createEntity(...) result
--- @param pos vector3d Spawn position
--- @return entity?
--- @overload fun(type: string | entitytype, pos: vector3d, yaw: number, pitch: number): entity?
--- @overload fun(type: string | entitytype, x: number, y: number, z: number): entity?
--- @overload fun(type: string | entitytype, x: number, y: number, z: number, yaw: number, pitch: number): entity?
function serverworld.spawnEntity(type, pos, yaw, pitch) end

---Spawns an entity of the specified type at the specified position.
--- @param type string | entitytype Entity identifier like "minecraft:pig" or creator.createEntity(...) result
--- @param pos vector3d Spawn position
--- @return entity?
--- @overload fun(type: string | entitytype, pos: vector3d, yaw: number, pitch: number): entity?
--- @overload fun(type: string | entitytype, x: number, y: number, z: number): entity?
--- @overload fun(type: string | entitytype, x: number, y: number, z: number, yaw: number, pitch: number): entity?
function serverworld.spawn(type, pos, yaw, pitch) end

---Removes an entity from the world without drops or death animation.
--- @param entity entity|number Entity object or numeric entity ID
--- @return boolean success True if the entity was removed
function serverworld.removeEntity(entity) end

---Alias for removeEntity
--- @param entity entity|number Entity object or numeric entity ID
--- @return boolean success True if the entity was removed
function serverworld.despawnEntity(entity) end

---Alias for removeEntity
--- @param entity entity|number Entity object or numeric entity ID
--- @return boolean success True if the entity was removed
function serverworld.despawn(entity) end

---Receives the collision boxes of a block.
--- @param x number The X coordinate
--- @param y number The Y coordinate
--- @param z number The Z coordinate
--- @param block block
--- @return box[]?
--- @overload fun(pos: blockpos, block: block): box[]?
function serverworld.getCollisionBoxes(x, y, z, block) end

---Gets the outline boxes of a block shape.
--- @param x number The X coordinate
--- @param y number The Y coordinate
--- @param z number The Z coordinate
--- @param block block
--- @return box[]?
--- @overload fun(pos: blockpos, block: block): box[]?
function serverworld.getOutlineBoxes(x, y, z, block) end

---Returns all blocks in the specified area with their positions and states.
--- @param area box
--- @return blockresults[]
--- @overload fun(min: blockpos, max: blockpos): blockresults[]
function serverworld.getBlocksInBox(area) end

---Returns states for the specified list of positions. Each list entry is a table {x, y, z} or {x = ..., y = ..., z = ...}.
--- @param positions table
--- @return blockresults[]
function serverworld.getBlocksFromList(positions) end

---Casts a ray between two points. Can hit blocks, fluids and entities depending on configuration.
--- @param configuration raycastConfiguration
--- @return raycastResult?
function serverworld.raycast(configuration) end

---Casts a ray from a start point using yaw/pitch rotation.
--- @param configuration raycastFromRotationConfiguration
--- @return raycastResult?
function serverworld.raycastFromRotation(configuration) end

---Traces a ray to the specified blocks by numeric ids. Hits only redstone conductors if no blocks given.
--- @param configuration raycastConfigurationBlocksFromId
--- @return raycastResult?
function serverworld.raycastToBlocksFromId(configuration) end

---Traces a ray to the specified blocks by identifiers. Hits only redstone conductors if no blocks given.
--- @param configuration raycastConfigurationBlocksFromIdentifier
--- @return raycastResult?
function serverworld.raycastToBlocksFromIdentifier(configuration) end

---Plays a sound at the specified position for all nearby players. Volume is divided by 100 internally (100 = full volume).
--- @param pos vector3d Sound position
--- @param soundId string Sound identifier like "minecraft:entity.pig.ambient"
--- @param volume? number Volume (default 100)
--- @param pitch? number Pitch (default 1.0)
--- @return boolean
--- @overload fun(x: number, y: number, z: number, soundId: string, volume?: number, pitch?: number): boolean
function serverworld.playSound(pos, soundId, volume, pitch) end

--- @class blockresults
--- @field pos blockpos
--- @field state block

--- @class raycastConfiguration
--- @field startX number
--- @field startY number
--- @field startZ number
--- @field endX number
--- @field endY number
--- @field endZ number
--- @field include_fluid boolean? optional (default false)
--- @field include_entity boolean? optional (default false)

--- @class raycastFromRotationConfiguration
--- @field startX number
--- @field startY number
--- @field startZ number
--- @field yaw number Rotation yaw in degrees
--- @field pitch number Rotation pitch in degrees
--- @field range number Maximum ray distance
--- @field include_fluid boolean? optional (default false)
--- @field include_entity boolean? optional (default false)

--- @class raycastConfigurationBlocksFromId
--- @field startX number
--- @field startY number
--- @field startZ number
--- @field endX number
--- @field endY number
--- @field endZ number
--- @field blocks number[] optional (default none)

--- @class raycastConfigurationBlocksFromIdentifier
--- @field startX number
--- @field startY number
--- @field startZ number
--- @field endX number
--- @field endY number
--- @field endZ number
--- @field blocks string[] optional (default none)

return serverworld
