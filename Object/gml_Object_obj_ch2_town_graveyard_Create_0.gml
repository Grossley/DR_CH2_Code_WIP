con = -1
if (global.chapter != 2)
    instance_destroy()
else
{
    var alvin_npc = gml_Script_instance_create(87, 50, obj_npc_room)
    alvin_npc.sprite_index = spr_npc_alvin_back
    with (alvin_npc)
        gml_Script_scr_depth()
}
