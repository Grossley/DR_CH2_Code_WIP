var _temp_local_var_1;
with (obj_lerppitch)
{
    if (sndtarget == argument0)
        instance_destroy()
}
var pitchthing = gml_Script_instance_create(0, 0, obj_lerppitch)
pitchthing.sndtarget = argument0
pitchthing.targetpitch = argument1
pitchthing.maxframes = argument2
var _temp_local_var_1 = pitchthing
event_user(0)
