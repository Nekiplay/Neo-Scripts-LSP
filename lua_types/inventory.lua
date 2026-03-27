--- @meta

--- @class inventory
local inventory = {}

--- @return boolean
function inventory.isSignOpened() end

--- @return boolean
function inventory.isAnyScreenOpened() end

--- @return number
function inventory.getContainerSlots() end

--- @return string?
function inventory.getChestTitle() end

--- @param slot number
--- @return item?
function inventory.getStackFromContainer(slot) end

--- @param slot number
--- @return item?
function inventory.getStack(slot) end

--- @param line number
--- @return string?
function inventory.getSignText(line) end

--- @param line number
--- @param text string
--- @return string?
function inventory.setSignText(line, text) end

--- @return boolean status
function inventory.doneSign() end

--- @param slot number
--- @return boolean status
function inventory.leftClick(slot) end

--- @param slot number
--- @return boolean status
function inventory.middleClick(slot) end

--- @param slot number
--- @return boolean status
function inventory.dropAll(slot) end

--- @param slot number
--- @return boolean status
function inventory.rightClick(slot) end

--- @return boolean status
function inventory.closeScreen() end

--- @return boolean status
function inventory.openInventory() end
