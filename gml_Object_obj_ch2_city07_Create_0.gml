jp = 0
if (global.lang == "ja")
    jp = 1
con = -1
customcon = 0
berdlygift = 0
explore = 0
wrongexit = 0
havewalker = global.flag[254] == 1
tentback = gml_Script_scr_dark_marker(1312, -161, 2998)
tentback.depth = 100000
tent = gml_Script_scr_dark_marker(1312, 32, 155)
tent.depth = 97800
var buy_sign = gml_Script_instance_create(1390, 50, obj_cybercity_bg_screen)
buy_sign.depth = 200
hit_bottles = 0
hit_timer = 0
susie_heal = 0
heal_timer = 0
heal_beam = -1
heal_effect = 0
box_remove_effect = 0
box_remove_timer = 0
susie_right = 0
present_transform = 0
present_timer = 0
if (global.chapter != 2)
    // WARNING: Popz'd an empty stack.
else if (global.plot >= 95)
{
    if (global.plot < 99)
    {
        // WARNING: Popz'd an empty stack.
        if 274
            274
        2
        3
        4
        gml_Script_scr_makecaterpillar((obj_mainchara.x + 60), obj_mainchara.y, 2, 0)
        gml_Script_scr_makecaterpillar((obj_mainchara.x + 100), obj_mainchara.y, 4, 1)
        gml_Script_scr_makecaterpillar((obj_mainchara.x + 140), obj_mainchara.y, 3, 2)
        con = 99
        explore = 1
    }
}
else
{
    for (var i = 0; i < 5; i++)
    {
        bottle[i] = gml_Script_scr_dark_marker((1360 + (15 * i)), 190, 157)
        bottle[i].depth = 97700
    }
    for (i = 5; i < 9; i++)
    {
        bottle[i] = gml_Script_scr_dark_marker((1367 + (15 * (i - 5))), 160, 157)
        bottle[i].depth = 97700
    }
}
