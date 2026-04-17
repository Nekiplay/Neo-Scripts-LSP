---@meta
--- @class json
local json = {}

--- @param table table
--- @param pretty boolean? default true
--- @return string
function json.stringify(table, pretty) end

--- @param string string json
--- @return table
function json.parse(string) end

--- @param table table
--- @param pretty boolean? default true
--- @return string
function json.encode(table, pretty) end

--- @param string string json
--- @return table
function json.decode(string) end

return json
