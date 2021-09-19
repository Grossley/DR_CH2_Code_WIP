con = -1
customcon = 0
explodetimer = 0
wineglasscon = 0
if (global.plot < 100)
{
    statuenpc = gml_Script_instance_create(1232, 30, obj_npc_sign)
    statuenpc.sprite_index = spr_cutscene_13_berdly_statue
}
else
{
    swatchling_npc_a = gml_Script_instance_create(1232, 30, obj_npc_room_animated)
    with (swatchling_npc_a)
    {
        sprite_index = spr_npc_swatchling_sweep
        gml_Script_scr_depth()
        image_speed = 0.1
    }
    swatchling_npc_b = gml_Script_instance_create(1375, 110, obj_npc_room_animated)
    with (swatchling_npc_b)
    {
        sprite_index = spr_npc_swatchling_sweep
        gml_Script_scr_depth()
        image_speed = 0.1
    }
}
if (global.chapter != 2 || global.plot >= 75)
    instance_destroy()
else
{
    statuenpc.visible = false
    boxhead = gml_Script_scr_dark_marker(0, 0, 103)
    boxhead.visible = false
    glassexplosion = gml_Script_instance_create(0, 0, obj_marker)
    glassexplosion.sprite_index = spr_realisticexplosion
    glassexplosion.visible = false
    noellebox = gml_Script_instance_create(970, 216, obj_marker)
    noellebox.sprite_index = spr_cutscene_13_noelle_box_walk_right
    noellebox.visible = false
    noellebox.image_speed = 0
    noellebox.image_xscale = 2
    noellebox.image_yscale = 2
    with (noellebox)
        gml_Script_scr_depth()
    noellelost = 0
}
