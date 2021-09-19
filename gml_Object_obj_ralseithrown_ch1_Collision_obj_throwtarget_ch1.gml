var _temp_local_var_1;
if (collided == 0)
{
    if (other.good == 1)
    {
        with (obj_checkers_enemy_ch1)
            crown += 35
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_ralseithrown_slash_Collision_154b9139_8c0d_44d5_b8de_0f03c1a8096c_gml_6_0")
        gml_Script_snd_play_ch1(417)
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
        gml_Script_snd_play_ch1(381)
        _temp_local_var_1 = other
        con = 7
    }
    gml_Script_scr_battletext_default_ch1()
    collided = 1
}
