--- @meta
---
--- @buildSrc/src/main/java/com/nekiplay/neoscripts/init/InitInjectingClassVisitor.java imgui
local imgui = {}

-- ============================================
-- CONSTANTS - Window Flags
-- ============================================

imgui.constants = {}
imgui.constants.WindowFlags_None = 0
imgui.constants.WindowFlags_NoTitleBar = 1
imgui.constants.WindowFlags_NoResize = 2
imgui.constants.WindowFlags_NoMove = 4
imgui.constants.WindowFlags_NoScrollbar = 8
imgui.constants.WindowFlags_NoCollapse = 16
imgui.constants.WindowFlags_NoScrollWithMouse = 32
imgui.constants.WindowFlags_NoBackground = 64
imgui.constants.WindowFlags_NoSavedSettings = 128
imgui.constants.WindowFlags_MenuBar = 256
imgui.constants.WindowFlags_HorizontalScrollbar = 512
imgui.constants.WindowFlags_NoFocusOnAppearing = 1024
imgui.constants.WindowFlags_NoBringToDisplayOnFocus = 2048
imgui.constants.WindowFlags_AlwaysAutoResize = 4096
imgui.constants.WindowFlags_AlwaysVerticalScrollbar = 8192
imgui.constants.WindowFlags_AlwaysHorizontalScrollbar = 16384
imgui.constants.WindowFlags_NoNav = 32768
imgui.constants.WindowFlags_NoDecoration = 43
imgui.constants.WindowFlags_NoInputs = 40960

-- ============================================
-- CONSTANTS - Conditions
-- ============================================

imgui.constants.Cond_Always = 1
imgui.constants.Cond_Once = 2
imgui.constants.Cond_FirstUseEver = 4

-- ============================================
-- CONSTANTS - Color Edit Flags
-- ============================================

imgui.constants.ColorEditFlags_None = 0
imgui.constants.ColorEditFlags_NoAlpha = 2
imgui.constants.ColorEditFlags_NoPicker = 4
imgui.constants.ColorEditFlags_AlphaBar = 65536
imgui.constants.ColorEditFlags_AlphaPreview = 131072
imgui.constants.ColorEditFlags_AlphaPreviewHalf = 262144
imgui.constants.ColorEditFlags_HDR = 524288
imgui.constants.ColorEditFlags_DisplayRGB = 1048576
imgui.constants.ColorEditFlags_DisplayHSV = 2097152
imgui.constants.ColorEditFlags_DisplayHex = 4194304
imgui.constants.ColorEditFlags_Uint8 = 8388608
imgui.constants.ColorEditFlags_Float = 16777216
imgui.constants.ColorEditFlags_PickerHueBar = 33554432
imgui.constants.ColorEditFlags_PickerHueWheel = 67108864
imgui.constants.ColorEditFlags_InputRGB = 134217728
imgui.constants.ColorEditFlags_InputHSV = 268435456
imgui.constants.ColorEditFlags_NoSidePreview = 536870912
imgui.constants.ColorEditFlags_NoLabel = 1073741824
imgui.constants.ColorEditFlags_NoTooltip = 2097152
imgui.constants.ColorEditFlags_NoOptions = 4194304
imgui.constants.ColorEditFlags_NoInputs = 8388608
imgui.constants.ColorEditFlags_NoDragDrop = 16777216
imgui.constants.ColorEditFlags_NoBorder = 33554432
imgui.constants.ColorEditFlags_NoSmallPreview = 67108864

-- ============================================
-- CONSTANTS - Colors (Col_)
-- ============================================

imgui.constants.Col_Text = 0
imgui.constants.Col_TextDisabled = 1
imgui.constants.Col_WindowBg = 2
imgui.constants.Col_ChildBg = 3
imgui.constants.Col_PopupBg = 4
imgui.constants.Col_Border = 5
imgui.constants.Col_BorderShadow = 6
imgui.constants.Col_FrameBg = 7
imgui.constants.Col_FrameBgHovered = 8
imgui.constants.Col_FrameBgActive = 9
imgui.constants.Col_TitleBg = 10
imgui.constants.Col_TitleBgActive = 11
imgui.constants.Col_TitleBgCollapsed = 12
imgui.constants.Col_MenuBarBg = 13
imgui.constants.Col_ScrollbarBg = 14
imgui.constants.Col_ScrollbarGrab = 15
imgui.constants.Col_ScrollbarGrabHovered = 16
imgui.constants.Col_ScrollbarGrabActive = 17
imgui.constants.Col_CheckMark = 18
imgui.constants.Col_SliderGrab = 19
imgui.constants.Col_SliderGrabActive = 20
imgui.constants.Col_Button = 21
imgui.constants.Col_ButtonHovered = 22
imgui.constants.Col_ButtonActive = 23
imgui.constants.Col_Header = 24
imgui.constants.Col_HeaderHovered = 25
imgui.constants.Col_HeaderActive = 26
imgui.constants.Col_Separator = 27
imgui.constants.Col_SeparatorHovered = 28
imgui.constants.Col_SeparatorActive = 29
imgui.constants.Col_ResizeGrip = 30
imgui.constants.Col_ResizeGripHovered = 31
imgui.constants.Col_ResizeGripActive = 32
imgui.constants.Col_Tab = 33
imgui.constants.Col_TabHovered = 34
imgui.constants.Col_TabActive = 35
imgui.constants.Col_TabUnfocused = 36
imgui.constants.Col_TabUnfocusedActive = 37
imgui.constants.Col_PlotLines = 38
imgui.constants.Col_PlotLinesHovered = 39
imgui.constants.Col_PlotHistogram = 40
imgui.constants.Col_PlotHistogramHovered = 41
imgui.constants.Col_TableHeaderBg = 42
imgui.constants.Col_TableBorderStrong = 43
imgui.constants.Col_TableBorderLight = 44
imgui.constants.Col_TableRowBg = 45
imgui.constants.Col_TableRowBgAlt = 46
imgui.constants.Col_TextSelectedBg = 47
imgui.constants.Col_DragDropTarget = 48
imgui.constants.Col_NavHighlight = 49
imgui.constants.Col_NavWindowingHighlight = 50
imgui.constants.Col_NavWindowingDimBg = 51
imgui.constants.Col_ModalWindowDimBg = 52

