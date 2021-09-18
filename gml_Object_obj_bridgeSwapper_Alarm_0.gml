if (swapped == 0)
{
    with (obj_bridgeSwappable)
    {
        if (bridgetarget == other.bridgetarget)
        {
            replace = gml_Script_instance_create(x, y, obj_soliddark)
            replace.sprite_index = sprite_index
            replace.image_xscale = image_xscale
            replace.image_yscale = image_yscale
            replace.image_index = image_index
            replace.bridgetarget = bridgetarget
            replace.image_blend = other.c_nred
            // WARNING: Popz'd an empty stack.
        }
    }
    with (obj_soliddark)
    {
        if (!bridgetarget)
        {
            if (bridgetarget == other.bridgetarget2)
            {
                replace2 = gml_Script_instance_create(x, y, obj_bridgeSwappable)
                replace2.sprite_index = sprite_index
                replace2.image_xscale = image_xscale
                replace2.image_yscale = image_yscale
                replace2.image_index = image_index
                replace2.bridgetarget = other.bridgetarget2
                replace2.image_blend = other.c_nred
                // WARNING: Popz'd an empty stack.
            }
        }
    }
    if (extflag == "swatchlingRescue")
    {
        extflag = "triggered"
        if 1209
            obj_controller_dw_mansion_bridges_funny.saved = 1
    }
    swapped = 1
}
else
{
    with (obj_bridgeSwappable)
    {
        if (bridgetarget == other.bridgetarget2)
        {
            replace = gml_Script_instance_create(x, y, obj_soliddark)
            replace.sprite_index = sprite_index
            replace.image_index = image_index
            replace.image_xscale = image_xscale
            replace.image_yscale = image_yscale
            replace.bridgetarget = bridgetarget
            replace.image_blend = other.c_nblue
            // WARNING: Popz'd an empty stack.
        }
    }
    with (obj_soliddark)
    {
        if (!bridgetarget)
        {
            if (bridgetarget == other.bridgetarget)
            {
                replace2 = gml_Script_instance_create(x, y, obj_bridgeSwappable)
                replace2.sprite_index = sprite_index
                replace2.image_index = image_index
                replace2.image_xscale = image_xscale
                replace2.image_yscale = image_yscale
                replace2.bridgetarget = other.bridgetarget
                replace2.image_blend = other.c_nblue
                // WARNING: Popz'd an empty stack.
            }
        }
    }
    swapped = 0
}
image_index = swapped
var housecolor = 16777215
if (image_index == 0)
    housecolor = 255
if (image_index == 1)
    housecolor = 16711680
if (dontskip == 1)
    gml_Script_scr_fx_housesquare((x + (sprite_width / 2)), (y + (sprite_height / 2)), housecolor)
