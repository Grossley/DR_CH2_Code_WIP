if (collided == 0)
{
    if (other.good == 1)
    {
        with (obj_checkers_enemy)
            crown += 35
        global.msg[0] = gml_Script_stringsetloc("* The crown greatly loosened!/%", "obj_ralseithrown_slash_Collision_ac806612_bd9d_43f5_86b2_61306f514c9f_gml_6_0")
        148
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
        64
        with (stacktop)
            con = 7
        with (obj_checkers_enemy)
            crown += 20
        global.msg[0] = gml_Script_stringsetloc("* The crown loosened a little!/%", "obj_ralseithrown_slash_Collision_ac806612_bd9d_43f5_86b2_61306f514c9f_gml_29_0")
        hspeed = -12
        vspeed = -4
        gravity = 0.5
        con = 2
    }
    // WARNING: Popz'd an empty stack.
    collided = 1
}
