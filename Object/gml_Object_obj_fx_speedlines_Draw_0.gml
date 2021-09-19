if (offsetx || offsety)
{
    if offsetx
        xoff = (x - gml_Script_camerax())
    if offsety
        yoff = (y - gml_Script_cameray())
    offsetx = 0
    offsety = 0
}
if flashframe
    depth = -1000
draw_sprite_ext(sprite_index, 0, (gml_Script_camerax() + (gml_Script_camerawidth() / 2)), (gml_Script_cameray() + (gml_Script_cameraheight() / 2)), (flipB * 2), (flipA * 2), image_angle, (flashframe ? c_gray : c_white), 1)
draw_sprite_ext(sprite_index, 1, (gml_Script_camerax() + (gml_Script_camerawidth() / 2)), (gml_Script_cameray() + (gml_Script_cameraheight() / 2)), (flipA * 2), (flipB * 2), (-image_angle), 0xEAAA8E, 1)
if (flipA == flipB)
    flipA *= -1
else
{
    flipB *= -1
    image_angle += 90
}
if flashframe
    instance_destroy()
