block = gml_Script_instance_create_ch1(x, y, 1656)
block.image_xscale = image_xscale
block.image_yscale = image_yscale
destroymarker = 0
if (room == room_forest_area5_ch1)
{
    talkto = gml_Script_instance_create_ch1(x, y, 1405)
    talkto.image_xscale = image_xscale
    talkto.image_yscale = image_yscale
    tree = gml_Script_instance_create_ch1((x - 40), (y - 120), 1469)
    with (tree)
        gml_Script_scr_depth_ch1()
    if (global.flag[237] > 0)
    {
        with (tree)
            instance_destroy()
        with (block)
            instance_destroy()
    }
}
