if (!instance_exists(obj_heart))
    instance_destroy()
if (init == 1)
{
    timer++
    if (timer >= firingSpeed)
    {
        timer = 0
        bulletsSpawned++
        d = gml_Script_scr_childbullet(x, y, childBullet)
        if gml_Script_i_ex(d)
        {
            d.sprite_index = sprite_index
            d.direction = direction
            d.speed = childSpeed
            d.gravity = childgravity
            direction += shotRotation
            d.image_angle = direction
        }
        if (bulletsSpawned >= totalBullets)
            instance_destroy()
    }
}
init = 1
