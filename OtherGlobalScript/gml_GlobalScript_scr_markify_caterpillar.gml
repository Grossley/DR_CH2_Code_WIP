var _temp_local_var_1, _temp_local_var_2;
s = 4378473
r = 4387437
for (i = 0; i < 2; i += 1)
{
    if gml_Script_i_ex(global.cinstance[i])
    {
        if (global.char[(i + 1)] == 2)
        {
            s = gml_Script_scr_dark_marker(global.cinstance[i].x, global.cinstance[i].y, global.cinstance[i].sprite_index)
            var _temp_local_var_1 = global.cinstance[i]
            visible = false
        }
        if (global.char[(i + 1)] == 3)
        {
            r = gml_Script_scr_dark_marker(global.cinstance[i].x, global.cinstance[i].y, global.cinstance[i].sprite_index)
            var _temp_local_var_2 = global.cinstance[i]
            visible = false
        }
    }
}
return;