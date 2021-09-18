var lancer_npc, rudinn_npc, _temp_local_var_3, _temp_local_var_4, _temp_local_var_7;
con = -1
cutscene_master = -4
leaveCounter = 0
if (global.chapter != 2)
    // WARNING: Popz'd an empty stack.
else if (global.plot >= 200 && global.flag[387] == 1)
{
    if (global.flag[388] == 1 || 2 == 0)
    {
        var queen_npc = gml_Script_instance_create(1054, 175, obj_npc_sign)
        queen_npc.sprite_index = spr_queen_walk_up
        queen_npc.image_speed = 0
        var _temp_local_var_3 = queen_npc
    }
    else if (2 >= 9)
    {
        queen_npc = gml_Script_instance_create(990, 225, obj_npc_sign)
        queen_npc.sprite_index = spr_npc_queen_relax
        queen_npc.image_speed = 0
        var _temp_local_var_4 = queen_npc
    }
    else
    {
        queen_npc = gml_Script_instance_create(1054, 175, obj_npc_facing)
        var _temp_local_var_7 = queen_npc
    }
}
