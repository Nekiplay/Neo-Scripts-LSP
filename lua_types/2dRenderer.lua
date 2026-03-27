--- @meta
---
--- @class twoRenderer
local twoRenderer = {}

--- @class scale
--- @field width number
--- @field height number

--- @return scale
function twoRenderer.getWindowScale() end

--- @param text string
--- @return number
function twoRenderer.getTextWidth(text) end

--- @param x number
--- @param y number
--- @param text string
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
--- @param shadow boolean
--- @param scale number
--- @return boolean
function twoRenderer.renderText(x, y, text, red, green, blue, alpha, shadow, scale) end

--- @param path string
--- @param x number
--- @param y number
--- @param width number
--- @param height number
--- @param u number
--- @param v number
--- @param regionWidth number
--- @param regionHeight number
--- @return boolean
function twoRenderer.renderImage(path, x, y, width, height, u, v, regionWidth, regionHeight) end

--- @param x number
--- @param y number
--- @param width number
--- @param height number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
--- @return boolean
function twoRenderer.renderRect(x, y, width, height, red, green, blue, alpha) end

--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
--- @param thickness number
--- @return boolean
function twoRenderer.renderLine(x1, y1, x2, y2, red, green, blue, alpha, thickness) end

--- @param points table
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
--- @return boolean
function twoRenderer.renderPolygon(points, red, green, blue, alpha) end

--- @param x number
--- @param y number
--- @param itemStack item
--- @param scale number
--- @return boolean
function twoRenderer.renderItemStack(x, y, itemStack, scale) end
