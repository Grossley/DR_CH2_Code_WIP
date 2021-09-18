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
            // WARNING: Popz'd an empty stack.
    }
}
else
{
    groundblock = gml_Script_instance_create_ch1(x, 120, 1656)
    groundblock.image_xscale = 2
    global.facing = 1
    con = 1
    leavecon = 0
    boxcon = 0
    boxon = 0
}
image_speed = 0
