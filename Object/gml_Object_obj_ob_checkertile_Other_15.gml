if (active == true && global.interact == 0)
{
    global.interact = 1
    gml_Script_snd_play(snd_boost)
    with (obj_ob_gen)
    {
        whitetimer = 0
        whitecon = 1
    }
}
