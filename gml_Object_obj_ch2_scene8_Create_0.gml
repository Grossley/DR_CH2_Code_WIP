customcon = 0
con = 0
destroyme = 0
if (global.chapter != 2 || global.plot >= 20)
    destroyme = 1
else if (global.plot < 20)
{
    with (obj_npc_facing)
        // WARNING: Popz'd an empty stack.
    with (obj_npc_room)
        // WARNING: Popz'd an empty stack.
    con = 1
    global.interact = 1
    foreground = 5000
    layer_depth(foreground[0], 900000)
}
if (destroyme == 1)
    // WARNING: Popz'd an empty stack.
drawdoor = 1
darkbg = 0
depth = 100000
xsin = 0
siner = 0
amt = 0
