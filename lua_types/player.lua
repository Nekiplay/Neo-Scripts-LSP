--- @meta
---
--- @class pet
--- @field name string?
--- @field type string
--- @field exp number
--- @field item string?
--- @field skin string?
--- @field tier string
--- @field uuid string
---
--- @class player
--- @field entity entity
--- @field inventory inventory
--- @field input input
--- @field network network
--- @field fishHook entity? The nature of a fish taking the bait when the line is cast
local player = {}

---Get ScoreBoard lines
--- @return string[]
function player.getScoreBoardLines() end

--- @class tab
--- @field header string
--- @field footer string
--- @field body string[]

---Get Tab
--- @return tab
function player.getTab() end

--- @class boosbar
--- @field uuid string
--- @field name string
--- @field percent number 0-1
--- @field color string
--- @field overlay string
--- @field shouldCreateFog boolean
--- @field shouldDarkenScreen boolean
--- @field shouldPlayBossMusic boolean

---Get BossBars
--- @return boosbar[]
function player.getBossBar() end

---Add local message
--- @param text string -- message
--- @return boolean Return true if success
function player.addMessage(text) end

---Set player rotation
--- @param yaw number
--- @param pitch number
function player.setRotation(yaw, pitch) end

---Set server side player rotation
--- @param yaw number
--- @param pitch number
--- @param movementCorrection boolean? default true
--- @param silentMovementCorrection boolean? default false, require movementCorrection true
function player.setSilentRotation(yaw, pitch, movementCorrection, silentMovementCorrection) end

--- Send message to server
--- @param text string -- message
--- @return boolean Return true if success
function player.sendMessage(text) end

---Send command
--- @param text string -- message
--- @return boolean Return true if success
function player.sendCommand(text) end

--- Get player possition
--- @return vector3d Player postion
function player.getPos() end

--- Get player possition
--- @return vector3d Player postion
function player.getPosition() end

--- Get player rotation
--- @return rotation Player rotation
function player.getRotation() end

--- Get player server side rotation
--- @return rotation Player rotation
function player.getSilentRotation() end

--- Check if player has custom serverside rotation
--- @return boolean
function player.isSilentRotating() end

--- Get player name
--- @return string Player name
function player.getName() end

--- Check is player sneaking
--- @return boolean
function player.isSneaking() end

--- Check is player sprinting
--- @return boolean
function player.isSprinting() end

--- Check is player is on ground
--- @return boolean
function player.isOnGround() end

--- Check is visible entity
--- @param entity entity
--- @return boolean
function player.isHasLineOfSight(entity) end

--- Swing player hand
--- @param hand boolean? true for swing off hand
--- @return boolean
function player.swingHand(hand) end

--- Get player eye postion
--- @return vector3d
function player.getEyePosition(hand) end

--- Get player eye postion
--- @param title string Toast title
--- @param message string Toast message
--- @param time number Toast showing time in (ms)
--- @return boolean
function player.addToast(title, message, time) end

--- Get player eye postion
--- @param yaw number Player yaw
--- @param pitch number Player pitch
--- @return vector3d
function player.getDirectionFromYawPitch(yaw, pitch) end

--- @param distance number
--- @return raycastResult
function player.raycast(distance) end

return player
