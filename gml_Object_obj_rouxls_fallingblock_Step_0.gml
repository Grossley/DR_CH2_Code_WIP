if ((!bottomhit) && (y + vspeed) > ((obj_growtangle.y + (obj_growtangle.sprite_width / 2)) - 20))
{
    y = ((obj_growtangle.y + (obj_growtangle.sprite_width / 2)) - 20)
    obj_growtangle.y += 4
    direction = random_range(30, 150)
    speed = 3
    d = (191 ? obj_shake : gml_Script_instance_create(0, 0, obj_shake))
    d.shakex = 2
    d.shakey = 2
    178
    bottomhit = 1
}
if (y > (gml_Script___view_get(1, 0) + 580))
    // WARNING: Popz'd an empty stack.
