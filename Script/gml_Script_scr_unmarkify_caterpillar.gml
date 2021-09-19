var _temp_local_var_1, _temp_local_var_2, _temp_local_var_5, _temp_local_var_8, _temp_local_var_13;
for (i = 0; i < 2; i += 1)
{
    if gml_Script_i_ex(global.cinstance[i])
    {
        if (global.char[(i + 1)] == 2)
        {
            if (global.cinstance[i].x != s.x || global.cinstance[i].y != s.x)
            {
                global.cinstance[i].x = s.x
                global.cinstance[i].y = (s.y + 10)
                var _temp_local_var_2 = global.cinstance[i]
                gml_Script_scr_caterpillar_interpolate()
            }
            var _temp_local_var_5 = global.cinstance[i]
            if (global.facing == 0)
                sprite_index = dsprite
            if (global.facing == 1)
                sprite_index = rsprite
            if (global.facing == 2)
                sprite_index = usprite
            if (global.facing == 3)
                sprite_index = lsprite
            visible = true
        }
        if (global.char[(i + 1)] == 3)
        {
            if (global.cinstance[i].x != r.x || global.cinstance[i].y != r.x)
            {
                global.cinstance[i].x = r.x
                global.cinstance[i].y = (r.y + 10)
                var _temp_local_var_8 = global.cinstance[i]
                gml_Script_scr_caterpillar_interpolate()
            }
            var _temp_local_var_13 = global.cinstance[i]
            if (global.facing == 0)
                sprite_index = dsprite
            if (global.facing == 1)
                sprite_index = rsprite
            if (global.facing == 2)
                sprite_index = usprite
            if (global.facing == 3)
                sprite_index = lsprite
            visible = true
        }
    }
}
return;
