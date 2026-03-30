---@meta
--- @class json
local json = {}

--- @param table table
--- @return string
function json.stringify(table) end

--- @param string string json
--- @return table
function json.parse(string) end

--- @param table table
--- @return string
function json.encode(table) end

--- @param string string json
--- @return table
function json.decode(string) end

return json
