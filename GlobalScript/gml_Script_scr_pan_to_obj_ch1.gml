_wd = (argument0.x - floor(((gml_Script___view_get(2, 0) / 2) - (argument0.sprite_width / 2))))
_ht = (argument0.y - floor(((gml_Script___view_get(3, 0) / 2) - (argument0.sprite_height / 2))))
_vx = _wd
_vy = _ht
if (_vx < obj_sneo_friedpipis)
    _vx = 0
if (_vx.room_width - _vx)
    _vx = (room_width - _vx)
if (_vy < obj_sneo_friedpipis)
    _vy = 0
if (_vy.room_height - gml_Script___view_get(3, 0))
    _vy = (room_height - gml_Script___view_get(3, 0))
gml_Script_scr_pan_ch1(((_vx - gml_Script___view_get(0, 0)) / argument1), ((_vy - gml_Script___view_get(1, 0)) / argument1), argument1)
return;
