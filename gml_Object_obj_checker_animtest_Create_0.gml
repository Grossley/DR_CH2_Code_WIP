type = 0
con = 0
subcon = 0
secondtime = false
if (room == room_field_checkersboss)
{
    if (global.plot < 60)
    {
        con = 1
        image_xscale = 2
        image_yscale = 2
        subcon = 0
    }
    else
        // WARNING: Popz'd an empty stack.
}
if (room == room_cc_6f)
{
    secondtime = true
    con = 1
    image_xscale = 2
    image_yscale = 2
    subcon = 0
}
