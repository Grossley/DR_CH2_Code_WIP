if (init == false)
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
    randomseed = floor(random(tilemax))
    for (i = 0; i <= tilemax; i++)
    {
        tile[i] = gml_Script_instance_create(x, y, tiletype[i])
        with (tile[i])
            gml_Script_scr_mouse_tile_rotation_init()
        randompos = (i + randomseed)
        if (randompos > tilemax)
            randompos -= (tilemax + 1)
        tile[i].__currentposition = randompos
        tile[i].__positionmax = 9
        with (tile[i])
        {
            __positionx[0] = 0
            __positiony[0] = 0
            __positionx[1] = 40
            __positiony[1] = 0
            __positionx[2] = 80
            __positiony[2] = 0
            __positionx[3] = 80
            __positiony[3] = 40
            __positionx[4] = 80
            __positiony[4] = 80
            __positionx[5] = 80
            __positiony[5] = 120
            __positionx[6] = 40
            __positiony[6] = 120
            __positionx[7] = 0
            __positiony[7] = 120
            __positionx[8] = 0
            __positiony[8] = 80
            __positionx[9] = 0
            __positiony[9] = 40
        }
    }
    tilemax++
    tile[tilemax] = gml_Script_instance_create((x + 40), y, obj_marker)
    ishole[tilemax] = 1
    with (obj_marker)
        visible = false
    visible = true
    init = true
}
for (i = 0; i <= tilemax; i++)
{
    if (ishole[i] == 0)
    {
        with (tile[i])
            gml_Script_scr_mouse_tile_rotation_step()
    }
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
    if instance_exists(obj_noelle_scared)
    {
        if (obj_noelle_scared.waiting == 1)
            falltimer++
    }
}
for (i = 0; i <= tilemax; i++)
{
    if (ishole[i] == 0)
    {
        if gml_Script_i_ex(tile[i])
            tile[i].__move = move
        if gml_Script_i_ex(tile[i])
        {
            with (tile[i])
                gml_Script_scr_mouse_tile_rotation_step()
        }
        if gml_Script_i_ex(tile[i])
            tilecon = tile[i].__con
    }
}
if gml_Script_i_ex(tile[0])
{
    if (tile[0].__con == 0)
        moving = 0
    else
        moving = 1
}
