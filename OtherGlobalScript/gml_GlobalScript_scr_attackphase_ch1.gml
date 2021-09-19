with (obj_battlecontroller_ch1)
{
    techwon = false
    if (gml_Script_scr_monsterpop_ch1() == 0)
        techwon = true
    if (techwon == false)
    {
        fightphase = 1
        global.charturn = 3
        if (global.charaction[0] == 4 || global.charaction[0] == 2)
            fightphase = 0
        if (global.charaction[1] == 4 || global.charaction[1] == 2)
            fightphase = 0
        if (global.charaction[2] == 4 || global.charaction[2] == 2)
            fightphase = 0
        if (global.myfight == 4)
            fightphase = 1
        if (fightphase == 1)
        {
            global.myfight = 1
            gml_Script_instance_create_ch1((xx + 2), (yy + 365), 1511)
        }
        else
        {
            global.myfight = 4
            gml_Script_instance_create_ch1(0, 0, 1625)
        }
    }
    else
        gml_Script_scr_wincombat_ch1()
}
return;
