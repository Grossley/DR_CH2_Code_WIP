if (timertarg == 0 || timertarg == 1)
{
    with (obj_mainchara)
        cutscene = true
    1155
    1157
    gml_Script_scr_pan_to_obj(80, 20)
}
if (timer == 0)
{
    with (obj_mainchara)
        cutscene = true
    1155
    1157
    gml_Script_scr_pan_to_obj(80, timertarg)
}
timer++
if (timer >= (timertarg + 1))
{
    with (obj_mainchara)
        cutscene = false
    // WARNING: Popz'd an empty stack.
}
