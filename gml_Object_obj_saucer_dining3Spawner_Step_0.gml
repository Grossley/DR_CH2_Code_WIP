var _temp_local_var_2;
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
        61
        61
        gml_Script_instance_create(0, 0, obj_shake)
    }
}
if (y == startY && timer > 15)
{
    newsaucer = gml_Script_instance_create(x, y, obj_saucer)
    newsaucer.mode = 1
    newsaucer.content = 0
    var _temp_local_var_2 = newsaucer
}
