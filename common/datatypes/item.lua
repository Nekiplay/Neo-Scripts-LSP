--- @meta

--- @class enchantments
--- @field name string -- Enchantment name
--- @field level number -- Enchantment level

--- @class item_profile_property
--- @field name string Property name, e.g. "textures"
--- @field value string Property value (base64 texture data)
--- @field signature string? Property signature, empty for unsigned inline profiles

--- @class item_profile
--- @field id integer[] UUID split into 4 integers
--- @field name string Profile name
--- @field properties item_profile_property[] Profile properties (writable: unsigned "textures" properties pointing to textures.minecraft.net are trusted)

--- @class item
--- @field blockstate block? Block data
--- @field id integer Item id
--- @field identifier string Block translation id like "minecraft:lever"
--- @field tranlation_id string Block translation id like "item.minecraft.lever"
--- @field translation_id string Alias for tranlation_id
--- @field count number Item count (writable, clamped to 1..max_count)
--- @field max_count number Item maximum count
--- @field name string Item name
--- @field display_name string Item formatted name (writable via string, nil removes the custom name)
--- @field is_empty boolean Check if item is empty
--- @field head_texture string? Return string if item its head and this has texture
--- @field skyblock_id string? Return string if has Hypixel SkyBlock Id
--- @field neu_id string? Return string if has NotEgnoughtUpdates Id
--- @field reforge_modifier string? Return string item has reforge on Hypixel SkyBlock
--- @field is_stackable boolean Check if item stackable
--- @field is_recombobulated boolean Check if item recombobulated on Hypixel SkyBlock
--- @field is_museum_donated boolean Check if item donated to museum on Hypixel SkyBlock
--- @field is_enchanted boolean Check if item has glinth effect
--- @field uuid string Item uuid on Hypixel SkyBlock
--- @field map map? Data for working with the “Map” subject
--- @field lore string[] Item lore (writable via table of strings)
--- @field enchantments enchantments[] Item enchantments
--- @field hypixel_enchantments enchantments[] Hypixel SkyBlock Item enchantments
--- @field profile item_profile? Player head profile (readable and writable)
--- @field nbt string Item nbt
--- @field is_sword boolean Check if Item is sword
--- @field is_pickaxe boolean Check if Item is pickaxe
--- @field is_axe boolean Check if Item is axe
--- @field is_hoe boolean Check if Item is hoe
--- @field is_shovel boolean Check if Item is shovel
--- @field is_map boolean Check if Item is map
--- @field is_trident boolean Check if Item is trident
--- @field is_instrument boolean Check if Item is instrument
--- @field is_shield boolean Check if Item is shield
--- @field is_shears boolean Check if Item is shears
--- @field is_mace boolean Check if Item is mace
--- @field is_fishing_rod boolean Check if Item is fishing rod
--- @field is_block boolean Check if Item is block
--- Any unknown key reads/writes a custom variable stored in the CUSTOM_DATA component.
--- Custom variables are automatically synced between client and server together with the ItemStack.
--- Values can be boolean / integer / number / string / table (converted to NBT).
--- @field [string] boolean|integer|number|string|table
local item = {}

--- @param block block
--- @return boolean
function item.is_correct_tool(block) end
