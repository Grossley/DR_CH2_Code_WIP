if (myinteract == 3)
{
    global.interact = 0
    myinteract = 0
    with (obj_mainchara)
        onebuffer = 3
    if (selfdestruct == 1)
        alarm[0] = 2
}
if (room == room_dw_mansion_potBalance || room == room_dw_mansion_east_2f_c)
    // WARNING: Popz'd an empty stack.
