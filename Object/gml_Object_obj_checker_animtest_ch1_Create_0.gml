type = 0
con = 0
subcon = 0
secondtime = false
if (room == room_field_checkersboss_ch1)
{
    if (global.plot < 60)
    {
        con = 1
        image_xscale = 2
        image_yscale = 2
        subcon = 0
    }
    else
        instance_destroy()
}
if (room == room_cc_6f_ch1)
{
    secondtime = true
    con = 1
    image_xscale = 2
    image_yscale = 2
    subcon = 0
}
