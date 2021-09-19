if (collided == 0)
{
    if (other.good == 1)
    {
        with (obj_checkers_enemy)
            crown += 35
        global.msg[0] = gml_Script_stringsetloc("* The crown greatly loosened!/%", "obj_ralseithrown_slash_Collision_ac806612_bd9d_43f5_86b2_61306f514c9f_gml_6_0")
        gml_Script_snd_play(148)
        var _temp_local_var_1 = other
        if (offing == 1)
        {
            con = 1
            vspeed = -8
        }
        else
            con = 5
    }
    else
    {
        gml_Script_snd_play(64)
        _temp_local_var_1 = other
        con = 7
    }
    gml_Script_scr_battletext_default()
    collided = 1
}
