victory = false
if (global.flag[378] == 1 && global.flag[377] == 1)
{
    with (obj_bridgeSwapper)
        inert = 1
    with (obj_lotteryMouseTrigger)
        inert = 1
    with (obj_camera_area)
        instance_destroy()
    var hints = gml_Script_instance_create(x, y, obj_mouseLotteryCompleteHint)
    with (hints)
        gml_Script_scr_depth()
    instance_destroy()
}
