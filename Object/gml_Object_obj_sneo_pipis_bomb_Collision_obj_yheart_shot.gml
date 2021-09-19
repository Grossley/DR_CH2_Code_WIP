if (timer == 0 && spawninvincibilitytimer > 11)
{
    gml_Script_snd_play(166)
    if (other.big == 0)
    {
        with (other)
            event_user(0)
    }
    timer = 1
    image_speed = 1
    bomsfallsfx = gml_Script_snd_loop(142)
}
