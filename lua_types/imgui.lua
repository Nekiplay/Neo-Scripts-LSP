--- @meta
---
--- @class imgui
local imgui = {}

-- ============================================
-- CONSTANTS - Window Flags
-- ============================================

imgui.constants = {}
imgui.constants.WindowFlags_None = 0
imgui.constants.WindowFlags_NoTitleBar = 0
imgui.constants.WindowFlags_NoResize = 0
imgui.constants.WindowFlags_NoMove = 0
imgui.constants.WindowFlags_NoScrollbar = 0
imgui.constants.WindowFlags_NoCollapse = 0

-- ============================================
-- CONSTANTS - Conditions
-- ============================================

imgui.constants.Cond_Always = 0
imgui.constants.Cond_Once = 0
imgui.constants.Cond_FirstUseEver = 0

-- ============================================
-- CONSTANTS - Color Edit Flags
-- ============================================

imgui.constants.ColorEditFlags_None = 0
imgui.constants.ColorEditFlags_NoAlpha = 0
imgui.constants.ColorEditFlags_NoPicker = 0

-- ============================================
-- CONSTANTS - Colors (Col_)
-- ============================================

imgui.constants.Col_Text = 0
imgui.constants.Col_TextDisabled = 0
imgui.constants.Col_WindowBg = 0
imgui.constants.Col_ChildBg = 0
imgui.constants.Col_PopupBg = 0
imgui.constants.Col_Border = 0
imgui.constants.Col_BorderShadow = 0
imgui.constants.Col_FrameBg = 0
imgui.constants.Col_FrameBgHovered = 0
imgui.constants.Col_FrameBgActive = 0
imgui.constants.Col_TitleBg = 0
imgui.constants.Col_TitleBgActive = 0
imgui.constants.Col_TitleBgCollapsed = 0
imgui.constants.Col_MenuBarBg = 0
imgui.constants.Col_ScrollbarBg = 0
imgui.constants.Col_ScrollbarGrab = 0
imgui.constants.Col_ScrollbarGrabHovered = 0
imgui.constants.Col_ScrollbarGrabActive = 0
imgui.constants.Col_CheckMark = 0
imgui.constants.Col_SliderGrab = 0
imgui.constants.Col_SliderGrabActive = 0
imgui.constants.Col_Button = 0
imgui.constants.Col_ButtonHovered = 0
imgui.constants.Col_ButtonActive = 0
imgui.constants.Col_Header = 0
imgui.constants.Col_HeaderHovered = 0
imgui.constants.Col_HeaderActive = 0
imgui.constants.Col_Separator = 0
imgui.constants.Col_SeparatorHovered = 0
imgui.constants.Col_SeparatorActive = 0
imgui.constants.Col_ResizeGrip = 0
imgui.constants.Col_ResizeGripHovered = 0
imgui.constants.Col_ResizeGripActive = 0
imgui.constants.Col_Tab = 0
imgui.constants.Col_TabHovered = 0
imgui.constants.Col_TabActive = 0
imgui.constants.Col_TabUnfocused = 0
imgui.constants.Col_TabUnfocusedActive = 0
imgui.constants.Col_PlotLines = 0
imgui.constants.Col_PlotLinesHovered = 0
imgui.constants.Col_PlotHistogram = 0
imgui.constants.Col_PlotHistogramHovered = 0
imgui.constants.Col_TableHeaderBg = 0
imgui.constants.Col_TableBorderStrong = 0
imgui.constants.Col_TableBorderLight = 0
imgui.constants.Col_TableRowBg = 0
imgui.constants.Col_TableRowBgAlt = 0
imgui.constants.Col_TextSelectedBg = 0
imgui.constants.Col_DragDropTarget = 0
imgui.constants.Col_NavHighlight = 0
imgui.constants.Col_NavWindowingHighlight = 0
imgui.constants.Col_NavWindowingDimBg = 0
imgui.constants.Col_ModalWindowDimBg = 0

