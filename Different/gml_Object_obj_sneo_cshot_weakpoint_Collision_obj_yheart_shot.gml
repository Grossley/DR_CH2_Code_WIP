if (deathtimer > 0)
    return;
if (destroyable == true)
    flash = true
if (other.big == 0)
{
    hp--
    with (other)
        event_user(0)
}
if (other.big || hp <= 0)
{
    deathtimer = 4
    barrier.speed = 0
    barrier.angle_speed = 0
    barrier.hitfreeze = 1
    barrier.destroyable = false
    image_blend = c_white
    barrier.image_blend = c_yellow
    sprite_index = spr_sneo_c_weakpoint_hit
}
