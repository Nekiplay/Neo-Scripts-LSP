---@meta

--- @class blockpos
--- @field x integer
--- @field y integer
--- @field z integer
local blockpos = {}
--- @return vector3d
function blockpos.bottomCenter() end

--- @return vector3d
function blockpos.center() end

--- @return blockpos
function blockpos.above() end

--- @return blockpos
function blockpos.below() end

--- @return blockpos
function blockpos.east() end

--- @return blockpos
function blockpos.north() end

--- @return blockpos
function blockpos.west() end

--- @return blockpos
function blockpos.south() end

--- @param x integer
--- @param y integer
--- @param z integer
--- @return blockpos
function blockpos.distSqr(x, y, z) end

--- @param x number
--- @param y number
--- @param z number
--- @return blockpos
function blockpos.distToCenterSqr(x, y, z) end
