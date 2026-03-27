--- @meta
---
--- @class twoRenderer
local twoRenderer = {}

--- @class scale
--- @field wight number
--- @field height number

--- @return scale
function twoRenderer.getWindowScale() end

--- @param text string
function twoRenderer.getTextWidth(text) end

--- @param info table
function twoRenderer.renderText(info) end

--- @param info table
function twoRenderer.renderImage(info) end

--- @param info table
function twoRenderer.renderRect(info) end

--- @param info table
function twoRenderer.renderLine(info) end

--- @param info table
function twoRenderer.renderPolygon(info) end

--- @param info table
function twoRenderer.renderItemStack(info) end
