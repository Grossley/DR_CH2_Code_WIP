if gml_Script_scr_queen_buffercheck()
{
    image_speed = 0
    return;
}
else if (image_speed == 0)
    image_speed = 1
init = 1
if animdone
{
    timer++
    if (timer >= endtime)
        instance_destroy()
}