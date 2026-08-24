---@meta

---@type string
currentScriptName = nil

--- @param ... any
function print(...) end

---Registers a function that will be executed when the script is unloaded.
--- @param callback fun() Callback function (no arguments)
--- @return boolean
function registerUnloadCallback(callback) end

--- @param callback function
--- @return boolean
function unregisterUnloadCallback(callback) end

-- ============================================
-- SERVER TICK EVENTS
-- ============================================

---Registers a function that is called every server tick (before the tick).
--- @param callback fun() Callback function (no arguments)
--- @return boolean
function registerServerTick(callback) end

---Registers a function that is called before every server tick.
--- @param callback fun() Callback function (no arguments)
--- @return boolean
function registerServerTickPre(callback) end

---Registers a function that is called after every server tick.
--- @param callback fun() Callback function (no arguments)
--- @return boolean
function registerServerTickPost(callback) end

---Registers a function that is called on every world tick (before the tick).
--- @param callback fun(world: serverworld) Callback function
--- @return boolean
function registerServerWorldTick(callback) end

---Registers a function that is called before every world tick.
--- @param callback fun(world: serverworld) Callback function
--- @return boolean
function registerServerWorldTickPre(callback) end

---Registers a function that is called after every world tick.
--- @param callback fun(world: serverworld) Callback function
--- @return boolean
function registerServerWorldTickPost(callback) end

-- ============================================
-- SERVER LIFECYCLE EVENTS
-- ============================================

---Registers a function that is called when the server (or world) is shutting down,
---while all worlds are still loaded and accessible. Called once per loaded world.
--- @param callback fun(world: serverworld) Callback function
--- @return boolean
function registerServerStoppingCallback(callback) end

--- @param callback function
--- @return boolean
function unregisterServerTick(callback) end

--- @param callback function
--- @return boolean
function unregisterServerTickPre(callback) end

--- @param callback function
--- @return boolean
function unregisterServerTickPost(callback) end

--- @param callback function
--- @return boolean
function unregisterServerWorldTick(callback) end

--- @param callback function
--- @return boolean
function unregisterServerWorldTickPre(callback) end

--- @param callback function
--- @return boolean
function unregisterServerWorldTickPost(callback) end

--- @param callback function
--- @return boolean
function unregisterServerStoppingCallback(callback) end

-- ============================================
-- INTERACTION EVENTS
-- ============================================

---Base fields shared by all interaction events.
--- @class server_interaction_event
--- @field player entity? Player that performed the action
--- @field world serverworld World where the action happened
--- @field hand string? Interaction hand ("MAINHAND" or "OFFHAND")

---Called when a player starts attacking (left click) a block. Return false to cancel.
--- @class server_attackblock_event : server_interaction_event
--- @field blockpos blockpos Attacked block position
--- @field direction direction Block face

---Registers a function that is triggered when a block is attacked.
--- @param callback fun(info: server_attackblock_event): boolean Return false to cancel
--- @return boolean
function registerAttackBlockCallback(callback) end

---Called when a player right clicks a block. Return false to cancel.
--- @class server_useblock_event : server_interaction_event
--- @field blockpos blockpos Used block position
--- @field direction direction Block face

---Registers a function that is triggered when a block is used.
--- @param callback fun(info: server_useblock_event): boolean Return false to cancel
--- @return boolean
function registerUseBlockCallback(callback) end

---Called when a player uses an item on a block (before block processing). Return false to cancel.
--- @class server_useitemonblock_event : server_interaction_event
--- @field item item? Used item stack
--- @field blockpos blockpos Target block position
--- @field blockstate block Current state of the target block

---Registers a function that is triggered when an item is used on a block.
--- @param callback fun(info: server_useitemonblock_event): boolean Return false to cancel
--- @return boolean
function registerUseItemOnBlockCallback(callback) end

---Called when a player right clicks a block without an item in hand. Return false to cancel.
--- @class server_usewithoutitem_event : server_interaction_event
--- @field blockpos blockpos Target block position
--- @field blockstate block Current state of the target block

---Registers a function that is triggered when a block is used without an item.
--- @param callback fun(info: server_usewithoutitem_event): boolean Return false to cancel
--- @return boolean
function registerUseWithoutItemCallback(callback) end

---Called before a player breaks a block. Return false to cancel the break.
--- @class server_breakblock_event : server_interaction_event
--- @field blockpos blockpos Broken block position
--- @field blockstate block State of the broken block
--- @field blockentity blockentity? Block entity of the broken block, if present

