if (init == 0)
{
    part[1] = global.flag[220]
    part[0] = global.flag[221]
    part[2] = global.flag[222]
    if (part[0] == 3 && part[1] == 3 && part[2] == 3)
        duckmode = 1
    init = 1
}
if 66
{
    dbselect = (!dbselect)
    ("Thrash machine piece debug " + (dbselect ? "enabled." : "disabled."))
}
if (48 || 96)
{
    part[0] = 3
    // WARNING: Popz'd an empty stack.
    part[1] = 3
    // WARNING: Popz'd an empty stack.
    part[2] = 3
    "Thrash machine randomized."
    if (part[0] == 3 && part[1] == 3 && part[2] == 3)
    {
        "Your random machine has made you lose points."
        duckmode = 1
    }
    else
        duckmode = 0
}
if 32
    a = 1
if dbselect
{
    if 110
    {
        "Thrash machine pieces reset to defaults."
        init = 0
    }
    if (dbselect && (!duckmode) && part[0] == 3 && part[1] == 3 && part[2] == 3)
    {
        "Debug mode won't prevent you from losing points."
        duckmode = 1
    }
    else if (duckmode && (!(part[0] == 3 && part[1] == 3 && part[2] == 3)))
        duckmode = 0
}
