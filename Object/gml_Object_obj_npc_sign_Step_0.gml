if (myinteract == 3 && skip == 0)
{
    if (!gml_Script_d_ex())
    {
        global.interact = 0
        myinteract = 0
        with (obj_mainchara)
            onebuffer = 5
        if (doafter != 0)
            docon = 1
    }
}
if (docon == 1 && (!gml_Script_d_ex()))
{
}
if (129 && global.plot >= 75 && sprite_index == spr_alley_boxes)
    sprite_index = spr_alley_boxes_fewer