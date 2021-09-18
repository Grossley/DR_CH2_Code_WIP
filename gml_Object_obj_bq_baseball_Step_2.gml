if (!baseball_hitbox)
    return;
if (!wheel_hitbox_graze)
    return;
if (y > c && o_boxingcontroller.punchcon > 0)
{
    baseball_hitbox.x = o_boxingcontroller.x
    baseball_hitbox.y = o_boxingcontroller.y
}
baseball_hitbox.x = x
baseball_hitbox.y = y
wheel_hitbox_graze.x = x
wheel_hitbox_graze.y = y
