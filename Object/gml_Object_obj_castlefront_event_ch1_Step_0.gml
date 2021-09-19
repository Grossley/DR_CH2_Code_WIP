if (con == 1)
{
    global.facing = 2
    s = gml_Script_scr_dark_marker_ch1(340, 1000, 3551)
    r = gml_Script_scr_dark_marker_ch1(260, 1008, 3567)
    l = gml_Script_scr_dark_marker_ch1(280, 740, 3577)
    with (obj_marker_ch1)
        gml_Script_scr_depth_ch1()
    con = 2
    global.interact = 1
    alarm[4] = 30
}
if (con == 2)
    global.interact = 1
if (con == 3)
{
    global.fc = 1
    global.fe = 9
    global.typer = 30
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_castlefront_event_slash_Step_0_gml_24_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 4
}
if (con == 4 && (!gml_Script_d_ex_ch1()))
{
    with (l)
	{
		sprite_index = spr_lancer_dt_unhappy_ch1
		vspeed = -3
	}
}
if (con == 6)
{
    gml_Script_snd_free_all_ch1()
    gml_Script_snd_play_ch1(376)
    gml_Script_instance_create_ch1(0, 0, 1464)
    door = gml_Script_scr_dark_marker_ch1(226, 534, 4066)
    door.depth = 1000000
    with (l)
		instance_destroy()
}
if (con == 8)
{
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_castlefront_event_slash_Step_0_gml_58_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 15
}
if (con == 15 && (!gml_Script_d_ex_ch1()))
{
    with (s)
		sprite_index = spr_susier_dark_unhappy_ch1
}
if (con == 17)
{
    with (exc)
		instance_destroy()
}
if (con == 19)
{
    global.typer = 6
    global.fc = 0
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_castlefront_event_slash_Step_0_gml_106_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 20
    ftimer = 0
    dcount = 0
    so = 0
    maxd = 36
}
if (con == 20 && (!gml_Script_d_ex_ch1()))
{
    if (dcount < maxd)
    {
        if (so == 0)
        {
            gml_Script_snd_play_ch1(381)
            so = 1
        }
        else
            so = 0
        radius = 140
        angle = ((dcount / maxd) * 360)
        xpoint = (obj_mainchara_ch1.x + 20)
        ypoint = obj_mainchara_ch1.y
        xd = lengthdir_x(radius, angle)
        yd = lengthdir_y(radius, angle)
        db[dcount] = gml_Script_scr_dark_marker_ch1((xpoint + xd), (ypoint + yd), 3781)
        db[dcount].image_angle = angle
        with (db[dcount])
		{
			image_xscale = 1
			image_yscale = 1
			image_alpha = 0
			direction = image_angle
			speed = 2
			depth = 10000
			friction = 0.1
		}
    }
    i = 0
    while (i < dcount)
    {
        with (db[i])
			image_alpha += 0.1
    }
    if (dcount >= maxd)
    {
        ftimer += 1
        if (ftimer >= 20)
            con = 21
    }
}
if (con == 21)
{
    global.typer = 31
    global.fc = 2
    global.fe = 3
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_castlefront_event_slash_Step_0_gml_163_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 22
}
if (con == 22 && (!gml_Script_d_ex_ch1()))
{
    i = 0
    while (i < dcount)
    {
        with (db[i])
		{
			gravity = 1
			gravity_direction = (image_angle + 180)
		}
	}
    con = 26
}
if (con == 26)
{
    if (db[0].x <= (obj_mainchara_ch1.x + 90))
    {
        gml_Script_snd_free_all_ch1()
        gml_Script_snd_play_ch1(438)
        con = 27
        black = true
        alarm[4] = 120
    }
}
if (con == 28)
{
    global.entrance = 0
    global.interact = 3
    room_goto(room_cc_prison_cells_ch1)
}
