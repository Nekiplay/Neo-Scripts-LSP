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

---Add local message
--- @param text string -- message
--- @return boolean Return true if success
function player.addMessage(text) end

---Add local message
--- @param yaw number
--- @param pitch number
function player.setRotation(yaw, pitch) end

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

--- Get player name
--- @return string Player name
function player.getName() end

--- Get player area on Hypixel SkyBlock
--- @return string Player area
function player.getArea() end

--- Get player raw location on Hypixel SkyBlock
--- @return string Player location
function player.getRawLocation() end

--- Get player location on Hypixel SkyBlock
--- @return string Player location
function player.getLocation() end

--- Get player profile name on Hypixel SkyBlock
--- @return string Player profile
function player.getProfile() end

--- Get player profile id on Hypixel SkyBlock
--- @return string Player profile id
function player.getProfileId() end

--- Get player bits on Hypixel SkyBlock
--- @return number Player bits
function player.getBits() end

--- Get player purse on Hypixel SkyBlock
--- @return number Player purse
function player.getPurse() end

--- Get player health on Hypixel SkyBlock else return vanila health
--- @return number Player purse
function player.getHealth() end

--- Get player max health on Hypixel SkyBlock else return vanila max health
--- @return number Player health
function player.getMaxHealth() end

--- Get player mana on Hypixel SkyBlock
--- @return number Player mana
function player.getMana() end

--- Get player max mana on Hypixel SkyBlock
--- @return number Player max mana
function player.getMaxMana() end

--- Get player defence on Hypixel SkyBlock
--- @return number Player defence
function player.getDefence() end

--- Get player speed on Hypixel SkyBlock
--- @return number Player speed
function player.getSpeed() end

--- Get player cold on Hypixel SkyBlock
--- @return number Player cold
function player.getCold() end

--- Get player air on Hypixel SkyBlock
--- @return number Player air
function player.getAir() end

--- Get player air on Hypixel SkyBlock
--- @return number Player air
function player.getAir() end

--- Get player pet on Hypixel SkyBlock
--- @return pet Player equpped pet
function player.getPet() end

--- Get player max air on Hypixel SkyBlock
--- @return number Player max air
function player.getMaxAir() end

--- Get player rank on Hypixel SkyBlock
--- @return string Player rank
function player.getRank() end

--- Check is player sneaking
--- @return boolean
function player.isSneaking() end

--- Check is player sprinting
--- @return boolean
function player.isSprinting() end

--- Check is player is on ground
--- @return boolean
function player.isOnGround() end

--- Check is player is on Hypixel SkyBlock
--- @return boolean
function player.isOnSkyBlock() end

--- Check is visible entity
--- @param entity entity
--- @return boolean
function player.isHasLineOfSight(entity) end

--- Swing player hand
--- @param hand boolean true for swing off hand
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
