if (myinteract == 2)
{
    179
    gml_Script_scr_move_to_point_over_time(headobj.x, headobj.y, 5)
    myinteract = 3
}
if (myinteract == 3)
{
    timer++
    if (timer >= 6)
    {
        148
        headobj.visible = true
        global.interact = 0
        myinteract = 0
        // WARNING: Popz'd an empty stack.
    }
}
if (myinteract == 1)
    myinteract = 2