-- ============================================
-- CONSTANTS - Style Vars (StyleVar_)
-- ============================================

imgui.constants.StyleVar_Alpha = 0
imgui.constants.StyleVar_DisabledAlpha = 0
imgui.constants.StyleVar_WindowPadding = 0
imgui.constants.StyleVar_WindowRounding = 0
imgui.constants.StyleVar_WindowBorderSize = 0
imgui.constants.StyleVar_WindowMinSize = 0
imgui.constants.StyleVar_WindowTitleAlign = 0
imgui.constants.StyleVar_ChildRounding = 0
imgui.constants.StyleVar_ChildBorderSize = 0
imgui.constants.StyleVar_PopupRounding = 0
imgui.constants.StyleVar_PopupBorderSize = 0
imgui.constants.StyleVar_FramePadding = 0
imgui.constants.StyleVar_FrameRounding = 0
imgui.constants.StyleVar_FrameBorderSize = 0
imgui.constants.StyleVar_ItemSpacing = 0
imgui.constants.StyleVar_ItemInnerSpacing = 0
imgui.constants.StyleVar_IndentSpacing = 0
imgui.constants.StyleVar_CellPadding = 0
imgui.constants.StyleVar_ScrollbarSize = 0
imgui.constants.StyleVar_ScrollbarRounding = 0
imgui.constants.StyleVar_GrabMinSize = 0
imgui.constants.StyleVar_GrabRounding = 0
imgui.constants.StyleVar_TabRounding = 0
imgui.constants.StyleVar_ButtonTextAlign = 0
imgui.constants.StyleVar_SelectableTextAlign = 0

-- ============================================
-- CONSTANTS - Table Flags
-- ============================================

imgui.constants.TableFlags_BordersInner = 0
imgui.constants.TableFlags_BordersInnerH = 0
imgui.constants.TableFlags_BordersInnerV = 0
imgui.constants.TableFlags_Resizable = 0

-- ============================================
-- DRAW LIST
-- ============================================

imgui.dl = {}

-- ============================================
-- WINDOW MANAGEMENT
-- ============================================

--- Begin a new window
--- @param name string
--- @param open boolean? optional
--- @param flags number? optional
--- @return boolean
function imgui.begin(name, open, flags) end

--- End the current window
function imgui.endBegin() end

--- Create a new frame
function imgui.newFrame() end

--- Render all windows
function imgui.render() end

-- ============================================
-- TEXT
-- ============================================

--- Render text
--- @param text string
function imgui.text(text) end

--- Render colored text
--- @param r number 0-1
--- @param g number 0-1
--- @param b number 0-1
--- @param a number? optional 0-1
--- @param text string
function imgui.textColored(r, g, b, a, text) end

--- Render disabled text
--- @param text string
function imgui.textDisabled(text) end

--- Render bullet point text
--- @param text string
function imgui.bulletText(text) end

--- Render bullet point text
--- @param text string
--- @return number wighth
--- @return number height
function imgui.calcTextSize(text) end

-- ============================================
-- IMAGES
-- ============================================

--- @class imgui.Image
imgui.Image = {}

---Load an image from path and return.
---@param path string Path to image file
---@return imgui.Image
function imgui.Image.loadImage(path) end

---Load an image from path and return.
---@return number
function imgui.Image.getId() end

---Free image object from memory.
function imgui.Image.release() end

---Create an image object from path.
---@param path string Path to image file
---@return imgui.Image
function imgui.createImageObject(path) end

--- Render an image
--- @param image userdata
--- @param width number
--- @param height number
--- @param uvMinX number? optional
--- @param uvMinY number? optional
--- @param uvMaxX number? optional
--- @param uvMaxY number? optional
function imgui.image(image, width, height, uvMinX, uvMinY, uvMaxX, uvMaxY) end

-- ============================================
-- BUTTONS
-- ============================================

