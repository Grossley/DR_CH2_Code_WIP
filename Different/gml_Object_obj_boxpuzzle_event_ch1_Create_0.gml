if (global.plot >= 50)
{
    con = -1
    leavecon = -1
    boxcon = -1
    boxon = -1
    image_index = 1
    if (global.flag[212] == 2)
    {
        image_index = 2
        with (obj_pushableblock_ch1)
            instance_destroy()
    }
}
else
{
    groundblock = instance_create_ch1(x, 120, obj_soliddark_ch1)
    groundblock.image_xscale = 2
    global.facing = 1
    con = 1
    leavecon = 0
    boxcon = 0
    boxon = 0
}
image_speed = 0
