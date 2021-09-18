var _temp_local_var_2, _temp_local_var_3;
if (con == 1 && global.interact == 0)
{
    if (obj_mainchara_ch1.y <= 160)
    {
        global.interact = 1
        a = obj_npc_facing_ch1
        var _temp_local_var_2 = a
        facing = 0
        dfacing = 0
        sprite_index = spr_alphysd_ch1
    }
}
if (con == 3)
{
    var _temp_local_var_3 = exc
    instance_destroy()
}
if (con == 4 && (!gml_Script_d_ex_ch1()))
{
    global.interact = 0
    global.flag[269] = 1
    con = 5
}
