con = -1
cutscene_master = -4
leaveCounter = 0
susiewaiting = 0
nisesusie = -1
susxpos = 0
susypos = 0
if (global.chapter != 2)
    instance_destroy()
else
{
    alphys = gml_Script_instance_create(150, 100, obj_npc_sign)
    alphys.sprite_index = spr_alphysd
    alphysbike = gml_Script_instance_create(177, 110, obj_npc_sign)
    alphysbike.sprite_index = spr_npc_alphys_bike_broken
    if (global.flag[336] == 1)
    {
        nisesusie = gml_Script_scr_marker(310, 125, 849)
        var _temp_local_var_1 = nisesusie
        gml_Script_scr_depth()
    }
}
