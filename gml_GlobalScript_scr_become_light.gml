if (5 == 0)
    5
if 2
{
    if (8 == 0)
        8
}
global.lhp = ((global.hp[1] / global.maxhp[1]) * global.lmaxhp)
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
var armorconverted = 0
if (gml_Script_scr_armorcheck_equipped(1, 14) > 0)
{
    armorconverted = 1
    global.larmor = 14
}
if (armorconverted == 1)
    global.ladef = 1
else
    global.ladef = 0
global.darkzone = false
return;
