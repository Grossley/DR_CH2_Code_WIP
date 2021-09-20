_tempVector = instance_create(obj_84_lang_helper)
_tempVector.x = argument[0]
_tempVector.y = argument[1]
_tempVector._dir = point_direction(0, 0, argument0, argument1)
_tempVector._len = point_distance(0, 0, argument0, argument1)
_tempVector.x = lengthdir_x(_len, (_dir + argument2))
_tempVector.y = lengthdir_y(_len, (_dir + argument2))
return _tempVector;
