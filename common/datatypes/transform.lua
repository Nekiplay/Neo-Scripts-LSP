--- @meta

---Transformation for display entities (text_display, item_display, block_display):
---translation, scale and rotation. Created via creator.createTransform(...).
---Assign to entity.transformation to apply.
--- @class transform
--- @field translation {x: number, y: number, z: number} Offset in blocks (writable)
--- @field offset {x: number, y: number, z: number} Alias for translation (writable)
--- @field scale {x: number, y: number, z: number} Scale multiplier per axis (writable)
--- @field rotation {x: number, y: number, z: number} Rotation in degrees per axis (writable)
--- @field rotation_degrees {x: number, y: number, z: number} Alias for rotation (writable)
local transform = {}
