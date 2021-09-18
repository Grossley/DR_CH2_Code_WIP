if (myinteract == 3)
{
    if (mydialoguer == 0)
    {
        if (egcon == 1)
            egcon = 2
        if (egcon == 2)
        {
            egtimer += 1
            sprite_index = spr_tem_eggput_ch1
            image_index = (egtimer / 10)
            if (egtimer >= 60)
            {
                sprite_index = spr_tem_sit_ch1
                egg = gml_Script_scr_marker_ch1((x + 29), (y + 3), 3507)
                egg.depth = depth
                egcon = 3
            }
        }
        if (egcon == 3 || egcon == 0)
        {
            global.interact = 0
            myinteract = 0
            with (obj_mainchara_ch1)
                onebuffer = 5
        }
    }
}
if (egcon != 2)
{
    if (myinteract == 0)
    {
        facing = dfacing
        image_speed = 0
    }
    // WARNING: Popz'd an empty stack.
}
