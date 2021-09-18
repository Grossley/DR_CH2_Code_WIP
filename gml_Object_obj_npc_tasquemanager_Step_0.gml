var _temp_local_var_1, _temp_local_var_2;
if (myinteract == 1)
{
}
else
    var _temp_local_var_2 = 0
myinteract = 0
if (con == 1)
{
}
else
    var _temp_local_var_1 = 0
if 1261
{
    with (obj_tasquepainting)
        tasquespawn = 1
}
con = 2
alarm[4] = 35
if (con == 3)
{
    marker2.depth = -1
    depth = -2
    encounterflag = 542
    global.flag[54] = encounterflag
    global.flag[9] = 2
    gml_Script_scr_battle(57, 0, marker2, id, 0)
    gml_Script_instance_create(x, y, obj_tasque_manager_tempsave)
    con = 4
    if 1261
    {
        with (obj_tasquepainting)
            image_index = 1
    }
}
