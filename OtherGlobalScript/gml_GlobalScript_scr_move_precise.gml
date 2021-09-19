_moveprecise = gml_Script_instance_create(x, y, obj_move_precise)
_moveprecise.target = id
_moveprecise.type = argument0
if (argument1 != 0)
    _moveprecise.xOrientation = argument1
if (argument2 != 0)
    _moveprecise.yOrientation = argument2
var _temp_local_var_1 = _moveprecise
event_user(0)
