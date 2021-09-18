if ((!baseball_hitbox) || (!wheel_hitbox_graze))
{
    // WARNING: Popz'd an empty stack.
    return;
}
baseball_combo_timer--
if (hit == 0)
    image_angle += 3
if (hit == 1)
{
    hit_timer += 1
    if (hit_timer == 1)
    {
        repeat (3)
        {
            fakesplash = gml_Script_instance_create(((x - 20) + irandom(40)), ((y - 20) + irandom(40)), o_boxing_splash)
            fakesplash.friction = -0.5
            fakesplash.sprite_index = spr_boxing_splash2
            if (hit_direction == -1)
                fakesplash.hspeed = (-1 - random(2))
            if (hit_direction == 1)
                fakesplash.hspeed = (1 + random(2))
            fakesplash.vspeed = (1 + random(2))
        }
        xbase = x
        ybase = y
    }
    if (hit_timer > 0 && hit_timer < (10 / f))
    {
        x = ((xbase + (15 / hit_timer)) - irandom((30 / hit_timer)))
        y = ((ybase + (15 / hit_timer)) - irandom((30 / hit_timer)))
    }
    if (hit_timer > 0 && hit_timer < (10 / f))
    {
        with (obj_bq_baseball)
        {
            if (hit == 0)
                y -= vspeed
        }
    }
    if (hit_timer > (10 / f))
        vspeed = (-32 / f)
    if (y < -4 && vspeed < 0)
        // WARNING: Popz'd an empty stack.
}
if (y > 490)
    // WARNING: Popz'd an empty stack.
