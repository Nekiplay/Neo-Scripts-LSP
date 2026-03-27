---@meta

---Registers a function that will be executed when the script is unloaded. (Unload)
---@param callback fun() Callback function (no arguments)
function registerUnloadCallback(callback) end

--- @class particle
--- @field id number
--- @field x number -- X position
--- @field y number -- Y position
--- @field z number -- Z position

---Registers a function that will be executed when the spawn particle.
---@param callback fun(particle: particle) Callback function (no arguments)
function registerSpawnParticle(callback) end

---Registers a function that will be executed when the spawn particle.
---@param callback fun(slot: number, item: item?) Callback function (no arguments)
function registerInventoryItemChange(callback) end

--- @class useblock
--- @field hand string
--- @field x number -- X position
--- @field y number -- Y position
--- @field z number -- Z position

---Registers a function that will be executed when the spawn particle.
---@param callback fun(info: useblock) Callback function (no arguments)
function registerUseBlock(callback) end

--- @class attackblock
--- @field hand string
--- @field x number -- X position
--- @field y number -- Y position
--- @field z number -- Z position
--- @field direction direction -- Direction

---Registers a function that will be executed when the spawn particle.
---@param callback fun(info: attackblock) Callback function (no arguments)
function registerAttackBlock(callback) end

globals = {}