-- ============================================
-- CONSTANTS - Style Vars (StyleVar_)
-- ============================================

imgui.constants.StyleVar_Alpha = 0
imgui.constants.StyleVar_DisabledAlpha = 1
imgui.constants.StyleVar_WindowPadding = 2
imgui.constants.StyleVar_WindowRounding = 3
imgui.constants.StyleVar_WindowBorderSize = 4
imgui.constants.StyleVar_WindowMinSize = 5
imgui.constants.StyleVar_WindowTitleAlign = 6
imgui.constants.StyleVar_ChildRounding = 7
imgui.constants.StyleVar_ChildBorderSize = 8
imgui.constants.StyleVar_PopupRounding = 9
imgui.constants.StyleVar_PopupBorderSize = 10
imgui.constants.StyleVar_FramePadding = 11
imgui.constants.StyleVar_FrameRounding = 12
imgui.constants.StyleVar_FrameBorderSize = 13
imgui.constants.StyleVar_ItemSpacing = 14
imgui.constants.StyleVar_ItemInnerSpacing = 15
imgui.constants.StyleVar_IndentSpacing = 16
imgui.constants.StyleVar_CellPadding = 17
imgui.constants.StyleVar_ScrollbarSize = 18
imgui.constants.StyleVar_ScrollbarRounding = 19
imgui.constants.StyleVar_GrabMinSize = 20
imgui.constants.StyleVar_GrabRounding = 21
imgui.constants.StyleVar_TabRounding = 22
imgui.constants.StyleVar_ButtonTextAlign = 23
imgui.constants.StyleVar_SelectableTextAlign = 24

-- ============================================
-- CONSTANTS - Table Flags
-- ============================================

imgui.constants.TableFlags_BordersInner = 1536
imgui.constants.TableFlags_BordersInnerH = 1024
imgui.constants.TableFlags_BordersInnerV = 512
imgui.constants.TableFlags_Resizable = 1
imgui.constants.TableFlags_BordersOuter = 14336
imgui.constants.TableFlags_BordersOuterH = 8192
imgui.constants.TableFlags_BordersOuterV = 4096
imgui.constants.TableFlags_Borders = 15872
imgui.constants.TableFlags_RowBg = 16
imgui.constants.TableFlags_ScrollX = 33554432
imgui.constants.TableFlags_ScrollY = 67108864
imgui.constants.TableFlags_SizingFixedFit = 8192
imgui.constants.TableFlags_SizingStretchSame = 16384
imgui.constants.TableFlags_NoHostExtendX = 65536

-- ============================================
-- CONSTANTS - Additional Flags
-- ============================================

-- InputText Flags
imgui.constants.InputTextFlags_None = 0
imgui.constants.InputTextFlags_CharsDecimal = 1
imgui.constants.InputTextFlags_CharsHexadecimal = 2
imgui.constants.InputTextFlags_CharsUppercase = 4
imgui.constants.InputTextFlags_CharsNoBlank = 8
imgui.constants.InputTextFlags_AutoSelectAll = 16
imgui.constants.InputTextFlags_EnterReturnsTrue = 32
imgui.constants.InputTextFlags_Password = 64
imgui.constants.InputTextFlags_ReadOnly = 128
imgui.constants.InputTextFlags_Multiline = 256
imgui.constants.InputTextFlags_NoHorizontalScroll = 512

-- TreeNode Flags
imgui.constants.TreeNodeFlags_None = 0
imgui.constants.TreeNodeFlags_Selected = 1
imgui.constants.TreeNodeFlags_Framed = 2
imgui.constants.TreeNodeFlags_AllowItemOverlap = 4
imgui.constants.TreeNodeFlags_NoTreePushOnOpen = 8
imgui.constants.TreeNodeFlags_NoAutoOpenOnLog = 16
imgui.constants.TreeNodeFlags_DefaultOpen = 32
imgui.constants.TreeNodeFlags_OpenOnDoubleClick = 64
imgui.constants.TreeNodeFlags_OpenOnArrow = 128
imgui.constants.TreeNodeFlags_Leaf = 256
imgui.constants.TreeNodeFlags_Bullet = 512
imgui.constants.TreeNodeFlags_CollapsingHeader = 1024

-- Selectable Flags
imgui.constants.SelectableFlags_None = 0
imgui.constants.SelectableFlags_DontClosePopups = 1
imgui.constants.SelectableFlags_SpanAllColumns = 2
imgui.constants.SelectableFlags_AllowDoubleClick = 4
imgui.constants.SelectableFlags_Disabled = 8
imgui.constants.SelectableFlags_AllowItemOverlap = 16

-- Slider Flags
imgui.constants.SliderFlags_None = 0
imgui.constants.SliderFlags_AlwaysClamp = 16
imgui.constants.SliderFlags_Logarithmic = 32
imgui.constants.SliderFlags_NoRoundToFormat = 64
imgui.constants.SliderFlags_NoInput = 128

-- Directions
imgui.constants.Dir_None = -1
imgui.constants.Dir_Left = 0
imgui.constants.Dir_Right = 1
imgui.constants.Dir_Up = 2
imgui.constants.Dir_Down = 3

-- Mouse Buttons
imgui.constants.MouseButton_Left = 0
imgui.constants.MouseButton_Right = 1
imgui.constants.MouseButton_Middle = 2

