if (timertarg == 0 || timertarg == 1)
{
    with (obj_mainchara)
        cutscene = true
    gml_Script_safe_delete(obj_camera_advanced)
    gml_Script_safe_delete(obj_camera_area)
    gml_Script_scr_pan_to_obj(obj_mainchara, 20)
}
if (timer == 0)
{
    with (obj_mainchara)
        cutscene = true
    gml_Script_safe_delete(obj_camera_advanced)
    gml_Script_safe_delete(obj_camera_area)
    gml_Script_scr_pan_to_obj(obj_mainchara, timertarg)
}
timer++
if (timer >= (timertarg + 1))
{
    with (obj_mainchara)
        cutscene = false
    instance_destroy()
}
