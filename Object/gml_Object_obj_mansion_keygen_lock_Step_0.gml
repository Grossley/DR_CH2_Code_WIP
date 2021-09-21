if (con == 1 && (!gml_Script_d_ex()))
{
    global.interact = 1
    gml_Script_snd_play(snd_weirdeffect)
    con++
}
if (con == 2 && (!gml_Script_d_ex()))
{
    gml_Script_scr_lerpvar_instance(id, "image_alpha", 1, 0, 30)
    con++
}
if (con == 3)
{
    fade_timer++
    if (fade_timer >= 30)
        con = 4
}
if (con == 4 && (!gml_Script_d_ex()))
{
    con = 99
    global.interact = 0
    instance_destroy()
}
if (myinteract == 3)
{
    if (gml_Script_i_ex(mydialoguer) == 0)
    {
        global.interact = 0
        myinteract = 0
        with (obj_mainchara)
            onebuffer = 5
    }
}