-- Hovered / Focused Flags
imgui.constants.HoveredFlags_None = 0
imgui.constants.HoveredFlags_ChildWindows = 1
imgui.constants.HoveredFlags_RootWindow = 2
imgui.constants.HoveredFlags_AnyWindow = 4
imgui.constants.HoveredFlags_AllowWhenBlockedByPopup = 8
imgui.constants.HoveredFlags_AllowWhenBlockedByActiveItem = 16
imgui.constants.HoveredFlags_AllowWhenOverlapped = 32
imgui.constants.HoveredFlags_AllowWhenDisabled = 64
imgui.constants.FocusedFlags_None = 0
imgui.constants.FocusedFlags_ChildWindows = 1
imgui.constants.FocusedFlags_RootWindow = 2
imgui.constants.FocusedFlags_AnyWindow = 4

-- Draw Flags
imgui.constants.DrawFlags_None = 0
imgui.constants.DrawFlags_Closed = 1
imgui.constants.DrawFlags_RoundCornersTopLeft = 16
imgui.constants.DrawFlags_RoundCornersTopRight = 32
imgui.constants.DrawFlags_RoundCornersBottomLeft = 64
imgui.constants.DrawFlags_RoundCornersBottomRight = 128
imgui.constants.DrawFlags_RoundCornersNone = 240
imgui.constants.DrawFlags_RoundCornersTop = 48
imgui.constants.DrawFlags_RoundCornersBottom = 192
imgui.constants.DrawFlags_RoundCornersLeft = 80
imgui.constants.DrawFlags_RoundCornersRight = 160
imgui.constants.DrawFlags_RoundCornersAll = 240

-- TabBar / TabItem Flags
imgui.constants.TabBarFlags_None = 0
imgui.constants.TabBarFlags_Reorderable = 1
imgui.constants.TabBarFlags_AutoSelectNewTabs = 2
imgui.constants.TabBarFlags_TabListPopupButton = 4
imgui.constants.TabBarFlags_NoCloseWithMiddleMouseButton = 8
imgui.constants.TabBarFlags_NoTabListScrollingButtons = 16
imgui.constants.TabBarFlags_NoTooltip = 32
imgui.constants.TabBarFlags_FittingPolicyResizeDown = 64
imgui.constants.TabBarFlags_FittingPolicyScroll = 128
imgui.constants.TabItemFlags_None = 0
imgui.constants.TabItemFlags_UnsavedDocument = 1
imgui.constants.TabItemFlags_SetSelected = 2
imgui.constants.TabItemFlags_NoCloseWithMiddleMouseButton = 4
imgui.constants.TabItemFlags_NoPushId = 8
imgui.constants.TabItemFlags_NoTooltip = 16

-- ============================================
-- DRAW LIST
-- ============================================

imgui.dl = {}

-- ============================================
-- WINDOW MANAGEMENT
-- ============================================

--- Begin a new window
--- @param name string
--- @param flags number? optional
--- @return boolean isOpened
function imgui.begin(name, flags) end

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

--- Calculate text size
--- @param text string
--- @param hideTextAfterDoubleHash boolean? optional
--- @param wrapWidth number? optional
--- @return number width, number height
function imgui.calcTextSize(text, hideTextAfterDoubleHash, wrapWidth) end

--- Render wrapped text
--- @param text string
function imgui.textWrapped(text) end

--- Render label + text
--- @param label string
--- @param text string
function imgui.labelText(label, text) end

--- Render separator with text
--- @param text string
function imgui.separatorText(text) end

-- ============================================
-- IMAGES
-- ============================================

--- @buildSrc/src/main/java/com/nekiplay/neoscripts/init/InitInjectingClassVisitor.java imgui.Image
imgui.Image = {}

---Load an image from path and return.
--- @param path string Path to image file
--- @return imgui.Image
function imgui.Image.loadImage(path) end

---Load an image from path and return.
--- @return number
function imgui.Image.getId() end

---Free image object from memory.
function imgui.Image.release() end

---Create an image object from path.
--- @param path string Path to image file
--- @return imgui.Image
function imgui.createImageObject(path) end

--- Render an image
--- @param image userdata|number
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
--- @return boolean clicked
function imgui.button(label, width, height) end

--- Render a small button
--- @param label string
--- @return boolean clicked
function imgui.smallButton(label) end

--- Render an arrow button
--- @param label string
--- @param dir number
--- @return boolean clicked
function imgui.arrowButton(label, dir) end

--- Render a checkbox
--- @param label string
--- @param state boolean
--- @return boolean changed, boolean newState
function imgui.checkbox(label, state) end

--- Render a radio button
--- @param label string
--- @param active boolean
--- @return boolean clicked
function imgui.radioButton(label, active) end

--- Render a square button with color
--- @param descId string
--- @param r number
--- @param g number
--- @param b number
--- @param a number? optional
--- @param flags number? optional
--- @return boolean clicked
function imgui.colorButton(descId, r, g, b, a, flags) end

-- ============================================
-- INPUT
-- ============================================

--- Render text input
--- @param label string
--- @param text string
--- @param flags number? optional
--- @return boolean changed, string newValue
function imgui.inputText(label, text, flags) end

--- Render multiline text input
--- @param label string
--- @param text string
--- @param width number? optional
--- @param height number? optional
--- @param flags number? optional
--- @return boolean changed, string newValue
function imgui.inputTextMultiline(label, text, width, height, flags) end

--- Render integer input
--- @param label string
--- @param value number
--- @param step number? optional
--- @param stepFast number? optional
--- @param flags number? optional
--- @return boolean changed, number newValue
function imgui.inputInt(label, value, step, stepFast, flags) end

--- Render float input
--- @param label string
--- @param value number
--- @param step number? optional
--- @param stepFast number? optional
--- @param format string? optional
--- @param flags number? optional
--- @return boolean changed, number newValue
function imgui.inputFloat(label, value, step, stepFast, format, flags) end

