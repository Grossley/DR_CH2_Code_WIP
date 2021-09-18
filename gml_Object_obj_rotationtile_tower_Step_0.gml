var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_8, _temp_local_var_12;
drawx = x
drawy = y
image_blend = merge_color(c_white, c_black, max(0, ((y - 240) / 240)))
if (init == 0)
{
    if (starter == 1)
        pattern = 4
    else
        pattern = choose(0, 1, 2, 3)
    if (pattern == 0)
    {
        tiletype[0] = obj_marker
        tiletype[1] = obj_marker
        tiletype[2] = obj_marker
        tiletype[3] = obj_marker
        tiletype[4] = obj_holemouse_block_clockwise
        tiletype[5] = obj_marker
        tiletype[6] = obj_holemouse_block_counterclockwise
        tiletype[7] = obj_holemouse_block_clockwise
        rottype = 0
        patidealy = (220 + (40 * choose(1, 2)))
        puzSwitch = gml_Script_instance_create((x + 120), (((y + patidealy) - 220) + 40), obj_mice3_platSwitch)
        hole = gml_Script_instance_create((x + 40), (y + 0), obj_holemouse_generator)
        staticTile[0] = gml_Script_instance_create((x + 0), (y + 0), obj_holemouse_invis_clockwise)
        staticTile[1] = gml_Script_instance_create((x + 80), (y + 0), obj_holemouse_invis_clockwise)
        staticTile[2] = gml_Script_instance_create((x + 0), (y + 160), obj_holemouse_invis_clockwise)
        staticTile[3] = gml_Script_instance_create((x + 40), (y + 160), obj_holemouse_invis_clockwise)
        staticTile[4] = gml_Script_instance_create((x + 80), (y + 160), obj_holemouse_invis_clockwise)
    }
    if (pattern == 1)
    {
        tiletype[0] = obj_holemouse_block_clockwise
        tiletype[1] = obj_holemouse_block_clockwise
        tiletype[2] = obj_marker
        tiletype[3] = obj_marker
        tiletype[4] = obj_marker
        tiletype[5] = obj_marker
        rottype = 1
        staticTile[0] = gml_Script_instance_create((x + 0), (y + 0), obj_holemouse_invis_clockwise)
        staticTile[1] = gml_Script_instance_create((x + 80), (y + 0), obj_holemouse_invis_clockwise)
        staticTile[2] = gml_Script_instance_create((x + 0), (y + 160), obj_holemouse_invis_clockwise)
        staticTile[3] = gml_Script_instance_create((x + 40), (y + 160), obj_holemouse_invis_clockwise)
        staticTile[4] = gml_Script_instance_create((x + 80), (y + 160), obj_holemouse_invis_clockwise)
        hole = gml_Script_instance_create((x + 40), (y + 0), obj_holemouse_generator)
        patidealy = (220 + (40 * choose(0, 1, 2)))
        if 1180
        {
            var _temp_local_var_1 = obj_masterPlatformController.noelle
            idealy = other.patidealy
        }
        puzSwitch = gml_Script_instance_create((x + 120), (((y + patidealy) - 220) + 40), obj_mice3_platSwitch)
    }
    if (pattern == 2)
    {
        tiletype[0] = obj_marker
        tiletype[1] = obj_marker
        tiletype[2] = obj_holemouse_block_counterclockwise
        tiletype[3] = obj_marker
        tiletype[4] = obj_marker
        tiletype[5] = obj_marker
        tiletype[6] = obj_holemouse_block_counterclockwise
        tiletype[7] = obj_holemouse_block_clockwise
        rottype = 0
        patidealy = (220 + (40 * choose(1, 2)))
        if instance_exists(obj_masterPlatformController)
        {
            var _temp_local_var_2 = obj_masterPlatformController.noelle
            idealy = other.patidealy
        }
        puzSwitch = gml_Script_instance_create((x + 120), (((y + patidealy) - 220) + 40), obj_mice3_platSwitch)
        hole = gml_Script_instance_create((x + 0), (y + 0), obj_holemouse_generator)
        staticTile[0] = gml_Script_instance_create((x + 40), (y + 0), obj_holemouse_invis_counterclockwise)
        staticTile[1] = gml_Script_instance_create((x + 80), (y + 0), obj_holemouse_invis_counterclockwise)
        staticTile[2] = gml_Script_instance_create((x + 0), (y + 160), obj_holemouse_invis_clockwise)
        staticTile[3] = gml_Script_instance_create((x + 40), (y + 160), obj_holemouse_invis_clockwise)
        staticTile[4] = gml_Script_instance_create((x + 80), (y + 160), obj_holemouse_invis_clockwise)
    }
    if (pattern == 3)
    {
        tiletype[0] = obj_marker
        tiletype[1] = obj_marker
        tiletype[2] = obj_marker
        tiletype[3] = obj_marker
        tiletype[4] = obj_marker
        tiletype[5] = obj_marker
        tiletype[6] = obj_holemouse_block_counterclockwise
        tiletype[7] = obj_holemouse_block_clockwise
        rottype = 0
        patidealy = (220 + (40 * choose(0, 2)))
        if instance_exists(obj_masterPlatformController)
        {
            var _temp_local_var_3 = obj_masterPlatformController.noelle
            idealy = other.patidealy
        }
        puzSwitch = gml_Script_instance_create((x + 120), (((y + patidealy) - 220) + 40), obj_mice3_platSwitch)
        hole = gml_Script_instance_create((x + 0), (y + 0), obj_holemouse_generator)
        staticTile[0] = gml_Script_instance_create((x + 40), (y + 0), obj_holemouse_invis_counterclockwise)
        staticTile[1] = gml_Script_instance_create((x + 80), (y + 0), obj_holemouse_invis_counterclockwise)
        staticTile[2] = gml_Script_instance_create((x + 0), (y + 160), obj_holemouse_invis_clockwise)
        staticTile[3] = gml_Script_instance_create((x + 40), (y + 160), obj_holemouse_invis_clockwise)
        staticTile[4] = gml_Script_instance_create((x + 80), (y + 160), obj_holemouse_invis_clockwise)
        staticTile[5] = gml_Script_instance_create((x + 40), (y + 80), obj_holemouse_block_clockwise)
    }
    if (pattern == 4)
    {
        tiletype[0] = obj_marker
        tiletype[1] = obj_marker
        tiletype[2] = obj_marker
        tiletype[3] = obj_marker
        tiletype[4] = obj_marker
        tiletype[5] = obj_holemouse_block_clockwise
        tiletype[6] = obj_holemouse_block_clockwise
        tiletype[7] = obj_marker
        rottype = 0
        patidealy = 260
        if instance_exists(obj_masterPlatformController)
        {
            var _temp_local_var_4 = obj_masterPlatformController.noelle
            idealy = other.patidealy
        }
        puzSwitch = gml_Script_instance_create((x + 120), (((y + patidealy) - 220) + 40), obj_mice3_platSwitch)
        hole = gml_Script_instance_create((x + 40), (y + 0), obj_holemouse_generator)
        staticTile[0] = gml_Script_instance_create((x + 0), (y + 0), obj_holemouse_invis_counterclockwise)
        staticTile[1] = gml_Script_instance_create((x + 80), (y + 0), obj_holemouse_invis_counterclockwise)
        staticTile[2] = gml_Script_instance_create((x + 0), (y + 160), obj_holemouse_invis_clockwise)
        staticTile[3] = gml_Script_instance_create((x + 40), (y + 160), obj_holemouse_invis_clockwise)
        staticTile[4] = gml_Script_instance_create((x + 80), (y + 160), obj_holemouse_invis_clockwise)
    }
    if (rottype == 0)
    {
        tilemax = 7
        randomseed = floor(random(tilemax))
        i = 0
        while (i <= tilemax)
        {
            ishole[i] = 0
            tile[i] = gml_Script_instance_create(x, (y + 40), tiletype[i])
            var _temp_local_var_5 = tile[i]
            gml_Script_scr_mouse_tile_rotation_init()
        }
        tilemax++
        tile[tilemax] = gml_Script_instance_create((x + 40), y, obj_marker)
        ishole[tilemax] = 1
    }
    if (rottype == 1)
    {
        tilemax = 5
        randomseed = floor(random(tilemax))
        i = 0
        while (i <= tilemax)
        {
            tile[i] = gml_Script_instance_create(x, (y + 80), tiletype[i])
            var _temp_local_var_6 = tile[i]
            gml_Script_scr_mouse_tile_rotation_init()
        }
        tilemax++
        tile[tilemax] = gml_Script_instance_create((x + 40), y, obj_marker)
        ishole[tilemax] = 1
    }
    with (obj_marker)
        visible = false
    visible = true
    init = 1
}
for (i = 0; i <= tilemax; i++)
{
    if (ishole[i] == 0)
    {
        var _temp_local_var_8 = tile[i]
        gml_Script_scr_mouse_tile_rotation_step()
    }
}
if (phase == 0)
{
    if (freeze == 0)
    {
        timer++
        if (x > rx || y > ry)
        {
            if (x > rx)
                x -= max(4, (20 - (timer / 2)))
            else
                x = rx
            if (y > (ry + 2))
                y = lerp(y, ry, 0.25)
            else
                y = ry
        }
        else
        {
            timer = 0
            phase = 1
            x = rx
            y = ry
        }
    }
}
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
    if (freeze == 0)
        falltimer++
    if (falltimer >= (fallthreshhold - 90))
        x = (lx + random_range(-2, 2))
    if (falltimer >= fallthreshhold)
    {
        with (obj_masterPlatformController)
            failure = 1
        phase = 3.5
    }
}
if keyboard_check_pressed(ord("F"))
    falltimer = (fallthreshhold - 15)
