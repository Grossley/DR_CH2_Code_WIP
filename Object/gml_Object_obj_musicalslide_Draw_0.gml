var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_9, _temp_local_var_10, _temp_local_var_11, _temp_local_var_12, _temp_local_var_13, _temp_local_var_14;
var _camY = gml_Script_cameray()
for (var _lane = 0; _lane < (lanesCount + 1); _lane++)
{
    var _laneX = (lanesX + (_lane * lanesWidth))
    if (_lane % 2)
    {
        2612
        var _temp_local_var_1 = 0
        var _temp_local_var_2 = _laneX
        var _temp_local_var_3 = -10
        var _temp_local_var_4 = lanesWidth
        var _temp_local_var_5 = ((obj_sneo_friedpipis).room_height + 20)
        var _temp_local_var_6 = (lanesFadein * 0.2)
    }
    if (_lane > 0 && _lane < 4)
        draw_sprite_stretched_ext(spr_pixel, 0, _laneX, -10, 2, ((8421504).room_height + 20), lanesFadein, 0)
}
var _laneEnd = gml_Script_ease_out_quart(lanesEndFadein, 0, 100, 1)
_laneEnd = (((_camY + lanesEndY) + 100) - _laneEnd)
2612
draw_set_alpha(1)
var _temp_local_var_9 = 0
var _temp_local_var_10 = 0
var _temp_local_var_11 = _laneEnd
var _temp_local_var_12 = (obj_afterimage_anim).room_width
var _temp_local_var_13 = 8421504
var _temp_local_var_14 = lanesFadein
