var _temp_local_var_1;
var _lane = argument0
var _frames = argument1
var _targetBeat = argument2
var _positionX = ((lanesX + (_lane * lanesWidth)) + (lanesWidth * 0.5))
var _temp_local_var_1 = instance_create_depth(_positionX, -30, 0, obj_slidebullet)
framesAway = 999
frames = _frames
targetBeat = _targetBeat
image_alpha = 0