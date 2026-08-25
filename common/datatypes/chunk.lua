--- @meta

---Chunk position object.
--- @class chunkpos
--- @field x integer Chunk x coordinate
--- @field z integer Chunk z coordinate
--- @field worldPosition blockpos World position of the chunk's minimum corner
--- @field min table Minimum block coordinates {x, z}
--- @field max table Maximum block coordinates {x, z}
local chunkpos = {}

---Checks if this chunk contains the given position.
--- @param pos blockpos Position to check
--- @return boolean contains
--- @overload fun(x: integer, y: integer, z: integer): boolean
function chunkpos.contains(pos) end

---Level chunk object. Passed to registerChunkLoadEvent and registerChunkUnLoadEvent.
--- @class levelchunk
--- @field pos chunkpos Chunk position
--- @field height integer Chunk height
--- @field minY integer Minimum world y of this chunk
--- @field maxY integer Maximum world y of this chunk
--- @field maxSectionY integer Maximum section y index
local levelchunk = {}

return levelchunk
