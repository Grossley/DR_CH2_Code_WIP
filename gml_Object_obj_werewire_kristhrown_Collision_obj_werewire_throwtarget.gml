var _temp_local_var_1;
if (other.collided == 0)
{
    if (other.good == 1)
    {
        global.msg[0] = gml_Script_stringsetloc("* The wire greatly loosened!/%", "obj_werewire_kristhrown_slash_Collision_048192d7_9c3b_472a_adb9_e1f06953ce64_gml_10_0")
        174
        if 474
        {
            var _temp_local_var_1 = other.maker
            mercyaccumulated = 50
        }
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
        if 474
        {
            with (obj_werewire_enemy)
            {
                if (acting == 3)
                    loosenAmount = clamp((loosenAmount + 0.25), 0, 1)
            }
        }
        else if 481
        {
            with (obj_werewerewire_enemy)
            {
                if (acting == 3)
                    loosenAmount = clamp((loosenAmount + 0.125), 0, 1)
            }
        }
        global.msg[0] = gml_Script_stringsetloc("* The wire loosened a little!/%", "obj_werewire_kristhrown_slash_Collision_048192d7_9c3b_472a_adb9_e1f06953ce64_gml_75_0")
        hspeed = -12
        vspeed = -4
        gravity = 0.5
        con = 2
    }
    other.collided = 1
    collided = 1
}
