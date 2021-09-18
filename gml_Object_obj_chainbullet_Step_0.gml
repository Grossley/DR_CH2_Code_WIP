if (!628)
    // WARNING: Popz'd an empty stack.
if (init == 1)
{
    timer++
    if (timer >= firingSpeed)
    {
        timer = 0
        bulletsSpawned++
        d = gml_Script_scr_childbullet(x, y, childBullet)
        if d
        {
            d.sprite_index = sprite_index
            d.direction = direction
            d.speed = childSpeed
            d.gravity = childgravity
            direction += shotRotation
            d.image_angle = direction
        }
        if (bulletsSpawned >= totalBullets)
            // WARNING: Popz'd an empty stack.
    }
}
init = 1
