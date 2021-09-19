swatch_npc_a = gml_Script_instance_create(135, 285, obj_npc_butler)
with (swatch_npc_a)
{
    sprite_index = spr_npc_swatchling_up
    gml_Script_scr_depth()
    current_pal = yellow
}
swatch_npc_b = gml_Script_instance_create(265, 255, obj_npc_butler)
with (swatch_npc_b)
{
    sprite_index = spr_npc_swatchling_up
    gml_Script_scr_depth()
}
swatch_npc_c = gml_Script_instance_create(395, 285, obj_npc_butler)
with (swatch_npc_c)
{
    sprite_index = spr_npc_swatchling_up
    gml_Script_scr_depth()
    current_pal = orange
}
projection = gml_Script_instance_create(240, 180, obj_readable_room1)
projection.image_xscale = 8
projection.image_yscale = 1.5
