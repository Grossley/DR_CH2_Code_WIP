if (con == 0 && obj_mainchara.x >= x && global.interact == 0)
{
    con = 1
    global.interact = 1
}
if (con == 1)
{
    con = 2
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    su
    gml_Script_c_walk("r", 2, 60)
    ra
    gml_Script_c_walk("r", 2, 30)
    kr
    gml_Script_c_walk("l", 2, 20)
    60
    60
    60
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (con == 2)
{
    if (!895)
    {
        con = 3
        global.interact = 0
    }
}
