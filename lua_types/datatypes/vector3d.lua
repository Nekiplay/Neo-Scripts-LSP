---@meta

---@class vector3d
---@field x number
---@field y number
---@field z number
local vector3d = {}

--- @param x number
--- @param y number
--- @param z number
--- @return vector3d
--- @overload fun(pos: vector3d): vector3d
function vector3d.add(x, y, z) end

--- @param x number
--- @param y number
--- @param z number
--- @return vector3d
--- @overload fun(pos: vector3d): vector3d
function vector3d.sub(x, y, z) end

--- @param scalar number
--- @return vector3d
function vector3d.mul(scalar) end

--- @param scalar number
--- @return vector3d
function vector3d.div(scalar) end

--- @return vector3d
function vector3d.neg() end

--- @return number
function vector3d.length() end

--- @return number
function vector3d.lengthSquared() end

--- @return vector3d
function vector3d.normalize() end

--- @param x number
--- @param y number
--- @param z number
--- @return vector3d
--- @overload fun(pos: vector3d): vector3d
function vector3d.dot(x, y, z) end

--- @param x number
--- @param y number
--- @param z number
--- @return vector3d
--- @overload fun(pos: vector3d): vector3d
function vector3d.cross(x, y, z) end

--- @param x number
--- @param y number
--- @param z number
--- @return number
--- @overload fun(pos: vector3d): number
function vector3d.distanceTo(x, y, z) end

--- @param x number
--- @param y number
--- @param z number
--- @return number
--- @overload fun(pos: vector3d): number
function vector3d.distanceToSqr(x, y, z) end

--- @param x number
--- @param y number
--- @param z number
--- @return number
--- @overload fun(pos: vector3d): number
function vector3d.angleTo(x, y, z) end

--- @param x number
--- @param y number
--- @param z number
--- @param t number
--- @return vector3d
--- @overload fun(pos: vector3d, t: number): vector3d
function vector3d.lerp(x, y, z, t) end

--- @return vector3d
function vector3d.toRadians() end

--- @return vector3d
function vector3d.toDegrees() end

--- @param x number
--- @param y number
--- @param z number
--- @return number
--- @overload fun(pos: vector3d): number
function vector3d.horizontalDistanceTo(x, y, z) end