if (phase == 3.5)
{
    failure = 1
    hole.closed = 1
    if gml_Script_i_ex(1165)
        gml_Script_snd_play(176)
    if gml_Script_i_ex(1165)
    {
        with (obj_holemouse)
        {
            jumper = gml_Script_scr_afterimage()
            gml_Script_scr_jump_to_point((x + random_range(-40, 40)), ((obj_fountainkris_ch2_sideb).room_height + (sprite_height * 2)), 16, jumper)
        }
        jumper.sprite_index = spr_holemouse_emerge
        instance_destroy()
    }
    phase = 4
}
if (phase == 4)
{
    gravity = 1.5
    hole.closed = 1
    if (failure == 1)
    {
        x = (lx + random_range(-2, 2))
        if (y >= 600)
        {
            obj_masterPlatformController.makenewplatform = 1
            instance_destroy()
        }
    }
    else
    {
        hspeed = -8
        phase = 5
    }
}
if (phase == 5)
{
    if (y >= 600)
        instance_destroy()
}
if (hole.mousecreate == 1 || instance_exists(obj_holemouse) || phase < 3 || failure == 1 || (instance_exists(obj_mouseTowerTrigger) && obj_mouseTowerTrigger.blocked == 1))
    move = 0
for (i = 0; i <= tilemax; i++)
{
    if (ishole[i] == 0)
    {
        if gml_Script_i_ex(tile[i])
            tile[i].__move = move
        if gml_Script_i_ex(tile[i])
        {
            var _temp_local_var_12 = tile[i]
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
