if (init == 0)
{
    initialspeed = speed
    speed = 0
    init = 1
    depth -= 2
    if big
        stuck = 1
}
if (init == 2)
{
    depth += 2
    init = 3
}
if (init < 3)
    return;
if (big && alarm[0] == -1)
{
    speed = gml_Script_scr_approach(speed, initialspeed, 0.75)
    if (stuck && speed > 2)
    {
        sprite_index = spr_maus_critter_big
        stuck = 0
    }
}
event_inherited()
if (x > ((obj_growtangle.x + (obj_growtangle.sprite_width / 2)) + 50) || x < ((obj_growtangle.x - (obj_growtangle.sprite_width / 2)) - 50) || y > ((obj_growtangle.y + (obj_growtangle.sprite_height / 2)) + 50) || y < ((obj_growtangle.y - (obj_growtangle.sprite_height / 2)) - 50))
    instance_destroy()
