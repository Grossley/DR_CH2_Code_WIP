if (doorPreset > 0)
{
    if (doorPreset == 1)
    {
        doorDelay = 14
        doorPostDelay = 6
        doorSound = 63
        doorSound2 = 62
    }
    else if (doorPreset == 2)
    {
        doorDelay = 16
        doorPostDelay = 6
        doorSound = 218
    }
}
if doorFadeMusic
{
    alarm[3] = doorFadeMusicTime
    gml_Script_mus_volume(global.currentsong[1], 0, alarm[3])
    if (doorDelay <= doorFadeMusicTime)
        doorDelay = (doorFadeMusicTime + 1)
}
if (doorDelay > 0)
    alarm[2] = doorDelay
if (doorSound != -1)
    doorSound
if 188
{
    if (alarm[2] > 0)
        obj_fadeout.fadespeed = (1 / alarm[2])
}
with (obj_overworldbulletparent)
    active = false
