if (active == false)
    return;
with (other)
    instance_destroy()
if (alarm[0] > 0)
    return;
if (other.active == false)
    return;
hp -= 10
alarm[0] = 10
snd_play(snd_hurt1)
