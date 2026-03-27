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
---@param callback fun(particle: particle)
function registerSpawnParticle(callback) end

---Registers a function that will be executed when the spawn particle.
---@param callback fun(slot: number, item: item?)
function registerInventoryItemChange(callback) end

--- @class useblock
--- @field hand string
--- @field x number -- X position
--- @field y number -- Y position
--- @field z number -- Z position

---Registers a function that will be executed when the spawn particle.
---@param callback fun(info: useblock)
function registerUseBlock(callback) end

--- @class attackblock
--- @field hand string
--- @field x number -- X position
--- @field y number -- Y position
--- @field z number -- Z position
--- @field direction direction -- Direction

---Registers a function that will be executed when the spawn particle.
---@param callback fun(info: attackblock)
function registerAttackBlock(callback) end

---Registers a function that is called every game tick.
---@param callback fun() Callback function (no arguments)
function registerClientTick(callback) end

---Registers a function that is called after a game tick.
---@param callback fun() Callback function (no arguments)
function registerClientTickPost(callback) end

--- @class blockupdate
--- @field x number -- X position
--- @field y number -- Y position
--- @field z number -- Z position
--- @field old block? -- Old block information
--- @field new block? -- New block information

---Registers a function that is called after a game tick.
---@param callback fun(info: blockupdate)
function registerBlockUpdate(callback) end

---Registers a function that is needed for 3D rendering.
---@param callback fun(info: worldRenderer)
function registerWorldRenderer(callback) end

---Registers a function that is needed for 2D rendering.
---@param callback fun(info: twoRenderer)
function register2DRenderer(callback) end

---Registers a function that is triggered when the keyboard and mouse are pressed..
---@param callback fun(key: number, action: string)
function registerKeyEvent(callback) end

globals = {}
