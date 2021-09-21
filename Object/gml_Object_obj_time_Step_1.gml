if (!paused)
{
    global.time += 1
    if (global.is_console && os_is_paused())
    {
        paused = 1
        if (!sprite_exists(screenshot))
        {
            var sw = surface_get_width(application_surface)
            var sh = surface_get_height(application_surface)
            screenshot = sprite_create_from_surface(application_surface, 0, 0, sw, sh, false, false, 0, 0)
        }
        return;
    }
}
else
    return;
if gml_Script_scr_debug()
{
    if (quicksaved != 2)
    {
        if gml_Script_scr_84_debug(true)
            return;
    }
    if (keyboard_check_pressed(vk_f6) && quicksaved == 22)
    {
        quicksaved = 1
        remmyfight = global.myfight
        remmnfight = global.mnfight
        reminteract = global.interact
        remturntimer = global.turntimer
        remcamerax = gml_Script_camerax()
        remcameray = gml_Script_cameray()
        for (var i = 0; i < instance_count; i++)
        {
            instance_list[i] = instance_id_get(i)
            xstart_list[i] = instance_list[i].xstart
            ystart_list[i] = instance_list[i].ystart
            object_list[i] = instance_list[i].object_index
            with (instance_list[i])
                __quickSaved = 1
            __masterArray = variable_instance_get_names(instance_list[i])
            __arrayLength[i] = array_length_1d(__masterArray)
            for (var __n = 0; __n < __arrayLength[i]; __n++)
            {
                __remArray[i][__n] = __masterArray[__n]
                ___saveSpriteIndex[i] = instance_list[i].sprite_index
                ___saveImageIndex[i] = instance_list[i].image_index
                ___saveXscale[i] = instance_list[i].image_xscale
                ___saveYscale[i] = instance_list[i].image_yscale
                ___saveAlpha[i] = instance_list[i].image_alpha
                ___saveBlend[i] = instance_list[i].image_blend
                ___saveAngle[i] = instance_list[i].image_angle
                ___saveX[i] = instance_list[i].x
                ___saveY[i] = instance_list[i].y
                ___saveSpeed[i] = instance_list[i].speed
                ___saveDirection[i] = instance_list[i].direction
                ___saveDepth[i] = instance_list[i].depth
                ___saveVisible[i] = instance_list[i].visible
                ___saveGravity[i] = instance_list[i].gravity
                ___saveGravityDirection[i] = instance_list[i].gravity_direction
                ___saveFriction[i] = instance_list[i].friction
                if (__masterArray[__n] == "__myVar")
                    __myVar[i][__n] = 0
                else
                    __myVar[i][__n] = variable_instance_get(instance_list[i], __masterArray[__n])
            }
        }
        reminstancecount = instance_count
    }
    if (quicksaved == 2)
        quicksaved = 1
    if (keyboard_check_pressed(vk_f7) && quicksaved == 99)
    {
        global.myfight = remmyfight
        global.mnfight = remmnfight
        global.interact = reminteract
        global.turntimer = remturntimer
        gml_Script_camerax_set(remcamerax)
        gml_Script_cameray_set(remcameray)
        with (all)
        {
            if (object_index != obj_time && object_index != obj_gamecontroller)
                instance_change(obj_doom, false)
        }
        with (obj_doom)
            instance_destroy()
        for (i = 0; i < reminstancecount; i++)
        {
            if (!gml_Script_i_ex(instance_list[i]))
            {
                instance_list[i] = gml_Script_instance_create(xstart_list[i], ystart_list[i], obj_marker)
                instance_list[i].__changeobject = object_list[i]
                with (instance_list[i])
                    instance_change(__changeobject, false)
            }
        }
        for (i = 0; i < reminstancecount; i++)
        {
            for (__n = 0; __n < __arrayLength[i]; __n++)
            {
                instance_list[i].sprite_index = ___saveSpriteIndex[i]
                instance_list[i].image_index = ___saveImageIndex[i]
                instance_list[i].image_xscale = ___saveXscale[i]
                instance_list[i].image_yscale = ___saveYscale[i]
                instance_list[i].image_alpha = ___saveAlpha[i]
                instance_list[i].image_blend = ___saveBlend[i]
                instance_list[i].image_angle = ___saveAngle[i]
                instance_list[i].x = ___saveX[i]
                instance_list[i].y = ___saveY[i]
                instance_list[i].speed = ___saveSpeed[i]
                instance_list[i].direction = ___saveDirection[i]
                instance_list[i].depth = ___saveDepth[i]
                instance_list[i].visible = ___saveVisible[i]
                instance_list[i].gravity = ___saveGravity[i]
                instance_list[i].gravity_direction = ___saveGravityDirection[i]
                instance_list[i].friction = ___saveFriction[i]
                if (__remArray[i][__n] != "__myVar" && __remArray[i][__n] != "__masterArray")
                    variable_instance_set(id, __remArray[i][__n], __myVar[i][__n])
            }
        }
        quicksaved = 2
    }
}
if keyboard_check(vk_escape)
{
    if (quit_timer < 0)
        quit_timer = 0
    quit_timer += 1
    if (quit_timer >= 30)
        game_end()
}
else
    quit_timer -= 2
