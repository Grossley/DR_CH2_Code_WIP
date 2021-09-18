var icewolf_npc, table_bottom, _temp_local_var_1;
con = -1
if (global.chapter != 2)
    // WARNING: Popz'd an empty stack.
else
{
    var burgerpants_npc = gml_Script_instance_create(234, 91, obj_npc_room)
    burgerpants_npc.sprite_index = spr_burgerpants_sit_phone
    burgerpants_npc.depth = 100
    var napkins = gml_Script_scr_marker(212, 118, 2957)
    napkins.depth = (burgerpants_npc.depth - 10)
    var nicecream_npc = gml_Script_instance_create(77, 52, obj_npc_room)
    nicecream_npc.sprite_index = spr_npc_nicecream_mop
    var _temp_local_var_1 = nicecream_npc
}
