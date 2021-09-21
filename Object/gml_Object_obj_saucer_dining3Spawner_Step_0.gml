timer++
if (dontalpha == 0)
    image_alpha += 0.2
gravity = 1
if (y > startY)
{
    y = startY
    gravity = 0
    if (room == room_dw_mansion_dininghall)
    {
        gml_Script_snd_stop(snd_impact)
        gml_Script_snd_play(snd_impact)
        gml_Script_instance_create(0, 0, obj_shake)
    }
}
if (y == startY && timer > 15)
{
    newsaucer = gml_Script_instance_create(x, y, obj_saucer)
    newsaucer.mode = 1
    newsaucer.content = 0
    with (newsaucer)
        gml_Script_scr_depth()
    instance_destroy()
}
