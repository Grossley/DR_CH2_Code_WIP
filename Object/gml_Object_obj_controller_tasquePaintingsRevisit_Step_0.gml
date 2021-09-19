var _temp_local_var_1, _temp_local_var_5;
if (init == 0)
{
    var _temp_local_var_1 = tasque
    path_start(path_tasquePaintings_tasque, 200, path_action_continue, 1)
}
if (gml_Script_i_ex(tasque) && gml_Script_i_ex(swatch))
{
    if (global.interact == 0)
    {
        pathProg += 0.6
        timer++
    }
    if (pathProg > 100)
        pathProg -= 100
    pathProg2 = (pathProg + 50)
    if (pathProg2 > 100)
        pathProg2 -= 100
    tasque.path_position = (pathProg / 100)
    swatch.path_position = (pathProg2 / 100)
    switch swatch
    {
        case 90:
            var _temp_local_var_5 = 1
    }

    if (direction == 180)
        facing = 0
    if (direction == 270 || direction == 0)
        facing = 1
}
