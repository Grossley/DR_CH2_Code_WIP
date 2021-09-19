var _temp_local_var_1, _temp_local_var_2;
var __scriptdelay = gml_Script_instance_create(0, 0, obj_script_delayed)
__scriptdelay.script = argument[0]
alarm[0] = __scriptdelay
__scriptdelay.max_time = argument[1]
__scriptdelay.rate = argument[2]
__scriptdelay.constant = 1
__scriptdelay.target = id
var __i = 0
var _temp_local_var_1 = -2
while (__i < (argument_count - 3))
{
    script_arg[__i] = __scriptdelay
    __i++
    var _temp_local_var_2 = argument[(__i + 3)]
}
__scriptdelay.arg_count = (argument_count - 3)
return __scriptdelay;
