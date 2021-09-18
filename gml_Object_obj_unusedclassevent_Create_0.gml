con = 0
lightsoff = 0
if (global.chapter == 1)
{
    if (global.plot >= 250)
    {
        con = 99
        // WARNING: Popz'd an empty stack.
    }
    else
    {
        global.interact = 1
        lightsoff = 1
    }
}
if (global.chapter == 2)
{
    con = 50
    if (global.plot >= 9)
    {
        con = 99
        lightsoff = 2
        with (obj_solidblock)
        {
            if (x == 108)
                // WARNING: Popz'd an empty stack.
        }
        with (obj_readable_room1)
        {
            if (x >= 80 && x <= 210)
                // WARNING: Popz'd an empty stack.
        }
    }
}
