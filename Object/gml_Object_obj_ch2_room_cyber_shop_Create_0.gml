var _temp_local_var_1;
if (global.plot < 100)
{
    plugboy_npc = gml_Script_instance_create(420, 270, obj_npc_room)
    plugboy_npc.sprite_index = spr_npc_plugboy_bandana
    var _temp_local_var_1 = plugboy_npc
    gml_Script_scr_depth()
}
else
    instance_destroy()
