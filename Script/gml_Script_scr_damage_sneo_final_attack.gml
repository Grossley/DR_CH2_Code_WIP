if (global.inv < 0)
{
    var __element = 0
    if variable_instance_exists(id, "element")
    {
        if is_real(element)
            __element = element
    }
    if (target < 3)
    {
        if (global.hp[global.char[target]] <= 0)
        {
            gml_Script_scr_randomtarget_old()
            target = mytarget
            with (global.charinstance[target])
            {
                image_blend = c_white
                darkify = false
            }
        }
    }
    var __remtarget = -1
    if (target == 4)
    {
        __remtarget = 4
        gml_Script_scr_randomtarget_old()
        target = mytarget
        if ((global.hp[global.char[target]] / global.maxhp[global.char[target]]) < (gml_Script_scr_party_hpaverage() / 2))
        {
            gml_Script_scr_randomtarget_old()
            target = mytarget
        }
        if ((global.hp[global.char[target]] / global.maxhp[global.char[target]]) < (gml_Script_scr_party_hpaverage() / 2))
        {
            gml_Script_scr_randomtarget_old()
            target = mytarget
        }
        if (target == 0 && (global.hp[global.char[target]] / global.maxhp[global.char[target]]) < 0.35)
        {
            gml_Script_scr_randomtarget_old()
            target = mytarget
        }
        with (global.charinstance[target])
        {
            image_blend = c_white
            darkify = false
        }
    }
    chartarget = 3
    tdamage = damage
    var oldcalculation = false
    if (target < 3)
    {
        chartarget = global.char[target]
        if (global.charaction[target] == 10)
            tdamage = ceil(((2 * tdamage) / 2))
        tdamage = ceil((tdamage * gml_Script_scr_element_damage_reduction(__element, global.char[target])))
        gml_Script_debug_message(("The element is: " + string(__element)))
        if (tdamage < 1)
            tdamage = 1
    }
    if (!instance_exists(obj_shake))
        gml_Script_instance_create(0, 0, obj_shake)
    with (global.charinstance[target])
    {
        hurt = true
        hurttimer = 0
    }
    hpdiff = tdamage
    with (obj_dmgwriter)
    {
        if (delaytimer >= 1)
            killactive = true
    }
    doomtype = -1
    with (obj_heart)
        dmgnoise = true
    if (target < 3)
    {
        if (global.hp[chartarget] <= 0)
        {
            doomtype = 4
            global.hp[chartarget] -= round((tdamage / 4))
            hpdiff = round((tdamage / 4))
        }
        else
        {
            global.hp[chartarget] -= tdamage
            if (global.hp[chartarget] <= 0)
            {
                hpdiff = abs((global.hp[chartarget] - (global.maxhp[chartarget] / 2)))
                doomtype = 4
                global.hp[chartarget] = round(((-global.maxhp[chartarget]) / 2))
                gml_Script_scr_dead(target)
            }
        }
        dmgwriter = gml_Script_instance_create(global.charinstance[target].x, ((global.charinstance[target].y + global.charinstance[target].myheight) - 24), obj_dmgwriter)
        dmgwriter.damage = hpdiff
        dmgwriter.type = doomtype
    }
    if (target == 3)
    {
        for (hpi = 0; hpi < 3; hpi += 1)
        {
            chartarget = global.char[hpi]
            if (global.hp[chartarget] >= 0)
            {
                if oldcalculation
                    tdamage = ceil((tdamage - (global.battledf[hpi] * 3)))
                else
                    tdamage = gml_Script_scr_damage_calculation(tdamage, hpi)
                tdamage = ceil((tdamage * gml_Script_scr_element_damage_reduction(__element, chartarget)))
                if (global.charaction[hpi] == 10)
                    global.hp[chartarget] -= ceil(((3 * tdamage) / 4))
                else
                    global.hp[chartarget] -= tdamage
                if (global.hp[chartarget] <= 0)
                    global.hp[chartarget] = round(((-global.maxhp[0]) / 2))
            }
        }
    }
    global.inv = (global.invc * 40)
    gameover = true
    if (global.char[0] != 0 && global.hp[global.char[0]] > 0)
        gameover = false
    if (global.char[1] != 0 && global.hp[global.char[1]] > 0)
        gameover = false
    if (global.char[2] != 0 && global.hp[global.char[2]] > 0)
        gameover = false
    if (gameover == true)
        gml_Script_scr_gameover()
    if (__remtarget != -1)
        target = __remtarget
}
return;
