var _temp_local_var_1, _temp_local_var_3, _temp_local_var_4;
if (init == 0)
{
    tiletype[0] = obj_marker
    tiletype[1] = obj_holemouse_block_counterclockwise
    tiletype[2] = obj_marker
    tiletype[3] = obj_marker
    tiletype[4] = obj_marker
    tiletype[5] = obj_holemouse_block_counterclockwise
    tiletype[6] = obj_marker
    tiletype[7] = obj_marker
    tiletype[8] = obj_holemouse_block_counterclockwise
    tiletype[9] = obj_marker
    rottype = 0
    hole = gml_Script_instance_create((x + 40), (y + 0), obj_marker)
    tilemax = 9
    randomseed = tilemax
    i = 0
    while (i <= tilemax)
    {
        tile[i] = gml_Script_instance_create(x, y, tiletype[i])
        var _temp_local_var_1 = tile[i]
    }
    tilemax++
    tile[tilemax] = gml_Script_instance_create((x + 40), y, obj_marker)
    ishole[tilemax] = 1
    with (obj_marker)
        visible = false
    visible = true
    init = 1
}
for (i = 0; i <= tilemax; i++)
{
    if (ishole[i] == 0)
        var _temp_local_var_3 = tile[i]
}
if (phase == 0)
    phase = 1
if (phase == 1)
{
}
if (phase == 2)
{
    if (x > lx)
        x -= max(4, (10 - (timer / 2)))
    else
    {
        x = lx
        phase = 3
    }
}
if (phase == 3)
{
    if 1166
    {
        if (obj_noelle_scared.waiting == 1)
            falltimer++
    }
}
for (i = 0; i <= tilemax; i++)
{
    if (ishole[i] == 0)
    {
        if tile[i]
            tile[i].__move = move
        if tile[i]
            var _temp_local_var_4 = tile[i]
        if tile[i]
            tilecon = tile[i].__con
    }
}
if tile[0]
{
    if (tile[0].__con == 0)
        moving = 0
    else
        moving = 1
}
