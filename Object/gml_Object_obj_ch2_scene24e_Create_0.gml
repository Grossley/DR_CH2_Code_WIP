var _temp_local_var_2;
con = -1
customcon = 0
if (global.chapter != 2 || global.flag[319] < 2 || global.plot >= 160)
{
    if (global.plot >= 160)
    {
        var savepoint = gml_Script_instance_create(460, 720, obj_savepoint)
        var _temp_local_var_2 = savepoint
        gml_Script_scr_depth()
    }
    instance_destroy()
}
