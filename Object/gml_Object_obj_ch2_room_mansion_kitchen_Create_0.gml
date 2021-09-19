con = -1
for (var i = 0; i < 26; i++)
{
    var timer_sprite = ((i % 3) == 1 ? 3210 : 3209)
    var timer = gml_Script_scr_marker((120 + (i * 40)), 40, timer_sprite)
    timer.image_speed = 0.1
    timer.depth = 900000
}
swatchling_npc_a = gml_Script_instance_create(790, 93, obj_npc_swatchling_scared)
with (swatchling_npc_a)
{
    gml_Script_scr_depth()
    sprite_index = (global.flag[362] == 0 ? spr_npc_swatchling_scared : spr_npc_swatchling_down)
    image_speed = 0.25
    current_pal = yellow
}
swatchling_npc_b = gml_Script_instance_create(550, 150, obj_npc_swatchling_scared)
with (swatchling_npc_b)
{
    gml_Script_scr_depth()
    sprite_index = spr_npc_swatchling_scared
    image_speed = 0.25
}
swatchling_npc_c = gml_Script_instance_create(675, 4, obj_npc_swatchling_scared)
with (swatchling_npc_c)
{
    gml_Script_scr_depth()
    sprite_index = spr_npc_swatchling_scared
    current_pal = red
    image_speed = 0.25
}
cheese_a = gml_Script_scr_dark_marker(15, 150, 2380)
with (cheese_a)
{
    image_index = global.flag[362]
    gml_Script_scr_depth()
}
cheese_b = gml_Script_scr_dark_marker(55, 210, 2380)
with (cheese_b)
{
    image_index = global.flag[362]
    gml_Script_scr_depth()
}
cheese_c = gml_Script_scr_dark_marker(15, 260, 2380)
with (cheese_c)
{
    image_index = global.flag[362]
    gml_Script_scr_depth()
}
if (global.flag[362] == 0)
{
    mouse_a = gml_Script_scr_dark_marker(50, cheese_a.y, 1741)
    with (mouse_a)
        image_speed = 0.25
    mouse_a.depth = (cheese_a.depth - 10)
    mouse_b = gml_Script_scr_dark_marker(90, cheese_b.y, 1741)
    with (mouse_b)
        image_speed = 0.25
    mouse_b.depth = (cheese_b.depth - 10)
    mouse_c = gml_Script_scr_dark_marker(50, cheese_c.y, 1741)
    with (mouse_c)
        image_speed = 0.25
    mouse_c.depth = (cheese_c.depth - 10)
    whiteall = gml_Script_scr_marker(-10, -10, 2529)
    whiteall.image_xscale = 999
    whiteall.image_yscale = 999
    whiteall.depth = 0
    whiteall.image_alpha = 0
    fade_timer = 0
    mauswheel = -4
}
