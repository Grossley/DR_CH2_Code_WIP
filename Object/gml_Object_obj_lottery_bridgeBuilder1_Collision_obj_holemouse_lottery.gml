var _temp_local_var_1;
depth = (other.depth + 1)
if (built == 0)
{
    gml_Script_snd_play(59)
    gml_Script_instance_create(x, y, obj_shakeobj)
    if (bridgetarget == "bridge1")
        image_index = 0
    if (bridgetarget == "bridge2")
        image_index = 1
    with (obj_soliddark)
    {
        if (!is_undefined(bridgetarget))
        {
            if (bridgetarget == other.bridgetarget)
            {
                replace2 = gml_Script_instance_create(x, y, obj_bridgeSwappable)
                replace2.sprite_index = sprite_index
                replace2.image_index = image_index
                replace2.image_xscale = image_xscale
                replace2.image_yscale = image_yscale
                replace2.bridgetarget = other.bridgetarget
                c_nblue = make_color_rgb(39, 167, 212)
                c_nred = make_color_rgb(231, 84, 77)
                if (bridgetarget == "bridge2")
                    replace2.image_blend = c_nblue
                if (bridgetarget == "bridge1")
                    replace2.image_blend = c_nred
                instance_destroy()
            }
        }
    }
    built = 1
}
else
    gml_Script_snd_play(176)
var _temp_local_var_1 = other
instance_destroy()