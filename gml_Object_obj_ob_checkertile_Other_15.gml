if (active == true && global.interact == 0)
{
    global.interact = 1
    gml_Script_snd_play(150)
    with (obj_ob_gen)
    {
        whitetimer = 0
        whitecon = 1
    }
}