--- Render double input
--- @param label string
--- @param value number
--- @param step number? optional
--- @param stepFast number? optional
--- @param format string? optional
--- @param flags number? optional
--- @return boolean changed, number newValue
function imgui.inputDouble(label, value, step, stepFast, format, flags) end

--- Render float2 input
--- @param label string
--- @param v1 number
--- @param v2 number
--- @param format string? optional
--- @return boolean changed, number v1, number v2
function imgui.inputFloat2(label, v1, v2, format) end

--- Render float3 input
--- @param label string
--- @param v1 number
--- @param v2 number
--- @param v3 number
--- @param format string? optional
--- @return boolean changed, number v1, number v2, number v3
function imgui.inputFloat3(label, v1, v2, v3, format) end

--- Render float4 input
--- @param label string
--- @param v1 number
--- @param v2 number
--- @param v3 number
--- @param v4 number
--- @param format string? optional
--- @return boolean changed, number v1, number v2, number v3, number v4
function imgui.inputFloat4(label, v1, v2, v3, v4, format) end

--- Render int2 input
--- @param label string
--- @param v1 number
--- @param v2 number
--- @return boolean changed, number v1, number v2
function imgui.inputInt2(label, v1, v2) end

--- Render int3 input
--- @param label string
--- @param v1 number
--- @param v2 number
--- @param v3 number
--- @return boolean changed, number v1, number v2, number v3
function imgui.inputInt3(label, v1, v2, v3) end

--- Render int4 input
--- @param label string
--- @param v1 number
--- @param v2 number
--- @param v3 number
--- @param v4 number
--- @return boolean changed, number v1, number v2, number v3, number v4
function imgui.inputInt4(label, v1, v2, v3, v4) end

-- ============================================
-- LAYOUT
-- ============================================

--- Move to same line
--- @param offsetFromStartX number? optional
--- @param spacing number? optional
function imgui.sameLine(offsetFromStartX, spacing) end

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
--- @param indentWidth number? optional
function imgui.indent(indentWidth) end

--- Decrease indentation
--- @param indentWidth number? optional
function imgui.unindent(indentWidth) end

-- ============================================
-- CURSOR POSITION
-- ============================================

--- Set cursor position
--- @param x number
--- @param y number
function imgui.setCursorPos(x, y) end

--- Get cursor position
--- @return number x, number y
function imgui.getCursorPos() end

--- Get cursor screen position
--- @return number x, number y
function imgui.getCursorScreenPos() end

-- ============================================
-- TREES
-- ============================================

--- Begin a tree node
--- @param label string
--- @return boolean isOpened
function imgui.treeNode(label) end

--- Begin a tree node (extended)
--- @param label string
--- @param flags number? optional
--- @return boolean isOpened
function imgui.treeNodeEx(label, flags) end

--- End tree node
function imgui.treePop() end

--- Render collapsing header
--- @param label string
--- @param flags number? optional
--- @return boolean isOpened
function imgui.collapsingHeader(label, flags) end

-- ============================================
-- SELECTABLES
-- ============================================

--- Render selectable
--- @param label string
--- @param selected boolean? optional
--- @param flags number? optional
--- @param width number? optional
--- @param height number? optional
--- @return boolean clicked, boolean selected
function imgui.selectable(label, selected, flags, width, height) end

-- ============================================
-- LISTS
-- ============================================

--- Render list box
--- @param label string
--- @param currentItem number
--- @param items table
--- @param heightInItems number? optional
--- @return number selectedIndex
function imgui.listBox(label, currentItem, items, heightInItems) end

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
--- @return boolean isOpened
function imgui.beginPopup(id, flags) end

--- Open popup
--- @param id string
--- @param flags number? optional
function imgui.openPopup(id, flags) end

--- Begin popup modal
--- @param name string
--- @param flags number? optional
--- @return boolean isOpened
function imgui.beginPopupModal(name, flags) end

--- End popup
function imgui.endPopup() end

--- Close current popup
function imgui.closeCurrentPopup() end

--- Check if popup is open
--- @param strId string
--- @param flags number? optional
--- @return boolean
function imgui.isPopupOpen(strId, flags) end

--- Open popup on item click
--- @param strId string? optional
--- @param mouseButton number? optional
function imgui.openPopupOnItemClick(strId, mouseButton) end

-- ============================================
-- MENUS
-- ============================================

--- Begin menu bar
--- @return boolean isOpened
function imgui.beginMenuBar() end

--- End menu bar
function imgui.endMenuBar() end

--- Begin main menu bar
--- @return boolean isOpened
function imgui.beginMainMenuBar() end

--- End main menu bar
function imgui.endMainMenuBar() end

--- Begin menu
--- @param label string
--- @param enabled boolean? optional
--- @return boolean isOpened
function imgui.beginMenu(label, enabled) end

--- End menu
function imgui.endMenu() end

--- Render menu item
--- @param label string
--- @param shortcut string? optional
--- @param selected boolean? optional
--- @param enabled boolean? optional
--- @return boolean clicked, boolean selected
function imgui.menuItem(label, shortcut, selected, enabled) end

-- ============================================
-- TABS
-- ============================================

--- Begin tab bar
--- @param id string
--- @param flags number? optional
--- @return boolean isOpened
function imgui.beginTabBar(id, flags) end

--- End tab bar
function imgui.endTabBar() end

--- Begin tab item
--- @param label string
--- @param flags number? optional
--- @return boolean isOpened
function imgui.beginTabItem(label, flags) end

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
--- @return boolean isOpened
function imgui.beginChild(id, width, height, border, flags) end

--- End child window
function imgui.endChild() end

-- ============================================
-- STYLE
-- ============================================

--- Push style color
--- @param idx number
--- @param r number
--- @param g number
--- @param b number
--- @param a number? optional
function imgui.pushStyleColor(idx, r, g, b, a) end

--- Pop style color
--- @param count number? optional
function imgui.popStyleColor(count) end

