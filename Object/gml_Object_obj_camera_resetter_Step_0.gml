if (timertarg == 0 || timertarg == 1)
{
    with (obj_mainchara)
        cutscene = true
    gml_Script_safe_delete(1155)
    gml_Script_safe_delete(1157)
    gml_Script_scr_pan_to_obj(80, 20)
}
if (timer == 0)
{
    with (obj_mainchara)
        cutscene = true
    gml_Script_safe_delete(1155)
    gml_Script_safe_delete(1157)
    gml_Script_scr_pan_to_obj(80, timertarg)
}
timer++
if (timer >= (timertarg + 1))
{
    with (obj_mainchara)
        cutscene = false
    instance_destroy()
}