--- Render a button
--- @param label string
--- @param width number? optional
--- @param height number? optional
--- @return boolean
function imgui.button(label, width, height) end

--- Render a small button
--- @param label string
--- @return boolean
function imgui.smallButton(label) end

--- Render an arrow button
--- @param label string
--- @param dir number
--- @return boolean
function imgui.arrowButton(label, dir) end

--- Render a checkbox
--- @param label string
--- @param state boolean
--- @return boolean, boolean
function imgui.checkbox(label, state) end

-- ============================================
-- INPUT
-- ============================================

--- Render text input
--- @param label string
--- @param text string
--- @return boolean, string
function imgui.inputText(label, text) end

--- Render multiline text input
--- @param label string
--- @param text string
--- @return boolean, string
function imgui.inputTextMultiline(label, text) end

--- Render integer input
--- @param label string
--- @param value number
--- @return boolean, number
function imgui.inputInt(label, value) end

--- Render float input
--- @param label string
--- @param value number
--- @return boolean, number
function imgui.inputFloat(label, value) end

--- Render double input
--- @param label string
--- @param value number
--- @return boolean, number
function imgui.inputDouble(label, value) end

-- ============================================
-- LAYOUT
-- ============================================

--- Move to same line
function imgui.sameLine() end

--- Move to new line
function imgui.newLine() end

--- Add spacing
function imgui.spacing() end

--- Add separator
function imgui.separator() end

-- ============================================
-- GROUPS
-- ============================================

--- Begin a group
function imgui.beginGroup() end

--- End a group
function imgui.endGroup() end

-- ============================================
-- INDENTATION
-- ============================================

--- Increase indentation
function imgui.indent() end

--- Decrease indentation
function imgui.unindent() end

-- ============================================
-- CURSOR POSITION
-- ============================================

--- Set cursor position
--- @param x number
--- @param y number
function imgui.setCursorPos(x, y) end

--- Get cursor position
--- @return number, number
function imgui.getCursorPos() end

--- Get cursor screen position
--- @return number, number
function imgui.getCursorScreenPos() end

-- ============================================
-- TREES
-- ============================================

--- Begin a tree node
--- @param label string
--- @return boolean
function imgui.treeNode(label) end

--- Begin a tree node (extended)
--- @param label string
--- @param flags number? optional
--- @return boolean
function imgui.treeNodeEx(label, flags) end

--- End tree node
function imgui.treePop() end

--- Render collapsing header
--- @param label string
--- @param open boolean? optional
--- @param flags number? optional
--- @return boolean, boolean
function imgui.collapsingHeader(label, open, flags) end

-- ============================================
-- SELECTABLES
-- ============================================

--- Render selectable
--- @param label string
--- @param selected boolean
--- @param flags number? optional
--- @param width number? optional
--- @param height number? optional
--- @return boolean
function imgui.selectable(label, selected, flags, width, height) end

-- ============================================
-- LISTS
-- ============================================

--- Render list box
--- @param label string
--- @param currentItem number
--- @param items table
--- @return boolean, number
function imgui.listBox(label, currentItem, items) end

-- ============================================
-- TOOLTIPS
-- ============================================

--- Set tooltip (for next item)
--- @param text string
function imgui.setTooltip(text) end

--- Begin tooltip
function imgui.beginTooltip() end

--- End tooltip
function imgui.endTooltip() end

-- ============================================
-- POPUPS
-- ============================================

--- Begin popup
--- @param id string
--- @param flags number? optional
--- @return boolean
function imgui.beginPopup(id, flags) end

--- Open popup
--- @param id string
--- @param flags number optional
--- @return boolean
function imgui.openPopup(id, flags) end

--- Begin popup modal
--- @param name string
--- @param open boolean? optional
--- @param flags number? optional
--- @return boolean, boolean
function imgui.beginPopupModal(name, open, flags) end

--- End popup
function imgui.endPopup() end

