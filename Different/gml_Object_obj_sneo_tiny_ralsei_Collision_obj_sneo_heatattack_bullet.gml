if (active == false)
    return;
with (other)
{
    scr_afterimage_cut()
    instance_destroy()
}
if (alarm[0] > 0)
    return;
hp -= 10
alarm[0] = 10
snd_play(snd_hurt1)
