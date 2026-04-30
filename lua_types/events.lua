---@meta

---@type string
currentScriptName = nil

---Registers a function that will be executed when the script is unloaded.
--- @param callback fun() Callback function (no arguments)
--- @return boolean
function registerUnloadCallback(callback) end

--- @class particle
--- @field id number
--- @field position vector3d

---Registers a function that will be executed when a particle spawns.
--- @param callback fun(particle: particle)
--- @return boolean
function registerSpawnParticle(callback) end

---Registers a function that will be executed when an inventory item changes.
--- @param callback fun(slot: number, item: item?)
--- @return boolean
function registerInventoryItemChange(callback) end

--- @class useblock
--- @field hand string
--- @field blockpos blockpos

---Registers a function that will be executed when a block is used.
--- @param callback fun(info: useblock)
--- @return boolean
function registerUseBlock(callback) end

--- @class attackblock
--- @field hand string
--- @field blockpos blockpos
--- @field direction direction

---Registers a function that will be executed when a block is attacked.
--- @param callback fun(info: attackblock)
--- @return boolean
function registerAttackBlock(callback) end

---Registers a function that is called every game tick.
--- @param callback fun() Callback function (no arguments)
--- @return boolean
function registerClientTick(callback) end

---Registers a function that is called after a game tick.
--- @param callback fun() Callback function (no arguments)
--- @return boolean
function registerClientTickPost(callback) end

---Registers a function that is called before a game tick.
--- @param callback fun() Callback function (no arguments)
--- @return boolean
function registerClientTickPre(callback) end

--- @class blockupdate
--- @field position blockpos
--- @field old block?
--- @field new block?

---Registers a function that is called when a block is updated.
--- @param callback fun(info: blockupdate)
--- @return boolean
function registerBlockUpdate(callback) end

---Registers a function that is needed for 3D rendering.
--- @param callback fun(ctx: worldRenderer)
--- @return boolean
function registerWorldRenderer(callback) end

---Registers a function that is needed for 2D rendering.
---@param callback fun(ctx: twoRenderer)
function register2DRenderer(callback) end

---Registers a function that is triggered when the keyboard and mouse are pressed.
--- @param callback fun(key: number, action: string)
--- @return boolean
function registerKeyEvent(callback) end

---Registers a function that is triggered when a chat message is received.
--- @param callback fun(text: string, overlay: boolean, json: string)
--- @return boolean
function registerMessageEvent(callback) end

---Registers a function that is triggered when a message is sent.
--- @param callback fun(message: string)
--- @return boolean
function registerSendMessageEvent(callback) end

---Registers a function that is triggered when a command is sent.
--- @param callback fun(command: string)
--- @return boolean
function registerSendCommandEvent(callback) end

---Registers a function that is triggered when the player changes location.
--- @param callback fun(locatio: string)
--- @return boolean
function registerLocationChangeEvent(callback) end

---Registers a function that is triggered when ImGui is being rendered.
--- @param callback fun()
--- @return boolean
function registerImGuiRenderEvent(callback) end

---Registers a function that is triggered when ImGui is created context.
--- @param callback fun()
--- @return boolean
function registerImGuiInitEvent(callback) end

---Registers a function that is triggered when server-side rotation is detected.
--- @param callback fun(yaw: number?, pitch: number?)
--- @return boolean
function registerServerSideRotationEvent(callback) end

---Registers a function that is triggered when a server-side teleport is detected.
--- @param callback fun(x: number?, y: number?, z: number?)
--- @return boolean
function registerServerSideTeleportEvent(callback) end

---Registers a function that is triggered when a server send new time.
--- @param callback fun(dayTime: number, gameTime: number, tickDayTime: boolean)
--- @return boolean
function registerServerSetTimeEvent(callback) end

--- @class soundevent
--- @field name string
--- @field position vector3d
--- @field pitch number
--- @field volume number


---Registers a function that is triggered when a server send new sound.
--- @param callback fun(info: soundevent)
--- @return boolean
function registerSoundPlay(callback) end

--- @class slotclickevent
--- @field slot integer
--- @field button integer
--- @field clickType integer


---Registers a function that is triggered when a server send new sound.
--- @param callback fun(info: slotclickevent)
--- @return boolean
function registerSlotClick(callback) end

---Registers a function that is triggered when a server send new title.
--- @param callback fun(text: string, isSubtitle: boolean)
--- @return boolean
function registerTitleEvent(callback) end

---Registers a function that is triggered when a server send action bar.
--- @param callback fun(text: string)
--- @return boolean
function registerActionBarEvent(callback) end

-- ============================================
-- UNREGISTER FUNCTIONS
-- ============================================

--- @param callback function
--- @return boolean
function unregisterSpawnParticle(callback) end

--- @param callback function
--- @return boolean
function unregisterInventoryItemChange(callback) end

--- @param callback function
--- @return boolean
function unregisterUseBlock(callback) end

--- @param callback function
--- @return boolean
function unregisterAttackBlock(callback) end

--- @param callback function
--- @return boolean
function unregisterClientTick(callback) end

--- @param callback function
--- @return boolean
function unregisterClientTickPost(callback) end

--- @param callback function
--- @return boolean
function unregisterClientTickPre(callback) end

--- @param callback function
--- @return boolean
function unregisterBlockUpdate(callback) end

--- @param callback function
--- @return boolean
function unregisterWorldRenderer(callback) end

--- @param callback function
--- @return boolean
function unregister2DRenderer(callback) end

--- @param callback function
--- @return boolean
function unregisterKeyEvent(callback) end

--- @param callback function
--- @return boolean
function unregisterMessageEvent(callback) end

--- @param callback function
--- @return boolean
function unregisterSendMessageEvent(callback) end

--- @param callback function
--- @return boolean
function unregisterSendCommandEvent(callback) end

--- @param callback function
--- @return boolean
function unregisterLocationChangeEvent(callback) end

--- @param callback function
--- @return boolean
function unregisterImGuiRenderEvent(callback) end

--- @param callback function
--- @return boolean
function unregisterServerSideRotationEvent(callback) end

--- @param callback function
--- @return boolean
function unregisterServerSideTeleportEvent(callback) end

--- @param callback function
--- @return boolean
function unregisterServerSetTimeEvent(callback) end

--- @param callback function
--- @return boolean
function unregisterSlotClick(callback) end

--- @param callback function
--- @return boolean
function unregisterActionBarEvent(callback) end

--- @param callback function
--- @return boolean
function unregisterTitleEvent(callback) end

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