--- Push style variable
--- @param idx number
--- @param x number
--- @param y number? optional
function imgui.pushStyleVar(idx, x, y) end

--- Pop style variable
--- @param count number? optional
function imgui.popStyleVar(count) end

-- ============================================
-- FONT
-- ============================================

--- @buildSrc/src/main/java/com/nekiplay/neoscripts/init/InitInjectingClassVisitor.java fontObject


--- Create font object
--- @param path string
--- @param mergeMode boolean?
--- @param pixelSnapH boolean?
--- @param fontSize number
--- @param customRangesTable number[]?
--- @return fontObject
function imgui.createFontObject(path, mergeMode, pixelSnapH, fontSize, customRangesTable) end

--- Push font
--- @param font fontObject|userdata
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
--- @param pivotX number? optional
--- @param pivotY number? optional
function imgui.setNextWindowPos(x, y, cond, pivotX, pivotY) end

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
--- @return number width, number height
function imgui.getWindowSize() end

--- Get window position
--- @return number x, number y
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
--- @return boolean isOpened
function imgui.beginTable(id, columns, flags) end

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
--- @return boolean changed, number newValue
function imgui.sliderFloat(label, value, min, max, format, flags) end

--- Render int slider
--- @param label string
--- @param value number
--- @param min number
--- @param max number
--- @param format string? optional
--- @param flags number? optional
--- @return boolean changed, number newValue
function imgui.sliderInt(label, value, min, max, format, flags) end

--- Render float2 slider
--- @param label string
--- @param v1 number
--- @param v2 number
--- @param min number
--- @param max number
--- @param format string? optional
--- @return boolean changed, number v1, number v2
function imgui.sliderFloat2(label, v1, v2, min, max, format) end

--- Render float3 slider
--- @param label string
--- @param v1 number
--- @param v2 number
--- @param v3 number
--- @param min number
--- @param max number
--- @param format string? optional
--- @return boolean changed, number v1, number v2, number v3
function imgui.sliderFloat3(label, v1, v2, v3, min, max, format) end

--- Render float4 slider
--- @param label string
--- @param v1 number
--- @param v2 number
--- @param v3 number
--- @param v4 number
--- @param min number
--- @param max number
--- @param format string? optional
--- @return boolean changed, number v1, number v2, number v3, number v4
function imgui.sliderFloat4(label, v1, v2, v3, v4, min, max, format) end

--- Render angle slider
--- @param label string
--- @param vRad number
--- @param degreesMin number? optional
--- @param degreesMax number? optional
--- @return boolean changed, number newValueRad
function imgui.sliderAngle(label, vRad, degreesMin, degreesMax) end

--- Render vertical float slider
--- @param label string
--- @param sizeX number
--- @param sizeY number
--- @param value number
--- @param min number
--- @param max number
--- @param format string? optional
--- @param flags number? optional
--- @return boolean changed, number newValue
function imgui.vSliderFloat(label, sizeX, sizeY, value, min, max, format, flags) end

--- Render vertical int slider
--- @param label string
--- @param sizeX number
--- @param sizeY number
--- @param value number
--- @param min number
--- @param max number
--- @param format string? optional
--- @param flags number? optional
--- @return boolean changed, number newValue
function imgui.vSliderInt(label, sizeX, sizeY, value, min, max, format, flags) end

-- ============================================
-- DRAG
-- ============================================

--- Render float drag
--- @param label string
--- @param value number
--- @param speed number? optional
--- @param min number? optional
--- @param max number? optional
--- @param format string? optional
--- @return boolean changed, number newValue
function imgui.dragFloat(label, value, speed, min, max, format) end

--- Render float2 drag
--- @param label string
--- @param v1 number
--- @param v2 number
--- @param speed number? optional
--- @param min number? optional
--- @param max number? optional
--- @return boolean changed, number v1, number v2
function imgui.dragFloat2(label, v1, v2, speed, min, max) end

--- Render float3 drag
--- @param label string
--- @param v1 number
--- @param v2 number
--- @param v3 number
--- @param speed number? optional
--- @param min number? optional
--- @param max number? optional
--- @return boolean changed, number v1, number v2, number v3
function imgui.dragFloat3(label, v1, v2, v3, speed, min, max) end

--- Render float4 drag
--- @param label string
--- @param v1 number
--- @param v2 number
--- @param v3 number
--- @param v4 number
--- @param speed number? optional
--- @param min number? optional
--- @param max number? optional
--- @return boolean changed, number v1, number v2, number v3, number v4
function imgui.dragFloat4(label, v1, v2, v3, v4, speed, min, max) end

--- Render int drag
--- @param label string
--- @param value number
--- @param speed number? optional
--- @param min number? optional
--- @param max number? optional
--- @return boolean changed, number newValue
function imgui.dragInt(label, value, speed, min, max) end

--- Render int2 drag
--- @param label string
--- @param v1 number
--- @param v2 number
--- @param speed number? optional
--- @return boolean changed, number v1, number v2
function imgui.dragInt2(label, v1, v2, speed) end

--- Render int3 drag
--- @param label string
--- @param v1 number
--- @param v2 number
--- @param v3 number
--- @param speed number? optional
--- @return boolean changed, number v1, number v2, number v3
function imgui.dragInt3(label, v1, v2, v3, speed) end

--- Render int4 drag
--- @param label string
--- @param v1 number
--- @param v2 number
--- @param v3 number
--- @param v4 number
--- @param speed number? optional
--- @return boolean changed, number v1, number v2, number v3, number v4
function imgui.dragInt4(label, v1, v2, v3, v4, speed) end

--- Render float range drag
--- @param label string
--- @param vMin number
--- @param vMax number
--- @param speed number? optional
--- @param min number? optional
--- @param max number? optional
--- @return boolean changed, number vMin, number vMax
function imgui.dragFloatRange2(label, vMin, vMax, speed, min, max) end

