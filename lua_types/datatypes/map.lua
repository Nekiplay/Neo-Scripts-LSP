--- @meta

--- @class map
--- @field scale number
--- @field locked boolean
--- @field tracking_position boolean
--- @field unlimited_tracking boolean
--- @field dimension string
--- @field center_x number
--- @field center_z number
--- @field is_exploration_map boolean
--- @field tracked_decoration_count number
---
local map = {}

--- @class banner
--- @field id number
--- @field name string
--- @field color string
--- @field x number
--- @field y number
--- @field z number

--- @return banner[]
function map.banners() end

--- @class decoration
--- @field type string
--- @field rot number
--- @field x number
--- @field y number
--- @field z number

--- @return decoration[]
function map.decorations() end

--- @class frame_markers
--- @field id number
--- @field entity_id number
--- @field x number
--- @field y number
--- @field z number
--- @field rotation number

--- @return frame_markers[]
function map.frame_markers() end

--- @class color_data
--- @field value number

--- @return color_data[][]
function map.color_data() end