if (keyboard_check_pressed(vk_f4) || fullscreen_toggle == 1)
    alarm[1] = 1
for (i = 0; i < 10; i += 1)
{
    global.input_released[i] = 0
    global.input_pressed[i] = 0
}
gamepad_check_timer += 1
if (gamepad_check_timer >= 90)
{
    if (!gamepad_is_connected(obj_gamecontroller.gamepad_id))
    {
        var gp_num = gamepad_get_device_count()
        var any_connected = 0
        i = 0
        while (i < gp_num)
        {
            if gamepad_is_connected(i)
            {
                obj_gamecontroller.gamepad_active = 1
                obj_gamecontroller.gamepad_id = i
                any_connected = 1
                break
            }
            else
            {
                i++
                continue
            }
        }
        if (any_connected == 0)
            obj_gamecontroller.gamepad_active = 0
    }
    gamepad_check_timer = 0
}
if (obj_gamecontroller.gamepad_active == 1 && quicksaved != 2)
{
    for (i = 0; i < 4; i += 1)
    {
        if (keyboard_check(global.input_k[i]) || (gml_Script_i_ex(obj_gamecontroller) && (gamepad_button_check(obj_gamecontroller.gamepad_id, global.input_g[i]) || gml_Script_scr_gamepad_axis_check(obj_gamecontroller.gamepad_id, i))))
        {
            if (global.input_held[i] == 0)
                global.input_pressed[i] = 1
            global.input_held[i] = 1
        }
        else
        {
            if (global.input_held[i] == 1)
                global.input_released[i] = 1
            global.input_held[i] = 0
        }
    }
    for (i = 4; i < 10; i += 1)
    {
        if (keyboard_check(global.input_k[i]) || (gml_Script_i_ex(obj_gamecontroller) && gamepad_button_check(obj_gamecontroller.gamepad_id, global.input_g[i])))
        {
            if (global.input_held[i] == 0)
                global.input_pressed[i] = 1
            global.input_held[i] = 1
        }
        else
        {
            if (global.input_held[i] == 1)
                global.input_released[i] = 1
            global.input_held[i] = 0
        }
    }
}
else
{
    for (i = 0; i < 10; i += 1)
    {
        if keyboard_check(global.input_k[i])
        {
            if (global.input_held[i] == 0)
                global.input_pressed[i] = 1
            global.input_held[i] = 1
        }
        else
        {
            if (global.input_held[i] == 1)
                global.input_released[i] = 1
            global.input_held[i] = 0
        }
    }
}
if gml_Script_scr_debug()
{
    if mouse_check_button_pressed(mb_middle)
        gml_Script_instance_create(0, 0, obj_debug_xy)
    if keyboard_check_pressed(ord("À"))
    {
        if (room_speed == 30)
            room_speed = (150 - (140 * keyboard_check(vk_control)))
        else
            room_speed = 30
    }
}