--- Render int range drag
--- @param label string
--- @param vMin number
--- @param vMax number
--- @param speed number? optional
--- @param min number? optional
--- @param max number? optional
--- @return boolean changed, number vMin, number vMax
function imgui.dragIntRange2(label, vMin, vMax, speed, min, max) end

-- ============================================
-- COLOR EDITORS
-- ============================================

--- Render color edit (RGB)
--- @param label string
--- @param r number
--- @param g number
--- @param b number
--- @param flags number? optional
--- @return boolean changed, number r, number g, number b
function imgui.colorEdit3(label, r, g, b, flags) end

--- Render color edit (RGBA)
--- @param label string
--- @param r number
--- @param g number
--- @param b number
--- @param a number
--- @param flags number? optional
--- @return boolean changed, number r, number g, number b, number a
function imgui.colorEdit4(label, r, g, b, a, flags) end

--- Render color picker (RGB)
--- @param label string
--- @param r number
--- @param g number
--- @param b number
--- @param flags number? optional
--- @return boolean changed, number r, number g, number b
function imgui.colorPicker3(label, r, g, b, flags) end

--- Render color picker (RGBA)
--- @param label string
--- @param r number
--- @param g number
--- @param b number
--- @param a number
--- @param flags number? optional
--- @return boolean changed, number r, number g, number b, number a
function imgui.colorPicker4(label, r, g, b, a, flags) end

-- ============================================
-- COMBO BOXES
-- ============================================

--- Render combo box
--- @param label string
--- @param currentItem number
--- @param items table
--- @param heightInItems number? optional
--- @return boolean changed, number selectedIndex
function imgui.combo(label, currentItem, items, heightInItems) end

--- Begin combo box
--- @param label string
--- @param previewValue string
--- @param flags number? optional
--- @return boolean isOpened
function imgui.beginCombo(label, previewValue, flags) end

--- End combo box
function imgui.endCombo() end

-- ============================================
-- RADIO / PROGRESS
-- ============================================

--- Render progress bar
--- @param fraction number
--- @param sizeX number? optional
--- @param sizeY number? optional
--- @param overlay string? optional
function imgui.progressBar(fraction, sizeX, sizeY, overlay) end

-- ============================================
-- PLOTS
-- ============================================

--- Render plot lines
--- @param label string
--- @param values table
--- @param overlayText string? optional
--- @param scaleMin number? optional
--- @param scaleMax number? optional
--- @param graphW number? optional
--- @param graphH number? optional
function imgui.plotLines(label, values, overlayText, scaleMin, scaleMax, graphW, graphH) end

--- Render plot histogram
--- @param label string
--- @param values table
--- @param overlayText string? optional
--- @param scaleMin number? optional
--- @param scaleMax number? optional
--- @param graphW number? optional
--- @param graphH number? optional
function imgui.plotHistogram(label, values, overlayText, scaleMin, scaleMax, graphW, graphH) end

-- ============================================
-- SCROLLING
-- ============================================

--- Set scroll here Y
--- @param centerYRatio number? optional
function imgui.setScrollHereY(centerYRatio) end

--- Set scroll here X
--- @param centerXRatio number? optional
function imgui.setScrollHereX(centerXRatio) end

--- Get scroll Y
--- @return number
function imgui.getScrollY() end

--- Get scroll X
--- @return number
function imgui.getScrollX() end

--- Get scroll max Y
--- @return number
function imgui.getScrollMaxY() end

--- Get scroll max X
--- @return number
function imgui.getScrollMaxX() end

--- Set scroll Y
--- @param y number
function imgui.setScrollY(y) end

--- Set scroll X
--- @param x number
function imgui.setScrollX(x) end

-- ============================================
-- INPUT QUERIES
-- ============================================

--- Check if key is down
--- @param key number
--- @return boolean
function imgui.isKeyDown(key) end

--- Check if key is pressed
--- @param key number
--- @param repeat_ boolean? optional
--- @return boolean
function imgui.isKeyPressed(key, repeat_) end

--- Check if key is released
--- @param key number
--- @return boolean
function imgui.isKeyReleased(key) end

--- Check if mouse button is down
--- @param button number? optional
--- @return boolean
function imgui.isMouseDown(button) end

--- Check if mouse button is clicked
--- @param button number? optional
--- @param repeat_ boolean? optional
--- @return boolean
function imgui.isMouseClicked(button, repeat_) end

--- Check if mouse button is released
--- @param button number? optional
--- @return boolean
function imgui.isMouseReleased(button) end

--- Check if mouse button is double clicked
--- @param button number? optional
--- @return boolean
function imgui.isMouseDoubleClicked(button) end

--- Check if mouse is dragging
--- @param button number? optional
--- @param lockThreshold number? optional
--- @return boolean
function imgui.isMouseDragging(button, lockThreshold) end

--- Check if any mouse button is down
--- @return boolean
function imgui.isAnyMouseDown() end

--- Get mouse position
--- @return number x, number y
function imgui.getMousePos() end

--- Get mouse delta
--- @return number x, number y
function imgui.getMouseDelta() end

--- Get mouse drag delta
--- @param button number? optional
--- @param lockThreshold number? optional
--- @return number x, number y
function imgui.getMouseDragDelta(button, lockThreshold) end

-- ============================================
-- ITEM STATE
-- ============================================

--- Check if item is visible
--- @return boolean
function imgui.isItemVisible() end

--- Check if item is edited
--- @return boolean
function imgui.isItemEdited() end

--- Check if item is deactivated
--- @return boolean
function imgui.isItemDeactivated() end

--- Check if item is deactivated after edit
--- @return boolean
function imgui.isItemDeactivatedAfterEdit() end

--- Check if item is focused
--- @return boolean
function imgui.isItemFocused() end

--- Get item rect min
--- @return number x, number y
function imgui.getItemRectMin() end

--- Get item rect max
--- @return number x, number y
function imgui.getItemRectMax() end

