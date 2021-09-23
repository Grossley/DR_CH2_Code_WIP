if (x >= (gml_Script_camerax() + 900) || x <= (gml_Script_camerax() - 200) || y >= (gml_Script_cameray() + 600) || y <= (gml_Script_cameray() - 200))
    instance_destroy()
if (init == false && image_alpha >= 0.5)
{
    destroyable = 1
    init = true
}
if (state == 0)
{
    if (speed <= 0)
        state = 1
}
else if (state == 1)
{
    timer++
    if (timer >= 5)
    {
        timer = 0
        state = 2
        d = gml_Script_instance_create(x, y, obj_regularbullet)
        d.direction = point_direction(x, y, (obj_heart.x + 4), (obj_heart.y + 4))
        d.sprite_index = spr_sneo_bullet0
        d.speed = 4
    }
}
else if (state == 2)
{
    timer++
    if (timer >= 15)
    {
        timer = 0
        state = 3
    }
}
else if (state == 3)
{
    if (timer == 0)
    {
        spin += 24
        direction = lerp(180, flydirection, (spin / 360))
        image_angle = ((direction + spin) + 180)
        if (spin >= 360)
        {
            direction = flydirection
            image_angle = (direction + 180)
            timer++
        }
    }
    else
    {
        timer++
        if (timer >= 10)
        {
            friction = -0.2
            speed = 0.1
            state = 4
        }
    }
}
else if (state == 4)
{
    if (speed >= 8)
    {
        friction = 0
        speed = 8
    }
}