--- Close current popup
function imgui.closeCurrentPopup() end

-- ============================================
-- MENUS
-- ============================================

--- Begin menu bar
--- @return boolean
function imgui.beginMenuBar() end

--- End menu bar
function imgui.endMenuBar() end

--- Begin main menu bar
--- @return boolean
function imgui.beginMainMenuBar() end

--- End main menu bar
function imgui.endMainMenuBar() end

--- Begin menu
--- @param label string
--- @param enabled boolean? optional
--- @return boolean
function imgui.beginMenu(label, enabled) end

--- End menu
function imgui.endMenu() end

--- Render menu item
--- @param label string
--- @param shortcut string? optional
--- @param selected boolean? optional
--- @param enabled boolean? optional
--- @return boolean
function imgui.menuItem(label, shortcut, selected, enabled) end

-- ============================================
-- TABS
-- ============================================

--- Begin tab bar
--- @param id string
--- @param flags number? optional
--- @return boolean
function imgui.beginTabBar(id, flags) end

--- End tab bar
function imgui.endTabBar() end

--- Begin tab item
--- @param label string
--- @param open boolean? optional
--- @param flags number? optional
--- @return boolean, boolean
function imgui.beginTabItem(label, open, flags) end

--- End tab item
function imgui.endTabItem() end

-- ============================================
-- CHILD WINDOWS
-- ============================================

--- Begin child window
--- @param id string
--- @param width number? optional
--- @param height number? optional
--- @param border boolean? optional
--- @param flags number? optional
--- @return boolean
function imgui.beginChild(id, width, height, border, flags) end

--- End child window
function imgui.endChild() end

-- ============================================
-- STYLE
-- ============================================

--- Push style color
--- @param idx number
--- @param col number
function imgui.pushStyleColor(idx, col) end

--- Pop style color
--- @param count number? optional
function imgui.popStyleColor(count) end

--- Push style variable
--- @param idx number
--- @param value number
function imgui.pushStyleVar(idx, value) end

--- Pop style variable
--- @param count number? optional
function imgui.popStyleVar(count) end

-- ============================================
-- FONT
-- ============================================

---@class fontObject


--- Create font object
--- @param path string
--- @param mergeMode boolean?
--- @param pixelSnapH boolean?
--- @param fontSize number
--- @param customRangesTable number[]?
--- @return fontObject
function imgui.createFontObject(path, mergeMode, pixelSnapH, fontSize, customRangesTable) end

--- Push font
--- @param font fontObject
function imgui.pushFont(font) end

--- Pop font
function imgui.popFont() end

-- ============================================
-- ID STACK
-- ============================================

--- Push ID
--- @param id string
function imgui.pushID(id) end

--- Pop ID
function imgui.popID() end

-- ============================================
-- UTILITIES
-- ============================================

--- Set next item width
--- @param width number
function imgui.setNextItemWidth(width) end

--- Check if item is hovered
--- @param flags number? optional
--- @return boolean
function imgui.isItemHovered(flags) end

--- Check if item is clicked
--- @param button number? optional
--- @return boolean
function imgui.isItemClicked(button) end

--- Check if item is active
--- @return boolean
function imgui.isItemActive() end

--- Check if window is appearing
--- @return boolean
function imgui.isWindowAppearing() end

--- Check if window is collapsed
--- @return boolean
function imgui.isWindowCollapsed() end

--- Check if window is focused
--- @param flags number? optional
--- @return boolean
function imgui.isWindowFocused(flags) end

--- Check if window is hovered
--- @param flags number? optional
--- @return boolean
function imgui.isWindowHovered(flags) end

-- ============================================
-- WINDOW MANIPULATION
-- ============================================

--- Set next window size
--- @param width number
--- @param height number
--- @param cond number? optional
function imgui.setNextWindowSize(width, height, cond) end

--- Set next window position
--- @param x number
--- @param y number
--- @param cond number? optional
function imgui.setNextWindowPos(x, y, cond) end

