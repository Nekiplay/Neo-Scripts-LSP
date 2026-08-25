--- @meta

---Block state properties accessor. Returned by block.properties.
---Reads and writes any block state property by name, e.g. block.properties.waterlogged = true.
---Values are boolean / integer / number / string depending on the property.
--- @class block_properties
--- @field [string] boolean|integer|number|string Property value by property name
local block_properties = {}

---Returns a table with all properties of the block state.
--- @return table<string, boolean|integer|number|string> properties
function block_properties.getAll() end

return block_properties
