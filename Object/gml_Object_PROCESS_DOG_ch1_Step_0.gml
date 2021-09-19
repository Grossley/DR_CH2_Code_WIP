buffer++
if (buffer < 60)
    return;
if (gml_Script_button1_p_ch1() && (!start_timer))
{
    fadeout = gml_Script_instance_create_ch1(0, 0, 1460)
    with (fadeout)
        fadespeed = 0.02
    start_timer = 1
}
if start_timer
{
    gml_Script_snd_free_all_ch1()
    restart_timer++
}
if (restart_timer == 200)
    game_restart()