---Registers a function that is triggered before a block is broken.
--- @param callback fun(info: server_breakblock_event): boolean Return false to cancel
--- @return boolean
function registerBreakBlockBeforeCallback(callback) end

---Registers a function that is triggered after a block is broken.
--- @param callback fun(info: server_breakblock_event)
--- @return boolean
function registerBreakBlockAfterCallback(callback) end

---Registers a function that is triggered when a block break is cancelled by another handler.
--- @param callback fun(info: server_breakblock_event)
--- @return boolean
function registerBreakBlockCancelCallback(callback) end

---Called when a player attacks (left click) an entity. Return false to cancel.
--- @class server_attackentity_event : server_interaction_event
--- @field entity entity Attacked entity
--- @field hit_pos vector3d? Hit location

---Registers a function that is triggered when an entity is attacked.
--- @param callback fun(info: server_attackentity_event): boolean Return false to cancel
--- @return boolean
function registerAttackEntityCallback(callback) end

---Called when a player right clicks an entity. Return false to cancel.
--- @class server_useentity_event : server_interaction_event
--- @field entity entity Interacted entity
--- @field hit_pos vector3d? Hit location

---Registers a function that is triggered when an entity is used.
--- @param callback fun(info: server_useentity_event): boolean Return false to cancel
--- @return boolean
function registerUseEntityCallback(callback) end

---Called when a player uses (right click) an item. Return false to cancel.
--- @class server_useitem_event : server_interaction_event
--- @field item item? Used item stack

---Registers a function that is triggered when an item is used.
--- @param callback fun(info: server_useitem_event): boolean Return false to cancel
--- @return boolean
function registerUseItemCallback(callback) end

---Called when a player uses an item (right click), before block and entity interaction. Return false to cancel.
--- @class server_useitemon_event : server_interaction_event
--- @field item item? Used item stack
--- @field blockpos blockpos Clicked block position
--- @field direction direction Clicked block face

---Registers a function that is triggered when an item is used on something.
--- @param callback fun(info: server_useitemon_event): boolean Return false to cancel
--- @return boolean
function registerUseItemOnCallback(callback) end

---Called when a player picks a block from the world (middle click). The callback may return an item to override the picked stack.
--- @class server_pickitemfromblock_event
--- @field player entity Player that picked the block
--- @field blockpos blockpos Picked block position
--- @field blockstate block Picked block state
--- @field include_data boolean Whether block entity data should be included

---Registers a function that is triggered when an item is picked from a block.
--- @param callback fun(info: server_pickitemfromblock_event): item? Return an item to override the picked stack
--- @return boolean
function registerPickItemFromBlockCallback(callback) end

---Called when a player picks an entity (middle click). The callback may return an item to override the picked stack.
--- @class server_pickitemfromentity_event
--- @field player entity Player that picked the entity
--- @field entity entity Picked entity
--- @field include_data boolean Whether entity data should be included

---Registers a function that is triggered when an item is picked from an entity.
--- @param callback fun(info: server_pickitemfromentity_event): item? Return an item to override the picked stack
--- @return boolean
function registerPickItemFromEntityCallback(callback) end

-- ============================================
-- UNREGISTER FUNCTIONS
-- ============================================

--- @param callback function
--- @return boolean
function unregisterAttackBlockCallback(callback) end

--- @param callback function
--- @return boolean
function unregisterUseBlockCallback(callback) end

--- @param callback function
--- @return boolean
function unregisterUseItemOnBlockCallback(callback) end

--- @param callback function
--- @return boolean
function unregisterUseWithoutItemCallback(callback) end

--- @param callback function
--- @return boolean
function unregisterBreakBlockBeforeCallback(callback) end

--- @param callback function
--- @return boolean
function unregisterBreakBlockAfterCallback(callback) end

--- @param callback function
--- @return boolean
function unregisterBreakBlockCancelCallback(callback) end

--- @param callback function
--- @return boolean
function unregisterAttackEntityCallback(callback) end

--- @param callback function
--- @return boolean
function unregisterUseEntityCallback(callback) end

--- @param callback function
--- @return boolean
function unregisterUseItemCallback(callback) end

--- @param callback function
--- @return boolean
function unregisterUseItemOnCallback(callback) end

--- @param callback function
--- @return boolean
function unregisterPickItemFromBlockCallback(callback) end

--- @param callback function
--- @return boolean
function unregisterPickItemFromEntityCallback(callback) end

globals = {}
