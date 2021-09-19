var _temp_local_var_1, _temp_local_var_2;
if (init == 1)
{
    if gml_Script_i_ex(body_obj)
    {
        var _temp_local_var_1 = body_obj
        instance_destroy()
    }
    if gml_Script_i_ex(target)
    {
        var _temp_local_var_2 = target
        visible = true
    }
}
