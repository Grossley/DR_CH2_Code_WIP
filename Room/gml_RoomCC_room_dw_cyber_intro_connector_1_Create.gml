if (global.plot < 51)
{
    extflag = "npc2"
    sprite_index = spr_plugboy_cower
    gml_Script_scr_depth()
}
else
{
    var plugboy_npc = gml_Script_instance_create(x, y, obj_npc_room)
    plugboy_npc.sprite_index = spr_npc_plugboy
    with (plugboy_npc)
        gml_Script_scr_depth()
    instance_destroy()
}
