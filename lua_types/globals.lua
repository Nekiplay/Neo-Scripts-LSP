---@meta

---@type string
currentScriptName = nil

---Registers a function that will be executed when the script is unloaded.
---@param callback fun() Callback function (no arguments)
function registerUnloadCallback(callback) end

--- @class particle
--- @field id number
--- @field position vector3d

---Registers a function that will be executed when a particle spawns.
---@param callback fun(particle: particle)
function registerSpawnParticle(callback) end

---Registers a function that will be executed when an inventory item changes.
---@param callback fun(slot: number, item: item?)
function registerInventoryItemChange(callback) end

--- @class useblock
--- @field hand string
--- @field blockpos blockpos

---Registers a function that will be executed when a block is used.
---@param callback fun(info: useblock)
function registerUseBlock(callback) end

--- @class attackblock
--- @field hand string
--- @field blockpos blockpos
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
--- @field position blockpos
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

---Registers a function that is triggered when a chat message is received.
---@param callback fun(text: string, overlay: boolean, json: string)
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

---Registers a function that is triggered when ImGui is created context.
---@param callback fun()
function registerImGuiInitEvent(callback) end

---Registers a function that is triggered when server-side rotation is detected.
---@param callback fun(yaw: number?, pitch: number?)
function registerServerSideRotationEvent(callback) end

---Registers a function that is triggered when a server-side teleport is detected.
---@param callback fun(x: number?, y: number?, z: number?)
function registerServerSideTeleportEvent(callback) end

---Registers a function that is triggered when a server send new time.
---@param callback fun(dayTime: number, gameTime: number, tickDayTime: boolean)
function registerServerSetTimeEvent(callback) end

--- @class soundevent
--- @field name string
--- @field position vector3d
--- @field pitch number
--- @field volume number


---Registers a function that is triggered when a server send new sound.
---@param callback fun(info: soundevent)
function registerSoundPlay(callback) end

-- ============================================
-- UNREGISTER FUNCTIONS
-- ============================================

--- @param callback function
function unregisterSpawnParticle(callback) end

--- @param callback function
function unregisterInventoryItemChange(callback) end

--- @param callback function
function unregisterUseBlock(callback) end

--- @param callback function
function unregisterAttackBlock(callback) end

--- @param callback function
function unregisterClientTick(callback) end

--- @param callback function
function unregisterClientTickPost(callback) end

--- @param callback function
function unregisterClientTickPre(callback) end

--- @param callback function
function unregisterBlockUpdate(callback) end

--- @param callback function
function unregisterWorldRenderer(callback) end

--- @param callback function
function unregister2DRenderer(callback) end

--- @param callback function
function unregisterKeyEvent(callback) end

--- @param callback function
function unregisterMessageEvent(callback) end

--- @param callback function
function unregisterSendMessageEvent(callback) end

--- @param callback function
function unregisterSendCommandEvent(callback) end

--- @param callback function
function unregisterLocationChangeEvent(callback) end

--- @param callback function
function unregisterImGuiRenderEvent(callback) end

--- @param callback function
function unregisterServerSideRotationEvent(callback) end

--- @param callback function
function unregisterServerSideTeleportEvent(callback) end

--- @param callback function
function unregisterServerSetTimeEvent(callback) end

--- @param ... any
function print(...) end

-- ============================================
-- COMMANDS
-- ============================================

--- @class completeon
--- @field input string
--- @field fullInput string
local completeon = {}

--- Register a custom command.
--- @param name string Command name
--- @param callback fun(commandname: string, args: string[]) Callback function that receives command arguments as string
--- @param completeions fun(info: completeon)?: table
function registerCommand(name, callback, completeions) end

globals = {}
