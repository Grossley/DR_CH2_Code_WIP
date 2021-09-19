if gml_Script_i_ex(131)
{
    with (obj_readable_room1)
    {
        if (visible == true)
        {
            image_speed = 0.25
            if (direction >= 136 && direction <= 225)
                image_xscale = 2
            if (direction >= 306 || direction <= 45)
                image_xscale = -2
            if (sprite_index == spr_tasque_idle_overworld)
                depth = (y > 350 ? (obj_mainchara.depth - 100) : (obj_mainchara.depth + 100))
            else
                gml_Script_scr_depth()
        }
    }
}
if (howl_con == 1 && (!gml_Script_d_ex()))
{
    howl_con = 0
    gml_Script_snd_play(207)
}
