var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7, _temp_local_var_8, _temp_local_var_9, _temp_local_var_10, _temp_local_var_11, _temp_local_var_12;
if gml_Script_i_ex(target)
{
    target.__scipt = script
    i = 0
    while (i < 10)
    {
        __scipt_arg[i] = target
        i++
        var _temp_local_var_1 = script_arg[i]
    }
    if (arg_count == 0)
    {
        var _temp_local_var_2 = target
        script_execute(__scipt)
    }
    if (arg_count == 1)
    {
        var _temp_local_var_3 = target
        script_execute(__scipt, __scipt_arg[0])
    }
    if (arg_count == 2)
    {
        var _temp_local_var_4 = target
        script_execute(__scipt, __scipt_arg[0], __scipt_arg[1])
    }
    if (arg_count == 3)
    {
        var _temp_local_var_5 = target
        script_execute(__scipt, __scipt_arg[0], __scipt_arg[1], __scipt_arg[2])
    }
    if (arg_count == 4)
    {
        var _temp_local_var_6 = target
        script_execute(__scipt, __scipt_arg[0], __scipt_arg[1], __scipt_arg[2], __scipt_arg[3])
    }
    if (arg_count == 5)
    {
        var _temp_local_var_7 = target
        script_execute(__scipt, __scipt_arg[0], __scipt_arg[1], __scipt_arg[2], __scipt_arg[3], __scipt_arg[4])
    }
    if (arg_count == 6)
    {
        var _temp_local_var_8 = target
        script_execute(__scipt, __scipt_arg[0], __scipt_arg[1], __scipt_arg[2], __scipt_arg[3], __scipt_arg[4], __scipt_arg[5])
    }
    if (arg_count == 7)
    {
        var _temp_local_var_9 = target
        script_execute(__scipt, __scipt_arg[0], __scipt_arg[1], __scipt_arg[2], __scipt_arg[3], __scipt_arg[4], __scipt_arg[5], __scipt_arg[6])
    }
    if (arg_count == 8)
    {
        var _temp_local_var_10 = target
        script_execute(__scipt, __scipt_arg[0], __scipt_arg[1], __scipt_arg[2], __scipt_arg[3], __scipt_arg[4], __scipt_arg[5], __scipt_arg[6], __scipt_arg[7])
    }
    if (arg_count == 9)
    {
        var _temp_local_var_11 = target
        script_execute(__scipt, __scipt_arg[0], __scipt_arg[1], __scipt_arg[2], __scipt_arg[3], __scipt_arg[4], __scipt_arg[5], __scipt_arg[6], __scipt_arg[7], __scipt_arg[8])
    }
    if (arg_count == 10)
    {
        var _temp_local_var_12 = target
        script_execute(__scipt, __scipt_arg[0], __scipt_arg[1], __scipt_arg[2], __scipt_arg[3], __scipt_arg[4], __scipt_arg[5], __scipt_arg[6], __scipt_arg[7], __scipt_arg[8], __scipt_arg[9])
    }
}
