if (con == 0)
{
    if (obj_mainchara_ch1.x >= (x - 60) && obj_mainchara_ch1.x <= (x + 60))
    {
        con = 1
        image_speed = 0.334
        alarm[4] = 15
    }
}
if (con == 2)
{
    image_index = 5
    image_speed = 0
    con = 3
    alarm[4] = 15
}
if (con == 4)
{
    eye_factor = 0
    draw_eye = 1
    maxy = (y + 100)
    sprite_index = spr_ponman_jump_ch1
    vspeed = -8
    gravity = 1.5
    con = 5
}
if (con == 5)
{
    if (eye_factor < 5)
        eye_factor += 1
    eye_angle = 270
    eye_radius = (((vspeed * eye_factor) / 5) * 0.7)
    if (y >= maxy)
    {
        sprite_index = spr_ponman_idle_ch1
        vspeed = 0
        gravity = 0
        con = 6
        alarm[4] = 5
        remspeed = 0
        stopped = 0
    }
}
if (con == 6)
    eye_radius *= 0.5
if (con == 7)
{
    if (global.interact == 0)
    {
        if (stopped == 1)
        {
            speed = remspeed
            stopped = 0
        }
        scr_depth_ch1()
        if (eye_radius < 8)
            eye_radius += 2
        eye_angle = point_direction((x + 32), (y + 28), (obj_mainchara_ch1.x + 20), (obj_mainchara_ch1.y + 20))
        image_speed = 0.25
        direction = eye_angle
        maxspeed = 13
        if (global.flag[502] == 1)
            maxspeed = 11
        if (global.flag[502] >= 2)
            maxspeed = 9
        if (room == room_field_checkers5_ch1)
            maxspeed = 9
        if (speed < maxspeed)
            speed += 2
        if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_mainchara_ch1, 0, 1)
        {
            myencounter = 13
            if (global.flag[502] == 1)
                myencounter = 14
            if (global.flag[502] >= 2)
                myencounter = choose(13, 14)
            if (room == room_field_checkers5_ch1)
                myencounter = 14
            global.flag[502] += 1
            newme = instance_create_ch1(x, y, obj_testoverworldenemy_ch1)
            newme.sprite_index = spr_ponman_touched_ch1
            newme.touchsprite = spr_ponman_touched_ch1
            newme.slidesprite = spr_ponman_touched_ch1
            newme.image_index = 5
            newme.image_speed = 0
            with (newme)
            {
                event_user(0)
                scr_depth_ch1()
            }
            global.encounterno = myencounter
            with (obj_ponman_appear_ch1)
                fadecon = 1
            instance_destroy()
        }
    }
    if (global.interact != 0)
    {
        stopped = 1
        remspeed = speed
        speed = 0
        image_speed = 0
    }
}
if (fadecon == 1)
{
    if instance_exists(obj_battlecontroller_ch1)
        instance_destroy()
}
eyex = lengthdir_x(eye_radius, eye_angle)
eyey = lengthdir_y(eye_radius, eye_angle)