--- Get item rect size
--- @return number x, number y
function imgui.getItemRectSize() end

-- ============================================
-- MISC UTILS
-- ============================================

--- Add dummy element
--- @param width number
--- @param height number
function imgui.dummy(width, height) end

--- Align text to frame padding
function imgui.alignTextToFramePadding() end

--- Get content region avail
--- @return number x, number y
function imgui.getContentRegionAvail() end

--- Get display size
--- @return number x, number y
function imgui.getDisplaySize() end

--- Get frame count
--- @return number
function imgui.getFrameCount() end

--- Get time
--- @return number
function imgui.getTime() end

--- Get font size
--- @return number
function imgui.getFontSize() end

--- Get text line height
--- @return number
function imgui.getTextLineHeight() end

--- Get text line height with spacing
--- @return number
function imgui.getTextLineHeightWithSpacing() end

--- Get frame height
--- @return number
function imgui.getFrameHeight() end

--- Get frame height with spacing
--- @return number
function imgui.getFrameHeightWithSpacing() end

-- ============================================
-- ADDITIONAL WINDOW MANIPULATION
-- ============================================

--- Set next window background alpha
--- @param alpha number
function imgui.setNextWindowBgAlpha(alpha) end

--- Set next window content size
--- @param width number
--- @param height number
function imgui.setNextWindowContentSize(width, height) end

--- Set window focus
--- @param name string? optional
function imgui.setWindowFocus(name) end

--- Set current window size
--- @param width number
--- @param height number
--- @param cond number? optional
function imgui.setWindowSize(width, height, cond) end

--- Set current window position
--- @param x number
--- @param y number
--- @param cond number? optional
function imgui.setWindowPos(x, y, cond) end

--- Set current window collapsed
--- @param collapsed boolean
--- @param cond number? optional
function imgui.setWindowCollapsed(collapsed, cond) end

-- ============================================
-- PATH API
-- ============================================

--- Clear path
--- @return boolean
function imgui.pathClear() end

--- Add line to path
--- @param x number
--- @param y number
--- @return boolean
function imgui.pathLineTo(x, y) end

--- Stroke path
--- @param color number
--- @param flags number? optional
--- @param thickness number? optional
--- @return boolean
function imgui.pathStroke(color, flags, thickness) end

-- ============================================
-- DRAW LIST (dl)
-- ============================================

--- Render text on draw list
--- @param x number
--- @param y number
--- @param text string
--- @param red number? optional 0-255
--- @param green number? optional 0-255
--- @param blue number? optional 0-255
--- @param alpha number? optional 0-255
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

--- Render image quad on draw list
--- @param textureID number
--- @param p1 table {x, y}
--- @param p2 table {x, y}
--- @param p3 table {x, y}
--- @param p4 table {x, y}
--- @param uvMinX number? optional
--- @param uvMinY number? optional
--- @param uvMaxX number? optional
--- @param uvMaxY number? optional
--- @param red number? optional
--- @param green number? optional
--- @param blue number? optional
--- @param alpha number? optional
--- @return boolean
function imgui.dl.renderImageQuad(textureID, p1, p2, p3, p4, uvMinX, uvMinY, uvMaxX, uvMaxY, red, green, blue, alpha) end

--- Render line on draw list
--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param red number? optional 0-255
--- @param green number? optional 0-255
--- @param blue number? optional 0-255
--- @param alpha number? optional 0-255
--- @param thickness number? optional
--- @return boolean
function imgui.dl.renderLine(x1, y1, x2, y2, red, green, blue, alpha, thickness) end

--- Render filled rectangle on draw list
--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param red number? optional 0-255
--- @param green number? optional 0-255
--- @param blue number? optional 0-255
--- @param alpha number? optional 0-255
--- @param rounding number? optional
--- @return boolean
function imgui.dl.renderFilledRect(x1, y1, x2, y2, red, green, blue, alpha, rounding) end

--- Render multi-color filled rectangle on draw list
--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param rUL number
--- @param gUL number
--- @param bUL number
--- @param aUL number
--- @param rUR number
--- @param gUR number
--- @param bUR number
--- @param aUR number
--- @param rBR number
--- @param gBR number
--- @param bBR number
--- @param aBR number
--- @param rBL number
--- @param gBL number
--- @param bBL number
--- @param aBL number
--- @return boolean
function imgui.dl.renderFilledRectMultiColor(x1, y1, x2, y2, rUL, gUL, bUL, aUL, rUR, gUR, bUR, aUR, rBR, gBR, bBR, aBR, rBL, gBL, bBL, aBL) end

--- Render rectangle on draw list
--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param red number? optional 0-255
--- @param green number? optional 0-255
--- @param blue number? optional 0-255
--- @param alpha number? optional 0-255
--- @param rounding number? optional
--- @return boolean
function imgui.dl.renderRect(x1, y1, x2, y2, red, green, blue, alpha, rounding) end

--- Render quad on draw list
--- @param p1x number
--- @param p1y number
--- @param p2x number
--- @param p2y number
--- @param p3x number
--- @param p3y number
--- @param p4x number
--- @param p4y number
--- @param red number? optional
--- @param green number? optional
--- @param blue number? optional
--- @param alpha number? optional
--- @param thickness number? optional
--- @return boolean
function imgui.dl.renderQuad(p1x, p1y, p2x, p2y, p3x, p3y, p4x, p4y, red, green, blue, alpha, thickness) end

--- Render filled quad on draw list
--- @param p1x number
--- @param p1y number
--- @param p2x number
--- @param p2y number
--- @param p3x number
--- @param p3y number
--- @param p4x number
--- @param p4y number
--- @param red number? optional
--- @param green number? optional
--- @param blue number? optional
--- @param alpha number? optional
--- @return boolean
function imgui.dl.renderFilledQuad(p1x, p1y, p2x, p2y, p3x, p3y, p4x, p4y, red, green, blue, alpha) end

