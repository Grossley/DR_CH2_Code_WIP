if (init == false)
{
    if (dir == 0)
        hspeed = 12
    if (dir == 1)
        hspeed = -12
    init = true
}
hspeed *= 1.1
vspeed *= 1.1
if (x > ((gml_Script_camerax() + 640) + (sprite_width * 2)) || x < (gml_Script_camerax() - (sprite_width * 2)) || y > ((gml_Script_cameray() + 480) + (sprite_height * 2)) || y < (gml_Script_cameray() - (sprite_height * 2)))
    instance_destroy()
