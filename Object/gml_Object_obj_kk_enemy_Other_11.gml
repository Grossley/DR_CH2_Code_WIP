rr = choose(0, 0, 0, 0, 1)
if (rr == 0)
{
    var sweet_string = gml_Script_stringsetloc("* Sweet shimmies defiantly.", "obj_kk_enemy_slash_Other_11_gml_4_0")
    var capn_string = gml_Script_stringsetloc("* Cap'n spins his cap around.", "obj_kk_enemy_slash_Other_11_gml_5_0")
    var kk_string = gml_Script_stringsetloc("* K_K is a CD player.", "obj_kk_enemy_slash_Other_11_gml_6_0")
    if (obj_sweet_enemy.dancing == 1)
        sweet_string = gml_Script_stringsetloc("* Sweet is lost in the groove!", "obj_kk_enemy_slash_Other_11_gml_8_0")
    if (obj_hatguy_enemy.dancing == 1)
        capn_string = gml_Script_stringsetloc("* Cap'n is lost in the groove!", "obj_kk_enemy_slash_Other_11_gml_9_0")
    if (dancing == 1)
        kk_string = gml_Script_stringsetloc("* K_K is lost in the groove!", "obj_kk_enemy_slash_Other_11_gml_10_0")
    global.battlemsg[0] = ((((sweet_string + "&") + kk_string) + "&") + capn_string)
}
if (rr == 1)
    global.battlemsg[0] = gml_Script_stringsetloc("* Smells like music.", "obj_kk_enemy_slash_Step_0_gml_130_0")
obj_musical_controller.ralseiportrait = 0
if (obj_sweet_enemy.actCounter == 1 && (!obj_sweet_enemy.letsdance))
{
    obj_sweet_enemy.letsdance = 1
    obj_musical_controller.ralseiportrait = 1
    global.battlemsg[0] = gml_Script_stringsetloc("* Perhaps if we can get them all to dance, we can win?", "obj_kk_enemy_slash_Step_0_gml_126_0")
}
if (obj_sweet_enemy.actCounter == 2 && (!obj_sweet_enemy.letsdance2) && obj_musical_controller.happyfeetscene == 0)
{
    obj_sweet_enemy.letsdance2 = 1
    obj_musical_controller.ralseiportrait = 1
    global.battlemsg[0] = gml_Script_stringsetloc("* Kris, just keep trying to dance!", "obj_kk_enemy_slash_Other_11_gml_29_0")
}
if (obj_sweet_enemy.actCounter == 3 && (!obj_sweet_enemy.letsdance3) && obj_musical_controller.happyfeetscene == 0)
{
    obj_sweet_enemy.letsdance3 = 1
    obj_musical_controller.ralseiportrait = 1
    global.battlemsg[0] = gml_Script_stringsetloc("* U-umm... Kris, maybe if you... keep dancing?", "obj_kk_enemy_slash_Other_11_gml_37_0")
}
