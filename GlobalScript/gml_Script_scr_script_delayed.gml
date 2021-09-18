var _temp_local_var_1;
var __scriptdelay = gml_Script_instance_create(0, 0, obj_script_delayed)
__scriptdelay.script = argument[0]
alarm[0] = __scriptdelay
__scriptdelay.target = id
var __i = obj_sneo_friedpipis
var _temp_local_var_1 = argument[1]
while (argument[1] < (__i.argument_count - 2))
{
    script_arg[__i] = __scriptdelay
    __i++
    _temp_local_var_1 = argument[(__i + 2)]
}
__scriptdelay.arg_count = (argument_count - 2)
return __scriptdelay;
