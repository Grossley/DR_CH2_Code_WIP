g += 1
if (g == 20)
{
    gml_Script_snd_play(103)
    speed = 35
    gravity = 1
}
if (g >= 20)
{
    image_angle -= 50
    t += 1
}
