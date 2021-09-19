var _temp_local_var_1, _temp_local_var_4;
con = -1
if (global.plot < 100)
{
    capntalked = 0
    sweetnpc = gml_Script_instance_create(210, 100, obj_npc_room_animated)
    sweetnpc.sprite_index = spr_npc_sweet
    var _temp_local_var_1 = sweetnpc
    gml_Script_scr_depth()
}
else
{
    plugboy_npc = gml_Script_instance_create(288, 144, obj_npc_room)
    plugboy_npc.sprite_index = spr_npc_plugboy_bandana
    var _temp_local_var_4 = plugboy_npc
    gml_Script_scr_depth()
}
