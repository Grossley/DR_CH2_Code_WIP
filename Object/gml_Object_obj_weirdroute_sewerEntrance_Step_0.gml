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
if (con == 1 && (!gml_Script_d_ex()))
{
    global.interact = 1
    fade = gml_Script_scr_fadeout(15)
    gml_Script_snd_play(snd_escaped)
    timer = 0
    con++
}
if (con == 2)
{
    timer++
    if (timer >= 120)
    {
        with (obj_doorAny)
        {
            if (x > room_width)
                event_user(9)
        }
    }
}
