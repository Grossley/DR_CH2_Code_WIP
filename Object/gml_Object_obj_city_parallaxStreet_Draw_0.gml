drawx = (((gml_Script___view_get(0, 0) + auto) * ss) + xstart)
sprite_index
animsiner++
var i = 0
var _temp_local_var_1 = obj_sneo_friedpipis
var _temp_local_var_2 = drawx
var _temp_local_var_3 = 0
var _temp_local_var_4 = 0
var _temp_local_var_5 = y
var _temp_local_var_6 = (gml_Script_cameray() + view_hport[0]).room_width
var _temp_local_var_7 = 1
var _temp_local_var_8 = 1
var _temp_local_var_9 = c_dark
var _temp_local_var_10 = 1
while (i < max_cars)
{
    for (var j = 0; j < 2; j++)
    {
        var y_offset = 0
        if ((obj_sneo_friedpipis).room == room_dw_city_traffic_2)
            var _temp_local_var_11 = 1
        else
            _temp_local_var_2 = drawx.room == room_dw_city_big_2
        if 1
            y_offset = -20
        var ypos = (j == 1 ? (404 + y_offset) : 444)
        _temp_local_var_1 = car_timer[i][j]
        if (0 > (((car_pos[i][j] + car_timer[i][j]).room_width * 2) + 50))
        {
            car_pos[i][j] = -50
            car_timer[i][j] = 0
        }
        var xpos = ((car_pos[i][j] + drawx) + car_timer[i][j])
        if (nocars == 0)
            draw_sprite_ext(spr_traffic_car_side_wheels_small, (animsiner / 6), xpos, ypos, 2, 2, 0, c_dark, 1)
    }
    i++
}
