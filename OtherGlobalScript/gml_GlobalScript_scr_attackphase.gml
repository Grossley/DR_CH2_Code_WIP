with (obj_battlecontroller)
{
    techwon = false
    if (gml_Script_scr_monsterpop() == 0)
        techwon = true
    if (global.chapter == 2 && gml_Script_i_ex(obj_berdlyb_enemy) && obj_berdlyb_enemy.endcon == 1)
        techwon = true
    else if (techwon == true)
        gml_Script_scr_wincombat()
    if (techwon == false)
    {
        for (__hiti = 0; __hiti < 3; __hiti++)
            global.hittarget[__hiti] = 0
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
            gml_Script_instance_create((xx + 2), (yy + 365), obj_attackpress)
        }
        else
        {
            global.myfight = 4
            gml_Script_instance_create(0, 0, obj_spellphase)
        }
    }
}
return;
