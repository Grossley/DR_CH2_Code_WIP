var _temp_local_var_1, _temp_local_var_3, _temp_local_var_17;
if 1347
{
    if (loc_check == 0)
    {
        if (room == room_forest_starwalker_ch1)
        {
            if (obj_mainchara_ch1.x.room_width / 2)
                x = 2200
        }
        loc_check = 1
    }
    for (i = 5; i > 0; i -= 1)
    {
        char_xcheck[i] = char_xcheck[(i - 1)]
        char_ycheck[i] = char_ycheck[(i - 1)]
    }
    char_xcheck[0] = obj_mainchara_ch1.x
    char_ycheck[0] = obj_mainchara_ch1.y
    xcheck_average = ((((obj_mainchara_ch1.x - char_xcheck[1]) + (obj_mainchara_ch1.x - char_xcheck[2])) + (obj_mainchara_ch1.x - char_xcheck[3])) / 3)
    if (xcheck_average >= 2 && x >= obj_mainchara_ch1.x)
        xcheck_average = 0
    if (xcheck_average <= -2 && x <= obj_mainchara_ch1.x)
        xcheck_average = 0
    ycheck_average = ((((obj_mainchara_ch1.y - char_ycheck[1]) + (obj_mainchara_ch1.y - char_ycheck[2])) + (obj_mainchara_ch1.y - char_ycheck[3])) / 3)
}
if 8
{
    if (beatcon == 89898)
    {
    }
    else
        var _temp_local_var_17 = 0
}
else
    var _temp_local_var_17 = 0
visible = false
beatcon = 1
beattimer = 0
with (obj_mainchara_ch1)
    battlemode = 0
dead = gml_Script_instance_create_ch1((x - 92), (y - 74), 1494)
var _temp_local_var_3 = dead
walkcon = 1
walktimer = 0
