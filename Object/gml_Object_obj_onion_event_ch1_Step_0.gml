var _temp_local_var_2, _temp_local_var_3, _temp_local_var_5;
if instance_exists(obj_mainchara_ch1)
{
    if (onioncount > 0)
        onioncount -= 1
    if (global.flag[258] == 0)
    {
        if (onioncount >= 200 && con == 0 && global.flag[258] == 0)
        {
            global.flag[258] = 1
            onioncount = 1
            global.facing = 1
            con = 1
            alarm[4] = 10
            global.interact = 1
        }
    }
    if (con == 2)
    {
        var _temp_local_var_2 = onion
        on = 1
    }
    if (con == 4)
    {
        global.facing = 1
        var _temp_local_var_3 = onion
        on = 2
    }
    if (con == 6)
    {
        global.fc = 0
        global.typer = 5
        global.msc = 195
        gml_Script_scr_text_ch1(global.msc)
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 7
    }
    if (con == 7 && (!gml_Script_d_ex_ch1()))
    {
        global.interact = 1
        onion.on = 4
        con = 8
        alarm[4] = 150
    }
    if (con == 9)
    {
        var _temp_local_var_5 = onion
        instance_destroy()
    }
}
