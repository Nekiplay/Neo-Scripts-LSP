---@meta
---
--- @class modules
local modules = {}

--- @param path string
--- @return boolean
function modules.loadScript(path) end

--- @param name string
--- @return boolean
function modules.unloadScript(name) end

--- @param modId string
--- @return boolean
function modules.isModLoaded(modId) end

--- @alias ModLoaders
--- | '"Fabric"'
--- | '"NeoForge"'

--- @return ModLoaders
function modules.getModLoader() end

--- @class ModInfo
--- @field name string
--- @field id number
--- @field description number
--- @field version number

--- @return ModInfo[]
function modules.getLoadedMods() end

return modules
