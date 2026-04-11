--- @meta
---
--- @class worldRenderer
local worldRenderer = {}

--- @param box box
--- @param red number
--- @param green number
--- @param blue number
--- @param alpha number
--- @param throughWalls boolean
--- @return boolean
function worldRenderer.renderFilled(box, red, green, blue, alpha, throughWalls) end

--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param segments number
--- @param red number 0-255
--- @param green number 0-255
--- @param blue number 0-255
--- @param alpha number 0-255
--- @param throughWalls boolean
--- @return boolean
--- @overload fun(pos: vector3d, radius: number, segments: number, red: number, green: number, blue: number, alpha: number, throughWalls: boolean): boolean
function worldRenderer.renderFilledCircle(x, y, z, radius, segments, red, green, blue, alpha, throughWalls) end

--- @param box box
--- @param red number 0-255
--- @param green number 0-255
--- @param blue number 0-255
--- @param alpha number 0-255
--- @param lineWidth number
--- @param throughWalls boolean
--- @return boolean
function worldRenderer.renderOutline(box, red, green, blue, alpha, lineWidth, throughWalls) end

--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param segments number
--- @param thickness number
--- @param red number 0-255
--- @param green number 0-255
--- @param blue number 0-255
--- @param alpha number 0-255
--- @param throughWalls boolean
--- @return boolean
--- @overload fun(pos: vector3d, radius: number, segments: number, red: number, green: number, blue: number, alpha: number, throughWalls: boolean): boolean
function worldRenderer.renderOutlineCircle(x, y, z, radius, segments, thickness, red, green, blue, alpha, throughWalls) end

--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param height number
--- @param segments number
--- @param red number 0-255
--- @param green number 0-255
--- @param blue number 0-255
--- @param alpha number 0-255
--- @param throughWalls boolean
--- @return boolean
--- @overload fun(pos: vector3d, radius: number, height: number, red: number, green: number, blue: number, alpha: number, throughWalls: boolean): boolean
function worldRenderer.renderCylinder(x, y, z, radius, height, segments, red, green, blue, alpha, throughWalls) end

--- @param x number
--- @param y number
--- @param z number
--- @param radius number
--- @param segments number
--- @param rings number
--- @param red number 0-255
--- @param green number 0-255
--- @param blue number 0-255
--- @param alpha number 0-255
--- @param throughWalls boolean
--- @return boolean
--- @overload fun(pos: vector3d, radius: number, segments: number, rings: number, red: number, green: number, blue: number, alpha: number, throughWalls: boolean): boolean
function worldRenderer.renderSphere(x, y, z, radius, segments, rings, red, green, blue, alpha, throughWalls) end

--- @param x number
--- @param y number
--- @param z number
--- @param text string
--- @param scale number
--- @param red number 0-255
--- @param green number 0-255
--- @param blue number 0-255
--- @param throughWalls boolean?
--- @return boolean
--- @overload fun(pos: vector3d, text: string, scale: number, red: number, green: number, blue: number, alpha: number, throughWalls: boolean): boolean
function worldRenderer.renderText(x, y, z, text, scale, red, green, blue, throughWalls) end

--- @param points table
--- @param red number 0-255
--- @param green number 0-255
--- @param blue number 0-255
--- @param alpha number 0-255
--- @param lineWidth number
--- @param throughWalls boolean
--- @return boolean
function worldRenderer.renderLinesFromPoints(points, red, green, blue, alpha, lineWidth, throughWalls) end

--- @param x number
--- @param y number
--- @param z number
--- @param red number 0-255
--- @param green number 0-255
--- @param blue number 0-255
--- @param alpha number 0-255
--- @param lineWidth number
--- @return boolean
--- @overload fun(pos: vector3d, red: number, green: number, blue: number, alpha: number, lineWidth: number): boolean
function worldRenderer.renderLineFromCursor(x, y, z, red, green, blue, alpha, lineWidth) end

--- @param path string
--- @param x number
--- @param y number
--- @param z number
--- @param width number
--- @param height number
--- @param regionWidth number
--- @param regionHeight number
--- @param offsetX number
--- @param offsetY number
--- @param offsetZ number
--- @param red number 0-255
--- @param green number 0-255
--- @param blue number 0-255
--- @param alpha number 0-255
--- @param throughWalls boolean
--- @return boolean
--- @overload fun(path: string, pos: vector3d, width: number, height: number, regionWidth: number, regionHeight: number, offsetX: number, offsetY: number, offsetZ:number, red: number, green: number, blue: number, alpha: number, throughWalls: boolean): boolean
function worldRenderer.renderImage(path, x, y, z, width, height, regionWidth, regionHeight, offsetX, offsetY, offsetZ,
                                   red, green, blue, alpha, throughWalls)
end

--- @param x number
--- @param y number
--- @param z number
--- @param red number 0-255
--- @param green number 0-255
--- @param blue number 0-255
--- @return boolean
--- @overload fun(pos: vector3d, red: number, green: number, blue: number, alpha: number): boolean
function worldRenderer.renderBeaconBeam(x, y, z, red, green, blue) end

--- @param points table
--- @param red number
--- @param green number 0-255
--- @param blue number 0-255
--- @param alpha number 0-255
--- @param throughWalls boolean
--- @return boolean
function worldRenderer.renderQuad(points, red, green, blue, alpha, throughWalls) end

--- @param x number
--- @param y number
--- @param z number
--- @param id number
--- @return boolean
--- @overload fun(pos: vector3d, id: number): boolean
--- @overload fun(pos: vector3d, blockstate: block): boolean
function worldRenderer.renderHologramBlock(x, y, z, id) end

--- @param x number
--- @param y number
--- @param z number
--- @param id number
--- @return boolean
--- @overload fun(pos: vector3d, id: number): boolean
--- @overload fun(pos: vector3d, blockstate: block): boolean
function worldRenderer.renderBlock(x, y, z, id) end
