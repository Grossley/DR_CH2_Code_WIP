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
                with (global.cinstance[i])
                    gml_Script_scr_caterpillar_interpolate()
            }
            with (global.cinstance[i])
            {
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
        if (global.char[(i + 1)] == 3)
        {
            if (global.cinstance[i].x != r.x || global.cinstance[i].y != r.x)
            {
                global.cinstance[i].x = r.x
                global.cinstance[i].y = (r.y + 10)
                with (global.cinstance[i])
                    gml_Script_scr_caterpillar_interpolate()
            }
            with (global.cinstance[i])
            {
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
}
return;
