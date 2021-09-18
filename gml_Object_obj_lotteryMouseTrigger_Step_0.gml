timer++
if (freezeplayer == 1)
{
    global.interact = 1
    if ((!1168) && timer > 5)
    {
        freezeplayer = 0
        global.interact = 0
    }
}
