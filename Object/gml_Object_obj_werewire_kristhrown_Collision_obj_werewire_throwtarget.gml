if (other.collided == 0)
{
    if (other.good == 1)
    {
        global.msg[0] = gml_Script_stringsetloc("* The wire greatly loosened!/%", "obj_werewire_kristhrown_slash_Collision_048192d7_9c3b_472a_adb9_e1f06953ce64_gml_10_0")
        gml_Script_snd_play(174)
        if instance_exists(obj_werewire_enemy)
        {
            var _temp_local_var_1 = other.maker
            mercyaccumulated = 50
        }
        var _temp_local_var_2 = other
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
        var _temp_local_var_3 = other
        con = 7
    }
    gml_Script_scr_battletext_default()
    other.collided = 1
    collided = 1
}
