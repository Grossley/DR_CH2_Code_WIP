if (gml_Script_scr_litemcheck(5) == 0)
    gml_Script_scr_litemget(5)
if gml_Script_scr_keyitemcheck(2)
{
    if (gml_Script_scr_litemcheck(8) == 0)
        gml_Script_scr_litemget(8)
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
if (global.charweapon[1] == 14)
    global.lweapon = 12
if (global.charweapon[1] == 16)
    global.lweapon = 13
var armorconverted = false
if (gml_Script_scr_armorcheck_equipped(1, 14) > 0)
{
    armorconverted = true
    global.larmor = 14
}
if (armorconverted == true)
    global.ladef = true
else
    global.ladef = false
global.darkzone = false
return;
