if active
{
    gml_Script_scr_depth()
    block = 0
    if (!pause_x_move)
        hspeed = 6
    else
        hspeed = 0
    gml_Script___view_set(0, 0, (gml_Script___view_get(0, 0) + hspeed))
    var canmove = 1
    if (room == room_dw_city_traffic_4)
    {
        if (x < 1080)
            canmove = 0
    }
    if canmove
    {
        if (y > 120 && gml_Script_up_h())
            y -= 5
        if (y < 240 && gml_Script_down_h())
            y += 5
    }
    if (gml_Script_left_h() && x > (gml_Script_camerax() + 20))
    {
        x -= 3
        if (hits < 4)
            block = 1
    }
    if (gml_Script_right_h() && x < (gml_Script_camerax() + 100))
        x += 6
    if instance_exists(obj_mainchara)
    {
        obj_mainchara.x = (x + 85)
        obj_mainchara.y = y
    }
    cartimer++
    if (cartimer >= (carthreshold - min((hits / 2), 6)) && talktimer < 860)
    {
        var y_pos = 0
        var random_y = irandom(1)
        if bananamode
            y_pos = (random_y == 0 ? random_range(110, 150) : random_range(260, 280))
        else
            y_pos = (100 + random(180))
        y_pos = clamp(y_pos, 140, 366)
        car = gml_Script_instance_create((gml_Script_camerax() + 700), y_pos, obj_caradventure_car_enemy)
        with (car)
            gml_Script_scr_depth()
    }
    if (triggertalk == 1)
    {
        talkshowtimer = 120
        triggertalk = 0
    }
    talktimer++
    if (talktimer == 30)
    {
        if (remy == y)
        {
            triggertalk = 1
            gml_Script_scr_speaker("queen")
            global.fe = 1
            if (global.is_console || obj_gamecontroller.gamepad_active)
            {
                gml_Script_msgsetloc(0, "\\E0* Kris Press Directional Buttons To Steer/%", "obj_caradventure_car_slash_Step_0_gml_80_0_b")
                if (null.os_type == os_ps4)
                {
                    if (global.lang == "ja")
                        gml_Script_msgsetloc(0, "\\E0* Kris Press Directions To Steer/%", "obj_caradventure_car_slash_Step_0_gml_57_0")
                }
            }
            else
                gml_Script_msgsetloc(0, "\\E0* Kris Press Directions To Steer/%", "obj_caradventure_car_slash_Step_0_gml_57_0")
            var d = gml_Script_d_make()
            d.side = 1
            d.zurasu = 1
        }
        else
        {
            cartimer += 90
            talktimer += 90
        }
    }
    if (talktimer == 120)
    {
        if instance_exists(obj_writer)
        {
            if (obj_writer.halt != 0)
            {
                with (obj_writer)
                    forcebutton1 = 1
            }
        }
        triggertalk = 1
        gml_Script_scr_speaker("queen")
        gml_Script_msgsetloc(0, "\\EE* Kris Don't Hit The Cars!/%", "obj_caradventure_car_slash_Step_0_gml_80_0")
        d = gml_Script_d_make()
        d.side = 1
        d.zurasu = 1
    }
    if (talktimer < 270 && hits == 1 && hittalk == 0)
    {
        if instance_exists(obj_writer)
        {
            if (obj_writer.halt != 0)
            {
                with (obj_writer)
                    forcebutton1 = 1
            }
        }
        hittalk = 1
        triggertalk = 1
        gml_Script_scr_speaker("queen")
        gml_Script_msgsetloc(0, "\\E1* Haha Okay Actually Hit All The Cars/%", "obj_caradventure_car_slash_Step_0_gml_98_0")
        d = gml_Script_d_make()
        d.side = 1
        d.zurasu = 1
    }
    if (talktimer == 300)
    {
        if instance_exists(obj_writer)
        {
            if (obj_writer.halt != 0)
            {
                with (obj_writer)
                    forcebutton1 = 1
            }
        }
        triggertalk = 1
        gml_Script_scr_speaker("queen")
        gml_Script_msgsetloc(0, "\\E1* So Much Traffic Isn't It Wonderful/%", "obj_caradventure_car_slash_Step_0_gml_115_0")
        d = gml_Script_d_make()
        d.side = 1
        d.zurasu = 1
    }
    if (talktimer == 360)
    {
        if instance_exists(obj_writer)
        {
            if (obj_writer.halt != 0)
            {
                with (obj_writer)
                    forcebutton1 = 1
            }
        }
        triggertalk = 1
        gml_Script_scr_speaker("queen")
        gml_Script_msgsetloc(0, "\\ED* Lightners Love Traffic They Look It Up All The Time/%", "obj_caradventure_car_slash_Step_0_gml_131_0")
        d = gml_Script_d_make()
        d.side = 1
        d.zurasu = 1
    }
    if (talktimer == 450)
    {
        if instance_exists(obj_writer)
        {
            if (obj_writer.halt != 0)
            {
                with (obj_writer)
                    forcebutton1 = 1
            }
        }
        triggertalk = 1
        gml_Script_scr_speaker("queen")
        gml_Script_msgsetloc(0, "\\EB* Poor Noelle She Would Love Hitting All These Cars/%", "obj_caradventure_car_slash_Step_0_gml_147_0")
        d = gml_Script_d_make()
        d.side = 1
        d.zurasu = 1
    }
    if (talktimer == 540)
    {
        if instance_exists(obj_writer)
        {
            if (obj_writer.halt != 0)
            {
                with (obj_writer)
                    forcebutton1 = 1
            }
        }
        triggertalk = 1
        gml_Script_scr_speaker("noelle")
        global.fe = 8
        gml_Script_msgsetloc(0, "\\E2* Umm^1, actually^1, I... she^1, um^1, might not^1, um.../%", "obj_caradventure_car_slash_Step_0_gml_164_0")
        d = gml_Script_d_make()
        d.side = 1
        d.zurasu = 1
    }
    if (talktimer == 640)
    {
        if instance_exists(obj_writer)
        {
            with (obj_writer)
                forcebutton1 = 1
        }
        bananamode = 1
        triggertalk = 1
        gml_Script_scr_speaker("queen")
        global.fe = 1
        gml_Script_msgsetloc(0, "\\EH* Stop Everything/%", "obj_caradventure_car_slash_Step_0_gml_179_0")
        d = gml_Script_d_make()
        d.side = 1
        d.zurasu = 1
    }
    if (talktimer == 700)
    {
        if instance_exists(obj_writer)
        {
            if (obj_writer.halt != 0)
            {
                with (obj_writer)
                    forcebutton1 = 1
            }
        }
        triggertalk = 1
        banana = gml_Script_instance_create((gml_Script___view_get(0, 0) + 660), 240, obj_caradventure_object)
        gml_Script_scr_speaker("queen")
        gml_Script_msgsetloc(0, "\\E0* Kris Get The Banana/%", "obj_caradventure_car_slash_Step_0_gml_198_0")
        d = gml_Script_d_make()
        d.side = 1
        d.zurasu = 1
    }
    if (talktimer == 900 && bananahit == 0)
    {
        if instance_exists(obj_writer)
        {
            if (obj_writer.halt != 0)
            {
                with (obj_writer)
                    forcebutton1 = 1
            }
        }
        triggertalk = 1
        gml_Script_scr_speaker("queen")
        gml_Script_msgsetloc(0, "\\EF* Kris You Are Going To Get Sick/%", "obj_caradventure_car_slash_Step_0_gml_216_0")
        d = gml_Script_d_make()
        d.side = 1
        d.zurasu = 1
    }
    if (talktimer == 1000)
    {
        if instance_exists(obj_writer)
        {
            if (obj_writer.halt != 0)
            {
                with (obj_writer)
                    forcebutton1 = 1
            }
        }
        triggertalk = 1
        gml_Script_scr_speaker("queen")
        gml_Script_msgsetloc(0, "\\E1* Here Comes A Crossing Get Ready To Stop/%", "obj_caradventure_car_slash_Step_0_gml_233_0")
        d = gml_Script_d_make()
        d.side = 1
        d.zurasu = 1
    }
    if (talktimer == 1060)
    {
        if instance_exists(obj_writer)
        {
            if (obj_writer.halt != 0)
            {
                with (obj_writer)
                    forcebutton1 = 1
            }
        }
        finish_convo = 1
    }
}
else
    hspeed = 0
