if gml_Script_button3_h()
{
    onesec = gml_Script_scr_marker(x, y, sprite_index)
    onesec.image_xscale = image_xscale
    onesec.image_yscale = image_yscale
    onesec.depth = depth
    onesec.image_index = image_index
    onesec.image_speed = image_speed
    gml_Script_scr_doom(onesec, 2)
    instance_destroy()
}
