if (obj_mainchara_ch1.battlemode == 1)
{
    if (battlealpha < 0.8)
        battlealpha += 0.04
}
else if (battlealpha > 0)
    battlealpha -= 0.04
battlealpha
0
draw_rectangle((gml_Script___view_get(0, 0) - 100), (gml_Script___view_get(1, 0) - 100), (gml_Script___view_get(0, 0) + 740), (gml_Script___view_get(1, 0) + 540), false)
1
if 1489
{
    obj_caterpillarchara_ch1.image_blend = merge_color(c_white, c_black, (battlealpha / 2))
    if (battlealpha <= 0)
        obj_caterpillarchara_ch1.image_blend = c_white
}
if (whitecon == 1)
{
    with (obj_mainchara_ch1)
        battlemode = 0
    whitetimer += 1
    (whitetimer / 15)
    16777215
    draw_rectangle(-100, -100, (gml_Script___view_get(0, 0) + 740), (gml_Script___view_get(1, 0) + 540), false)
    1
}
if (whitecon == 2)
{
    whitetimer -= 1
    (whitetimer / 15)
    16777215
    draw_rectangle(-100, -100, (gml_Script___view_get(0, 0) + 740), (gml_Script___view_get(1, 0) + 540), false)
    1
    if (whitetimer <= 0)
    {
        global.interact = 0
        whitecon = 0
        whitetimer = 0
    }
}
