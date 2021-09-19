if (pcon == 0 && global.interact == 0)
{
    var _temp_local_var_2 = puzzle
    if (suit[0] == 4)
    {
        var _temp_local_var_3 = puzzle
        if (suit[1] == 1)
        {
            var _temp_local_var_4 = puzzle
            var _temp_local_var_5 = (suit[2] == 2 && global.flag[234] == 0)
        }
        else
            _temp_local_var_5 = 0
    }
    else
        _temp_local_var_5 = 0
    if 0
    {
        var _temp_local_var_6 = blockn
        instance_destroy()
    }
}
if (pcon == 1)
{
    ptimer = 0
    gml_Script_snd_play_ch1(446)
    gml_Script_instance_create_ch1(0, 0, 1464)
    pcon = 2
}
if (pcon == 2)
{
    ptimer += 1
    if (ptimer >= 20)
    {
        ptimer = 0
        pcon = 0
        global.interact = 0
    }
}
if (con == 0 && global.interact == 0)
{
    if (obj_mainchara_ch1.y <= 80)
    {
        global.facing = 0
        var _temp_local_var_10 = global.cinstance[0]
        fun = true
        sprite_index = dsprite
    }
}
if (con == 1)
{
    if (cmarker.y <= 280)
    {
        var _temp_local_var_13 = cmarker
        gml_Script_scr_depth_ch1()
    }
}
if (con == 2)
{
    var _temp_local_var_14 = cmarker
    gml_Script_scr_halt_ch1()
}
if (con == 3 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_16 = global.cinstance[0]
    fun = false
}
