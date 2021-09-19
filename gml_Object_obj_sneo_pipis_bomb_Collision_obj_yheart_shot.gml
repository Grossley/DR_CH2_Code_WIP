var _temp_local_var_2;
if (timer == 0 && spawninvincibilitytimer > 11)
{
    gml_Script_snd_play(166)
    if (other.big == 0)
    {
        var _temp_local_var_2 = other
        event_user(0)
    }
    timer = 1
    image_speed = 1
    bomsfallsfx = gml_Script_snd_loop(142)
}
