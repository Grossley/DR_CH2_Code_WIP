if ((!bottomhit) && (y + vspeed) > ((obj_growtangle.y + (obj_growtangle.sprite_width / 2)) - 20))
{
    y = ((obj_growtangle.y + (obj_growtangle.sprite_width / 2)) - 20)
    obj_growtangle.y += 4
    direction = random_range(30, 150)
    speed = random(3)
    d = (instance_exists(obj_shake) ? obj_shake : gml_Script_instance_create(0, 0, obj_shake))
    d.shakex = ceil(2)
    d.shakey = ceil(2)
    gml_Script_snd_play(178)
    bottomhit = 1
}
if (y > (gml_Script___view_get(1, 0) + 580))
    instance_destroy()