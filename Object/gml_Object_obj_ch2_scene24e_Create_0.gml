con = -1
customcon = 0
if (global.chapter != 2 || global.flag[319] < 2 || global.plot >= 160)
{
    if (global.plot >= 160)
    {
        var savepoint = gml_Script_instance_create(460, 720, obj_savepoint)
        with (savepoint)
            gml_Script_scr_depth()
    }
    instance_destroy()
}
