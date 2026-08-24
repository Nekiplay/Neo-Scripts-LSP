--- @meta

---Inventory object. Returned by entity.inventory (player) and blockEntity.inventory (container).
---Slots are indexed 1-based: inv[1] = item sets a slot, inv[1] = nil clears it.
---For ServerPlayer entities changes are automatically synced by the server.
--- @class container
--- @field size integer Total slot count
--- @field is_empty boolean Check if the whole inventory is empty
--- @field [integer] item? Read/write slot by 1-based index, nil clears the slot
local container = {}

--- Returns a list of non-empty slots
--- @return {slot: integer, item: item}[] items
function container.get_items() end

--- Alias for get_items
--- @return {slot: integer, item: item}[] items
function container.items() end

--- Alias for get_items
--- @return {slot: integer, item: item}[] items
function container.inventory_items() end

--- Adds an item to the inventory: merges into existing stacks first, then fills empty slots
--- @param item item Item to give
--- @param count integer? Amount to give, defaults to the stack count
--- @return integer added The amount actually added
function container.give_item(item, count) end

--- Alias for give_item
--- @param item item Item to give
--- @param count integer? Amount to give, defaults to the stack count
--- @return integer added The amount actually added
function container.add_item(item, count) end

--- Removes items from the inventory.
--- With a number removes from that specific slot, with an item or identifier removes matching items from any slot.
--- @param slot_or_item integer|item|string Slot number, item or identifier like "minecraft:diamond"
--- @param count integer? Amount to remove (defaults to whole stack / 1)
--- @return integer removed The amount actually removed
function container.take_item(slot_or_item, count) end

--- Alias for take_item
--- @param slot_or_item integer|item|string Slot number, item or identifier like "minecraft:diamond"
--- @param count integer? Amount to remove (defaults to whole stack / 1)
--- @return integer removed The amount actually removed
function container.remove_item(slot_or_item, count) end

--- Sets an item into a specific slot, nil clears it
--- @param slot integer 1-based slot index
--- @param item item? Item to set or nil to clear
--- @return boolean success
function container.set_item(slot, item) end
