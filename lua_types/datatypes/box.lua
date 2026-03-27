--- @meta
---
--- @class box
--- @field minX number Minimum value along the x-axis
--- @field minY number Minimum value along the y-axis
--- @field minZ number Minimum value along the z-axis
--- @field maxX number Maximum value along the x-axis
--- @field maxY number Maximum value along the y-axis
--- @field maxZ number Maximum value along the z-axis
--- @field min vector3d Minimum values
--- @field max vector3d Maximum values
---
local box = {}


--- @return number
function box.getSize() end

--- @return number
function box.getXSize() end

--- @return number
function box.getYSize() end

--- @return number
function box.getZSize() end

--- @return vector3d
function box.getCenter() end

--- @param min number
--- @return box
function box.setMinX(min) end

--- @param min number
--- @return box
function box.setMinY(min) end

--- @param min number
--- @return box
function box.setMinZ(min) end

--- @param max number
--- @return box
function box.setMaxX(max) end

--- @param max number
--- @return box
function box.setMaxY(max) end

--- @param max number
--- @return box
function box.setMaxZ(max) end

--- @param x number
--- @param y number
--- @param z number
--- @return box
function box.expand(x, y, z) end

--- @param vector vector3d
--- @return box
function box.expand(vector) end

--- @param x number
--- @param y number
--- @param z number
--- @return box
function box.inflate(x, y, z) end

--- @param inflate vector3d
--- @return box
function box.inflate(inflate) end

--- @param x number
--- @param y number
--- @param z number
--- @return box
function box.deflate(x, y, z) end

--- @param inflate vector3d
--- @return box
function box.deflate(inflate) end

--- @param num number
--- @return box
function box.intersect(num) end

--- @param num number
--- @return box
function box.union(num) end

--- @param x number
--- @param y number
--- @param z number
--- @return box
function box.move(x, y, z) end

--- @param inflate vector3d
--- @return box
function box.move(inflate) end

--- @param x number
--- @param y number
--- @param z number
--- @return box
function box.offset(x, y, z) end

--- @param inflate vector3d
--- @return box
function box.offset(inflate) end
