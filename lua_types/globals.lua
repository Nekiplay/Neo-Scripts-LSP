---@meta

--- @class particle
--- @field id number
--- @field x number -- X position
--- @field y number -- Y position
--- @field z number -- Z position
---
--- @field x_dist number -- X distance
--- @field y_dist number -- Y distance
--- @field z_dist number -- Z distance
---
--- @field max_speed number -- Maximum speed
--- @field count number -- Count

---Registers a function that will be executed when the script is unloaded. (Unload)
---@param callback fun() Callback function (no arguments)
function registerUnloadCallback(callback) end

---Registers a function that will be executed when the spawn particle.
---@param callback fun(particle: particle) Callback function (no arguments)
function registerSpawnParticle(callback) end

globals = {}
