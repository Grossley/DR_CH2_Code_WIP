if (collided == 0)
{
    if (other.good == 1)
    {
        with (obj_checkers_enemy_ch1)
            crown += 35
        global.msg[0] = "obj_ralseithrown_slash_Collision_154b9139_8c0d_44d5_b8de_0f03c1a8096c_gml_6_0"
        417
        with (stacktop)
        {
            if (offing == 1)
            {
                con = 1
                vspeed = -8
            }
            else
                con = 5
        }
    }
    else
    {
        381
        with (stacktop)
            con = 7
        with (obj_checkers_enemy_ch1)
            crown += 20
        global.msg[0] = "obj_ralseithrown_slash_Collision_154b9139_8c0d_44d5_b8de_0f03c1a8096c_gml_29_0"
        hspeed = -12
        vspeed = -4
        gravity = 0.5
        con = 2
    }
    // WARNING: Popz'd an empty stack.
    collided = 1
}
