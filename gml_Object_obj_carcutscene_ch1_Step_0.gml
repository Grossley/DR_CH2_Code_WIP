var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_9, _temp_local_var_11, _temp_local_var_14, _temp_local_var_16, _temp_local_var_17, _temp_local_var_18, _temp_local_var_19, _temp_local_var_20, _temp_local_var_25, _temp_local_var_26, _temp_local_var_27, _temp_local_var_28, _temp_local_var_29, _temp_local_var_30, _temp_local_var_34, _temp_local_var_36, _temp_local_var_37, _temp_local_var_38, _temp_local_var_39, _temp_local_var_40, _temp_local_var_41, _temp_local_var_44, _temp_local_var_47, _temp_local_var_48, _temp_local_var_50, _temp_local_var_51, _temp_local_var_53, _temp_local_var_54, _temp_local_var_56;
if (con > 0)
{
    if (con == 2)
    {
        persistent = true
        gml_Script___view_set(9, 0, -4)
        var _temp_local_var_1 = k
        fun = true
        cutscene = true
    }
    if (con == 3 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        gml_Script_mus_play_ch1(global.currentsong[0])
        alarm[5] = 20
        var _temp_local_var_4 = t
        image_speed = 0
        image_index = 0
    }
    if (con == 3.1)
    {
        var _temp_local_var_6 = t
        sprite_index = spr_toriel_l_ch1
    }
    if (con == 5)
    {
        var _temp_local_var_9 = t
        sprite_index = spr_toriel_l_ch1
    }
    if (con == 9)
    {
        var _temp_local_var_11 = c
        depth = 6000
    }
    if (con == 11)
    {
        con = 12
        alarm[4] = 30
        ckx = (c.x - k.x)
        cky = (c.y - k.y)
        ctx = (c.x - t.x)
        cty = (c.y - t.y)
        var _temp_local_var_14 = t
        visible = false
    }
    if (con == 13)
    {
        var _temp_local_var_16 = c
        sprite_index = spr_torcar_l_ch1
        hspeed = 1
        image_speed = 0.25
    }
    if (con == 15)
    {
        var _temp_local_var_17 = c
        gml_Script_scr_halt_ch1()
    }
    if (con == 17)
    {
        var _temp_local_var_18 = c
        hspeed = -1
        image_speed = 0.25
    }
    if (con == 19)
    {
        gml_Script_scr_pan_ch1(0, 0.5, 100)
        var _temp_local_var_19 = c
        sprite_index = spr_torcar_d_ch1
        hspeed = 0
        vspeed = 2
    }
    if (con == 21)
    {
        fade = gml_Script_instance_create_ch1(0, 0, 1460)
        fade.depth = -200
        fade.height = 400
        fade.fadespeed = 0.025
        fade.image_blend = c_white
        con = 22
        alarm[4] = 45
    }
    if (con == 23.1)
    {
        car = gml_Script_scr_marker_ch1(390, 0, 3452)
        var _temp_local_var_20 = car
        gml_Script_scr_depth_ch1()
        image_speed = 0.25
        vspeed = 3
    }
    if (con == 23)
    {
        with (obj_writer_ch1)
            instance_destroy()
        fade2 = gml_Script_instance_create_ch1(0, 0, 1462)
        fade2.image_blend = c_white
        con = 23.1
        room_goto(room_town_north_ch1)
    }
    if (carcon == 1)
    {
        if (car.y >= 100)
        {
            var _temp_local_var_25 = catty
            sprite_index = spr_npc_catty_wave_ch1
            image_speed = 0.2
        }
        if (car.x >= 550)
        {
            var _temp_local_var_26 = cattydad
            sprite_index = spr_npc_cattydad_wave_ch1
            image_speed = 0.2
        }
    }
    if (con == 24)
        global.interact = 1
    if (con == 25)
    {
        var _temp_local_var_27 = car
        sprite_index = spr_torcar_r_ch1
        vspeed = 0
        hspeed = 3
    }
    if (con == 27)
    {
        var _temp_local_var_28 = car
        sprite_index = spr_torcar_d_ch1
        hspeed = 0
        vspeed = 3
    }
    if (con == 130)
    {
        car = gml_Script_scr_marker_ch1(790, -60, 3452)
        var _temp_local_var_29 = car
        gml_Script_scr_depth_ch1()
        image_speed = 0.25
        vspeed = 3
    }
    if (con == 29)
    {
        gml_Script_instance_create_ch1(0, 0, 1462)
        room_goto(room_town_mid_ch1)
        con = 130
    }
    if (con == 131)
        global.interact = 1
    if (con == 132)
    {
        gml_Script_instance_create_ch1(0, 0, 1460)
        alarm[4] = 30
        con = 133
    }
    if (con == 140)
    {
        car = gml_Script_scr_marker_ch1(810, 0, 3452)
        var _temp_local_var_30 = car
        gml_Script_scr_depth_ch1()
        image_speed = 0.25
        vspeed = 3
    }
    if (con == 134)
    {
        gml_Script_instance_create_ch1(0, 0, 1462)
        room_goto(room_town_south_ch1)
        con = 140
    }
    if (carcon == 2)
    {
        if (car.y >= 100)
        {
            var _temp_local_var_34 = qc
            sprite_index = spr_npc_qc_wave_ch1
            image_speed = 0.2
        }
        if (car.x >= 1000)
        {
        }
    }
    if (con == 141)
        global.interact = 1
    if (con == 142)
    {
        var _temp_local_var_36 = car
        vspeed = 0
        hspeed = 3
        sprite_index = spr_torcar_r_ch1
    }
    if (con == 144)
    {
        carcon = 0
        gml_Script_instance_create_ch1(0, 0, 1460)
        alarm[4] = 30
        con = 145
    }
    if (con == 161)
    {
        car = gml_Script_scr_marker_ch1(0, 220, 3450)
        var _temp_local_var_37 = car
        gml_Script_scr_depth_ch1()
        image_speed = 0.25
        hspeed = 2
    }
    if (con == 146)
    {
        gml_Script_instance_create_ch1(0, 0, 1462)
        room_goto(room_town_school_ch1)
        con = 161
    }
    if (con == 162)
        global.interact = 1
    if (con == 163)
    {
        var _temp_local_var_38 = car
        vspeed = -2
        hspeed = 0
        sprite_index = spr_torcar_u_ch1
    }
    if (con == 165)
    {
        var _temp_local_var_39 = car
        gml_Script_scr_halt_ch1()
    }
    if (con == 37)
    {
        v = 0
        var _temp_local_var_40 = car
        speed = 0
        image_speed = 0
    }
    if (con == 39)
    {
        gml_Script_scr_pan_ch1(1, -0.334, 100)
        var _temp_local_var_41 = car
        depth = 500
    }
    if (con == 41)
    {
        var _temp_local_var_44 = car
        depth = 600000
    }
    if (con == 43)
    {
        var _temp_local_var_47 = t
        sprite_index = spr_toriel_r_ch1
        vspeed = 0
        hspeed = 2
    }
    if (con == 45)
    {
        var _temp_local_var_48 = k
        sprite_index = spr_krisr_ch1
    }
    if (con == 47)
    {
        var _temp_local_var_50 = t
        speed = 0
        sprite_index = spr_toriel_l_ch1
        image_speed = 0
        image_index = 0
    }
    if (con == 49)
    {
        var _temp_local_var_51 = k
        visible = false
    }
    if (con == 51)
    {
        var _temp_local_var_53 = t
        hspeed = 1
        image_speed = 0.1
    }
    if (con == 53)
    {
        gml_Script_scr_pan_ch1(0, -0.5, 999)
        var _temp_local_var_54 = t
        vspeed = -0.25
        hspeed = 0
        sprite_index = spr_toriel_handhold_u_ch1
    }
    if (con == 55)
        alarm[4] = 40
    if (con == 56)
        fade.y = 0
    if (con == 57)
    {
        pf = gml_Script_instance_create_ch1(0, 0, 1462)
        var _temp_local_var_56 = pf
        image_alpha = 1.2
    }
}
