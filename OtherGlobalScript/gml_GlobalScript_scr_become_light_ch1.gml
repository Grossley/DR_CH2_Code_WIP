if (gml_Script_scr_litemcheck_ch1(5) == 0)
    gml_Script_scr_litemget_ch1(5)
if gml_Script_scr_keyitemcheck_ch1(2)
{
    if (gml_Script_scr_litemcheck_ch1(8) == 0)
        gml_Script_scr_litemget_ch1(8)
}
global.lhp = (ceil((global.hp[1] / global.maxhp[1])) * global.lmaxhp)
if (global.lhp < 1)
    global.lhp = 1
if (global.lhp > global.lmaxhp)
    global.lhp = global.lmaxhp
global.lwstrength = 1
if (global.charweapon[1] == 1)
    global.lweapon = 2
if (global.charweapon[1] == 5)
    global.lweapon = 6
if (global.charweapon[1] == 8)
    global.lweapon = 7
global.darkzone = false
return;
