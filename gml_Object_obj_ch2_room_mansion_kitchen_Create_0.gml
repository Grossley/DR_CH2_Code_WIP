var _temp_local_var_3;
con = -1
for (var i = 0; i < 26; i++)
{
    var timer_sprite = ((i % 3) == 1 ? 3210 : 3209)
    var timer = gml_Script_scr_marker((120 + (i * 40)), 40, timer_sprite)
    timer.image_speed = 0.1
    timer.depth = 900000
}
swatchling_npc_a = gml_Script_instance_create(790, 93, obj_npc_swatchling_scared)
var _temp_local_var_3 = swatchling_npc_a
gml_Script_scr_depth()
sprite_index = (global.flag[362] == 0 ? spr_npc_swatchling_scared : spr_npc_swatchling_down)
image_speed = 0.25
current_pal = yellow
