var _temp_local_var_1, _temp_local_var_4;
con = -1
customcon = 0
timer = 0
forceend2 = 0
shortened = 0
if (gml_Script_scr_sideb_get_phase() >= 3)
    instance_destroy()
else if (global.chapter != 2)
    instance_destroy()
else if (global.plot >= 165)
{
    var savepoint = gml_Script_instance_create(905, 40, obj_savepoint)
    var _temp_local_var_1 = savepoint
    gml_Script_scr_depth()
}
else
{
    if (global.tempflag[31] == 1)
        shortened = 1
    berdlynpc = gml_Script_instance_create(895, 228, obj_npc_sign)
    berdlynpc.sprite_index = (global.flag[457] == 1 ? spr_berdly_hurt_kneel : spr_berdly_hurt_kneel_burnt)
    var _temp_local_var_4 = berdlynpc
    gml_Script_scr_depth()
}