--- Render triangle on draw list
--- @param p1x number
--- @param p1y number
--- @param p2x number
--- @param p2y number
--- @param p3x number
--- @param p3y number
--- @param red number? optional
--- @param green number? optional
--- @param blue number? optional
--- @param alpha number? optional
--- @param thickness number? optional
--- @return boolean
function imgui.dl.renderTriangle(p1x, p1y, p2x, p2y, p3x, p3y, red, green, blue, alpha, thickness) end

--- Render filled triangle on draw list
--- @param p1x number
--- @param p1y number
--- @param p2x number
--- @param p2y number
--- @param p3x number
--- @param p3y number
--- @param red number? optional
--- @param green number? optional
--- @param blue number? optional
--- @param alpha number? optional
--- @return boolean
function imgui.dl.renderFilledTriangle(p1x, p1y, p2x, p2y, p3x, p3y, red, green, blue, alpha) end

--- Render circle on draw list
--- @param cx number
--- @param cy number
--- @param radius number
--- @param red number? optional
--- @param green number? optional
--- @param blue number? optional
--- @param alpha number? optional
--- @param numSegments number? optional
--- @param thickness number? optional
--- @return boolean
function imgui.dl.renderCircle(cx, cy, radius, red, green, blue, alpha, numSegments, thickness) end

--- Render filled circle on draw list
--- @param cx number
--- @param cy number
--- @param radius number
--- @param red number? optional
--- @param green number? optional
--- @param blue number? optional
--- @param alpha number? optional
--- @param numSegments number? optional
--- @return boolean
function imgui.dl.renderFilledCircle(cx, cy, radius, red, green, blue, alpha, numSegments) end

--- Render n-gon on draw list
--- @param cx number
--- @param cy number
--- @param radius number
--- @param numSegments number
--- @param red number? optional
--- @param green number? optional
--- @param blue number? optional
--- @param alpha number? optional
--- @param thickness number? optional
--- @return boolean
function imgui.dl.renderNgon(cx, cy, radius, numSegments, red, green, blue, alpha, thickness) end

--- Render filled n-gon on draw list
--- @param cx number
--- @param cy number
--- @param radius number
--- @param numSegments number
--- @param red number? optional
--- @param green number? optional
--- @param blue number? optional
--- @param alpha number? optional
--- @return boolean
function imgui.dl.renderFilledNgon(cx, cy, radius, numSegments, red, green, blue, alpha) end

--- Render ellipse on draw list
--- @param cx number
--- @param cy number
--- @param rx number
--- @param ry number
--- @param red number? optional
--- @param green number? optional
--- @param blue number? optional
--- @param alpha number? optional
--- @param rot number? optional
--- @param numSegments number? optional
--- @param thickness number? optional
--- @return boolean
function imgui.dl.renderEllipse(cx, cy, rx, ry, red, green, blue, alpha, rot, numSegments, thickness) end

--- Render filled ellipse on draw list
--- @param cx number
--- @param cy number
--- @param rx number
--- @param ry number
--- @param red number? optional
--- @param green number? optional
--- @param blue number? optional
--- @param alpha number? optional
--- @param rot number? optional
--- @param numSegments number? optional
--- @return boolean
function imgui.dl.renderFilledEllipse(cx, cy, rx, ry, red, green, blue, alpha, rot, numSegments) end

--- Render cubic bezier on draw list
--- @param p1x number
--- @param p1y number
--- @param p2x number
--- @param p2y number
--- @param p3x number
--- @param p3y number
--- @param p4x number
--- @param p4y number
--- @param red number? optional
--- @param green number? optional
--- @param blue number? optional
--- @param alpha number? optional
--- @param thickness number? optional
--- @param numSegments number? optional
--- @return boolean
function imgui.dl.renderBezierCubic(p1x, p1y, p2x, p2y, p3x, p3y, p4x, p4y, red, green, blue, alpha, thickness, numSegments) end

--- Render quadratic bezier on draw list
--- @param p1x number
--- @param p1y number
--- @param p2x number
--- @param p2y number
--- @param p3x number
--- @param p3y number
--- @param red number? optional
--- @param green number? optional
--- @param blue number? optional
--- @param alpha number? optional
--- @param thickness number? optional
--- @param numSegments number? optional
--- @return boolean
function imgui.dl.renderBezierQuadratic(p1x, p1y, p2x, p2y, p3x, p3y, red, green, blue, alpha, thickness, numSegments) end

--- Render polyline on draw list
--- @param points table list of {x, y}
--- @param red number? optional
--- @param green number? optional
--- @param blue number? optional
--- @param alpha number? optional
--- @param flags number? optional
--- @param thickness number? optional
--- @return boolean
function imgui.dl.renderPolyline(points, red, green, blue, alpha, flags, thickness) end

--- Render filled convex polygon on draw list
--- @param points table list of {x, y}
--- @param red number? optional
--- @param green number? optional
--- @param blue number? optional
--- @param alpha number? optional
--- @return boolean
function imgui.dl.renderFilledConvexPolygon(points, red, green, blue, alpha) end

--- Push clip rect
--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param intersect boolean? optional
function imgui.dl.pushClipRect(x1, y1, x2, y2, intersect) end

--- Push full screen clip rect
function imgui.dl.pushClipRectFullScreen() end

--- Pop clip rect
function imgui.dl.popClipRect() end

--- Push texture ID
--- @param textureID number
function imgui.dl.pushTextureID(textureID) end

--- Pop texture ID
function imgui.dl.popTextureID() end

--- Render polygon on draw list
--- @param points table
--- @param red number? optional 0-255
--- @param green number? optional 0-255
--- @param blue number? optional 0-255
--- @param alpha number? optional 0-255
--- @return boolean
function imgui.dl.renderPolygon(points, red, green, blue, alpha) end

return imgui
