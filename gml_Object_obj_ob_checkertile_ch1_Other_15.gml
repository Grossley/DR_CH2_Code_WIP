if (active == true && global.interact == 0)
{
    global.interact = 1
    gml_Script_snd_play_ch1(414)
    with (obj_ob_gen_ch1)
    {
        whitetimer = 0
        whitecon = 1
    }
}
