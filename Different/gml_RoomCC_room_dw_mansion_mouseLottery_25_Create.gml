bridgetarget = "bridge1"
if (global.flag[378] == 0)
{
    replace2 = instance_create(x, y, obj_soliddark)
    replace2.sprite_index = sprite_index
    replace2.image_xscale = image_xscale
    replace2.image_yscale = image_yscale
    replace2.image_index = image_index
    replace2.bridgetarget = bridgetarget
    instance_destroy()
}
image_blend = make_color_rgb(231, 84, 77)
