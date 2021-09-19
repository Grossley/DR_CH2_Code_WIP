visible = true
saucerCount = 0
complete = 0
if (global.flag[139] == 0)
    dothis = 1
else
{
    dothis = 0
    with (obj_saucer)
    {
        my_new = gml_Script_instance_create(x, y, obj_saucer)
        my_new.mode = 6
        instance_destroy()
    }
    if instance_exists(obj_saucer_ufo)
    {
        with (obj_saucer_ufo)
            instance_destroy()
    }
}
