--- @meta

--- @class input
local input = {}

--- @return boolean
function input.useItem() end

--- @param slot number
--- @return boolean
function input.silentUse(slot) end

--- @return boolean
function input.syncSelectedSlot() end

--- Attack block under crosshair
--- @return boolean
function input.attackBlock() end

--- Attack entity under crosshair
--- @return boolean
function input.attackEntity() end

--- Interact block under crosshair
--- @return boolean
function input.interactBlock() end

--- Interact entity under crosshair
--- @return boolean
function input.interactEntity() end

--- @return boolean
function input.leftClick() end

--- @return boolean
function input.rightClick() end

--- @param slot number (from 0 to 8)
--- @return boolean
function input.setSelectedSlot(slot) end

--- @param pressed boolean
function input.setPressedSprinting(pressed) end

--- @param pressed boolean
function input.setPressedJump(pressed) end

--- @param pressed boolean
function input.setPressedSneak(pressed) end

--- @param pressed boolean
function input.setPressedForward(pressed) end

--- @param pressed boolean
function input.setPressedBack(pressed) end

--- @param pressed boolean
function input.setPressedLeft(pressed) end

--- @param pressed boolean
function input.setPressedRight(pressed) end

--- @param pressed boolean
function input.setPressedAttack(pressed) end

--- @param pressed boolean
function input.setPressedUse(pressed) end

--- @return number (from 0 to 8)
function input.getSelectedSlot() end

--- @return boolean
function input.isPressedSprinting() end

--- @return boolean
function input.isPressedJump() end

--- @return boolean
function input.isPressedSneak() end

--- @return boolean
function input.isPressedForward() end

--- @return boolean
function input.isPressedBack() end

--- @return boolean
function input.isPressedLeft() end

--- @return boolean
function input.isPressedRight() end

--- @return boolean
function input.isPressedAttack() end

--- @return boolean
function input.isPressedUse() end
