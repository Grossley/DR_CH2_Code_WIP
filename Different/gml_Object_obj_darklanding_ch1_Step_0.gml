if (con == 2)
{
    with (obj_mainchara_ch1)
    {
        sprite_index = spr_krisd_dark_ch1
        fun = false
        global.facing = 0
    }
    global.interact = 0
    con = 3
    global.flag[7] = 0
    if (global.plot < 16)
        global.plot = 16
    scr_tempsave_ch1()
}
