var shieldbreaking = 0
if (instance_exists(obj_queenshield_enemy) && obj_queenshield_enemy.shieldhurt == 2)
    shieldbreaking = 1
if ((!instance_exists(obj_queenshield_enemy)) || shieldbreaking == 1)
{
    global.actname[myself][0] = gml_Script_stringsetloc("Loosen", "obj_queen_enemy_slash_Other_11_gml_10_0")
    global.actsimul[myself][0] = 0
    global.actname[myself][1] = gml_Script_stringsetloc("GroupLoosen", "obj_queen_enemy_slash_Other_11_gml_11_0")
}
else
{
    global.actname[myself][0] = gml_Script_stringsetloc("Toast", "obj_queen_enemy_slash_Other_11_gml_15_0")
    global.actsimul[myself][0] = 1
    global.actname[myself][1] = gml_Script_stringsetloc("GroupToast", "obj_queen_enemy_slash_Other_11_gml_16_0")
}
if ((!instance_exists(obj_queenshield_enemy)) || shieldbreaking == 1)
{
    global.actnamesus[myself][0] = gml_Script_stringsetloc("Loosen", "obj_queen_enemy_slash_Other_11_gml_22_0")
    global.actsimulsus[myself][0] = 0
}
else
{
    global.actnamesus[myself][0] = gml_Script_stringsetloc("Toast", "obj_queen_enemy_slash_Other_11_gml_26_0")
    global.actsimulsus[myself][0] = 1
}
if ((!instance_exists(obj_queenshield_enemy)) || shieldbreaking == 1)
{
    global.actnameral[myself][0] = gml_Script_stringsetloc("Loosen", "obj_queen_enemy_slash_Other_11_gml_32_0")
    global.actsimulral[myself][0] = 0
}
else
{
    global.actnameral[myself][0] = gml_Script_stringsetloc("Toast", "obj_queen_enemy_slash_Other_11_gml_36_0")
    global.actsimulral[myself][0] = 1
}
if ((!instance_exists(obj_queenshield_enemy)) || shieldbreaking == 1)
{
    global.canact[myself][2] = true
    global.actactor[myself][2] = 2
    global.actname[myself][2] = gml_Script_stringsetloc("Throw", "scr_monstersetup_slash_scr_monstersetup_gml_1540_0")
    global.actdesc[myself][2] = " "
    global.actcost[myself][2] = 0
    global.canact[myself][3] = true
    global.actactor[myself][3] = 2
    global.actname[myself][3] = gml_Script_stringsetloc("RedBuster", "scr_monstersetup_slash_scr_monstersetup_gml_1552_0")
    global.actdesc[myself][3] = gml_Script_stringsetloc("Red#Damage", "scr_monstersetup_slash_scr_monstersetup_gml_1553_0")
    global.actcost[myself][3] = 150
    global.canact[myself][4] = true
    global.actactor[myself][4] = 3
    global.actname[myself][4] = gml_Script_stringsetloc("DualHeal", "scr_monstersetup_slash_scr_monstersetup_gml_1558_0")
    global.actdesc[myself][4] = gml_Script_stringsetloc("Heals#everyone", "scr_monstersetup_slash_scr_monstersetup_gml_1559_0")
    global.actcost[myself][4] = 125
    global.canact[myself][5] = false
}
else
{
    global.canact[myself][2] = true
    global.actactor[myself][2] = 2
    global.actname[myself][2] = gml_Script_stringsetloc("RedBuster", "scr_monstersetup_slash_scr_monstersetup_gml_1552_0")
    global.actdesc[myself][2] = gml_Script_stringsetloc("Red#Damage", "scr_monstersetup_slash_scr_monstersetup_gml_1553_0")
    global.actcost[myself][2] = 150
    global.canact[myself][3] = true
    global.actactor[myself][3] = 3
    global.actname[myself][3] = gml_Script_stringsetloc("DualHeal", "scr_monstersetup_slash_scr_monstersetup_gml_1558_0")
    global.actdesc[myself][3] = gml_Script_stringsetloc("Heals#everyone", "scr_monstersetup_slash_scr_monstersetup_gml_1559_0")
    global.actcost[myself][3] = 125
    global.canact[myself][4] = false
    global.actactor[myself][4] = 0
    global.actname[myself][4] = ""
    global.actdesc[myself][4] = ""
    global.actcost[myself][4] = 0
    global.canact[myself][5] = false
    global.actactor[myself][5] = 0
    global.actname[myself][5] = ""
    global.actdesc[myself][5] = ""
    global.actcost[myself][5] = 0
}
gml_Script_scr_spellmenu_setup()