--- Set next window collapsed
--- @param collapsed boolean
--- @param cond number? optional
function imgui.setNextWindowCollapsed(collapsed, cond) end

--- Set next window focus
function imgui.setNextWindowFocus() end

-- ============================================
-- STATE QUERIES
-- ============================================

--- Get window size
--- @return number, number
function imgui.getWindowSize() end

--- Get window position
--- @return number, number
function imgui.getWindowPos() end

--- Get window width
--- @return number
function imgui.getWindowWidth() end

--- Get window height
--- @return number
function imgui.getWindowHeight() end

-- ============================================
-- TABLE
-- ============================================

--- Begin table
--- @param id string
--- @param columns number
--- @param flags number? optional
--- @param outerWidth number? optional
--- @param outerHeight number? optional
--- @return boolean
function imgui.beginTable(id, columns, flags, outerWidth, outerHeight) end

--- Setup table column
--- @param label string
--- @param flags number? optional
--- @param initWidthOrWeight number? optional
--- @param userId number? optional
function imgui.tableSetupColumn(label, flags, initWidthOrWeight, userId) end

--- Setup table headers row
function imgui.tableHeadersRow() end

--- Setup next table row
function imgui.tableNextRow() end

--- Set table column index
--- @param column number
--- @return boolean
function imgui.tableSetColumnIndex(column) end

--- End table
function imgui.endTable() end

-- ============================================
-- SLIDERS
-- ============================================

--- Render float slider
--- @param label string
--- @param value number
--- @param min number
--- @param max number
--- @param format string? optional
--- @param flags number? optional
--- @return boolean, number
function imgui.sliderFloat(label, value, min, max, format, flags) end

--- Render int slider
--- @param label string
--- @param value number
--- @param min number
--- @param max number
--- @param format string? optional
--- @param flags number? optional
--- @return boolean, number
function imgui.sliderInt(label, value, min, max, format, flags) end

--- Render vertical float slider
--- @param label string
--- @param value number
--- @param min number
--- @param max number
--- @param format string? optional
--- @param flags number? optional
--- @return boolean, number
function imgui.vSliderFloat(label, value, min, max, format, flags) end

--- Render vertical int slider
--- @param label string
--- @param value number
--- @param min number
--- @param max number
--- @param format string? optional
--- @param flags number? optional
--- @return boolean, number
function imgui.vSliderInt(label, value, min, max, format, flags) end

-- ============================================
-- DRAW LIST (dl)
-- ============================================

--- Render text on draw list
--- @param x number
--- @param y number
--- @param text string
--- @param red number? optional 0-1
--- @param green number? optional 0-1
--- @param blue number? optional 0-1
--- @param alpha number? optional 0-1
--- @return boolean
function imgui.dl.renderText(x, y, text, red, green, blue, alpha) end

--- Render image on draw list
--- @param textureID number
--- @param x number
--- @param y number
--- @param width number
--- @param height number
--- @param uvMinX number? optional
--- @param uvMinY number? optional
--- @param uvMaxX number? optional
--- @param uvMaxY number? optional
--- @return boolean
function imgui.dl.renderImage(textureID, x, y, width, height, uvMinX, uvMinY, uvMaxX, uvMaxY) end

--- Render line on draw list
--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param red number? optional 0-1
--- @param green number? optional 0-1
--- @param blue number? optional 0-1
--- @param alpha number? optional 0-1
--- @param thickness number? optional
--- @return boolean
function imgui.dl.renderLine(x1, y1, x2, y2, red, green, blue, alpha, thickness) end

--- Render polygon on draw list
--- @param points table
--- @param red number? optional 0-1
--- @param green number? optional 0-1
--- @param blue number? optional 0-1
--- @param alpha number? optional 0-1
--- @return boolean
function imgui.dl.renderPolygon(points, red, green, blue, alpha) end

return imgui
