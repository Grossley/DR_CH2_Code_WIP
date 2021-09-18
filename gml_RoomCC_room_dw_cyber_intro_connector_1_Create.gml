var _temp_local_var_1;
if (global.plot < 51)
{
    extflag = "npc2"
    sprite_index = spr_plugboy_cower
    // WARNING: Popz'd an empty stack.
}
else
{
    var plugboy_npc = gml_Script_instance_create(x, y, obj_npc_room)
    plugboy_npc.sprite_index = spr_npc_plugboy
    var _temp_local_var_1 = plugboy_npc
}
