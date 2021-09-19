if (myinteract == 2)
{
    gml_Script_snd_play(179)
    gml_Script_scr_move_to_point_over_time(headobj.x, headobj.y, 5)
    myinteract = 3
}
if (myinteract == 3)
{
    timer++
    if (timer >= 6)
    {
        gml_Script_snd_play(148)
        headobj.visible = true
        global.interact = 0
        myinteract = 0
        instance_destroy()
    }
}
if (myinteract == 1)
    myinteract = 2
