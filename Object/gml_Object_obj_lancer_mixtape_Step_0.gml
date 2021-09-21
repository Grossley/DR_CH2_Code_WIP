timer--
if (global.menuno != 1)
    timer = -10
if (timer <= 0)
{
    timer = 60
    gml_Script_snd_resume(global.currentsong[1])
    gml_Script_snd_stop(snd_queen_mixtape)
    instance_destroy()
}
