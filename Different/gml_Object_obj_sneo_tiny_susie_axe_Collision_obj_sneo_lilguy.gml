instance_destroy()
with (other)
{
    snd_play_pitch(snd_bomb, (1.1 + random(0.2)))
    scr_afterimage_cut()
    instance_destroy()
}
snd_play(snd_damage)
