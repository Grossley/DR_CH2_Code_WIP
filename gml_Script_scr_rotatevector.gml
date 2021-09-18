___struct___0 = method(@@NullObject@@(), gml_Script____struct___0_scr_rotatevector_gml_GlobalScript_scr_rotatevector)
var _tempVector = @@NewGMLObject@@(method(@@NullObject@@(), gml_Script____struct___0_scr_rotatevector_gml_GlobalScript_scr_rotatevector), argument0, argument1)
if (argument2 == 0)
    return _tempVector;
var _dir = point_direction(0, 0, argument0, argument1)
var _len = point_distance(0, 0, argument0, argument1)
_tempVector.x = lengthdir_x(_len, (_dir + argument2))
_tempVector.y = lengthdir_y(_len, (_dir + argument2))
return _tempVector;
