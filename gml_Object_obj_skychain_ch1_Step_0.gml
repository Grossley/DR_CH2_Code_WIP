image_angle = direction
if (con == 0)
{
    timer += 1
    if (timer >= 2)
    {
        sons += 1
        son[sons] = gml_Script_instance_create_ch1(x, y, 1567)
        son[sons].image_angle = image_angle
        son[sons].direction = direction
        son[sons].speed = (speed / 2.5)
        son[sons].active = true
        son[sons].damage = 10
        son[sons]
        timer = 0
    }
}
if (sons >= 30)
    // WARNING: Popz'd an empty stack.
