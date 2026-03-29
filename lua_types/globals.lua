---@meta

---@type string
currentScriptName = nil

---Registers a function that will be executed when the script is unloaded.
---@param callback fun() Callback function (no arguments)
function registerUnloadCallback(callback) end

--- @class particle
--- @field id number
--- @field x number
--- @field y number
--- @field z number

---Registers a function that will be executed when a particle spawns.
---@param callback fun(particle: particle)
function registerSpawnParticle(callback) end

---Registers a function that will be executed when an inventory item changes.
---@param callback fun(slot: number, item: item?)
function registerInventoryItemChange(callback) end

--- @class useblock
--- @field hand string
--- @field x number
--- @field y number
--- @field z number

---Registers a function that will be executed when a block is used.
---@param callback fun(info: useblock)
function registerUseBlock(callback) end

--- @class attackblock
--- @field hand string
--- @field x number
--- @field y number
--- @field z number
--- @field direction direction

---Registers a function that will be executed when a block is attacked.
---@param callback fun(info: attackblock)
function registerAttackBlock(callback) end

---Registers a function that is called every game tick.
---@param callback fun() Callback function (no arguments)
function registerClientTick(callback) end

---Registers a function that is called after a game tick.
---@param callback fun() Callback function (no arguments)
function registerClientTickPost(callback) end

---Registers a function that is called before a game tick.
---@param callback fun() Callback function (no arguments)
function registerClientTickPre(callback) end

--- @class blockupdate
--- @field postion blockpos
--- @field old block?
--- @field new block?

---Registers a function that is called when a block is updated.
---@param callback fun(info: blockupdate)
function registerBlockUpdate(callback) end

---Registers a function that is needed for 3D rendering.
---@param callback fun(ctx: worldRenderer)
function registerWorldRenderer(callback) end

---Registers a function that is needed for 2D rendering.
---@param callback fun(ctx: twoRenderer)
function register2DRenderer(callback) end

---Registers a function that is triggered when the keyboard and mouse are pressed.
---@param callback fun(key: number, action: string)
function registerKeyEvent(callback) end

--- @class messageevent
--- @field message string
--- @field sender string
--- @field encrypted boolean

---Registers a function that is triggered when a chat message is received.
---@param callback fun(info: messageevent)
function registerMessageEvent(callback) end

---Registers a function that is triggered when a message is sent.
---@param callback fun(message: string)
function registerSendMessageEvent(callback) end

---Registers a function that is triggered when a command is sent.
---@param callback fun(command: string)
function registerSendCommandEvent(callback) end

---Registers a function that is triggered when the player changes location.
---@param callback fun(locatio: string)
function registerLocationChangeEvent(callback) end

---Registers a function that is triggered when ImGui is being rendered.
---@param callback fun()
function registerImGuiRenderEvent(callback) end

--- @class rotationsEvent
--- @field yaw number
--- @field pitch number

---Registers a function that is triggered when server-side rotation is detected.
---@param callback fun(info: rotationsEvent)
function registerServerSideRotationEvent(callback) end

--- @class teleportEvent
--- @field x number
--- @field y number
--- @field z number

---Registers a function that is triggered when a server-side teleport is detected.
---@param callback fun(info: teleportEvent)
function registerServerSideTeleportEvent(callback) end

-- ============================================
-- UNREGISTER FUNCTIONS
-- ============================================

function unregisterSpawnParticle(callback) end

function unregisterInventoryItemChange(callback) end

function unregisterUseBlock(callback) end

function unregisterAttackBlock(callback) end

function unregisterClientTick(callback) end

function unregisterClientTickPost(callback) end

function unregisterClientTickPre(callback) end

function unregisterBlockUpdate(callback) end

function unregisterWorldRenderer(callback) end

function unregister2DRenderer(callback) end

function unregisterKeyEvent(callback) end

function unregisterMessageEvent(callback) end

function unregisterSendMessageEvent(callback) end

function unregisterSendCommandEvent(callback) end

function unregisterLocationChangeEvent(callback) end

function unregisterImGuiRenderEvent(callback) end

function unregisterServerSideRotationEvent(callback) end

function unregisterServerSideTeleportEvent(callback) end

-- ============================================
-- COMMANDS
-- ============================================

---Register a custom command.
---@param name string Command name
---@param callback fun(args: string) Callback function that receives command arguments as string
function registerCommand(name, callback) end

---Unregister a custom command.
---@param name string Command name
function unregisterCommand(name) end

globals = {}
