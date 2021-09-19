if (obj_mainchara.x > x && con == -1)
{
    con = 1
    global.interact = 1
    gml_Script_scr_losechar()
    island_collider = gml_Script_instance_create(760, 200, obj_soliddark)
    island_collider.image_xscale = 8
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    global.facing = 0
    qu = (actor_count + 1)
    qu_actor = gml_Script_instance_create((gml_Script_camerax() + 1000), 120, obj_actor)
    gml_Script_scr_actor_setup(qu, qu_actor, "queen")
    qu_actor.sprite_index = spr_queen_walk_left
    gml_Script_c_sel(qu)
    be = (actor_count + 2)
    be_actor = gml_Script_instance_create((gml_Script_camerax() + 1000), 200, obj_actor)
    gml_Script_scr_actor_setup(be, be_actor, "berdly")
    be_actor.sprite_index = spr_berdly_walk_left_dw
    cutscene_master.save_object[0] = id
    instance_deactivate_object(traffic_collider_left)
}
if realign
{
    realign = 0
    var xpos = (queencar.x + 82)
    var ypos = queencar.y
    with (obj_mainchara)
    {
        x = xpos
        y = ypos
    }
}
if (con == 1)
{
    con = 2
    alarm[0] = 30
    gml_Script_c_pannable(1)
    gml_Script_c_pan(610, 0, 30)
    gml_Script_c_sel(kr)
    gml_Script_c_walkdirect(890, 170, 30)
    gml_Script_c_sel(no)
    gml_Script_c_walkdirect(805, 150, 30)
    gml_Script_c_mus2("volume", 0, 30)
    gml_Script_c_wait(31)
    gml_Script_c_mus("free_all")
    gml_Script_c_msgside("bottom")
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E9* Noeeeeelle Honey Where Are You/", "obj_ch2_city_car_a_slash_Step_0_gml_63_0")
    gml_Script_c_facenext("noelle", 14)
    gml_Script_c_msgnextloc("\\EE* (Oh no^1, here she comes...)/%", "obj_ch2_city_car_a_slash_Step_0_gml_65_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(111)
    gml_Script_c_imageindex(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_wait(9)
    gml_Script_c_mus2("initloop", "queen.ogg", 0)
    gml_Script_c_sel(qu)
    gml_Script_c_walkdirect(980, qu_actor.y, 30)
    gml_Script_c_wait(26)
    gml_Script_c_sel(no)
    gml_Script_c_imagespeed(0)
    gml_Script_c_wait(5)
    gml_Script_c_sel(qu)
    gml_Script_c_sprite(507)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E1* Noelle Come Home I Made You A Battery Acid Pie/%", "obj_ch2_city_car_a_slash_Step_0_gml_90_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(qu)
    gml_Script_c_emote("!", 30, 50)
    gml_Script_c_wait(30)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\ED* Oh^1, Kris Perfect Timing/%", "obj_ch2_city_car_a_slash_Step_0_gml_99_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(qu)
    gml_Script_c_autowalk(0)
    gml_Script_c_wait(5)
    gml_Script_c_sprite(508)
    gml_Script_c_flip("x")
    gml_Script_c_arg_objectxy(qu_actor, 40, 0)
    gml_Script_c_setxy(x, y)
    gml_Script_c_imageindex(1)
    gml_Script_c_wait(8)
    gml_Script_c_imageindex(2)
    gml_Script_c_var_instance(id, "break_pie", 1)
    gml_Script_c_shake()
    gml_Script_c_wait(4)
    gml_Script_c_imageindex(3)
    gml_Script_c_wait(5)
    gml_Script_c_imagespeed(0)
    gml_Script_c_wait(10)
    gml_Script_c_autowalk(1)
    gml_Script_c_flip("x")
    gml_Script_c_arg_objectxy(qu_actor, -40, 0)
    gml_Script_c_setxy(x, y)
    gml_Script_c_sprite(767)
    gml_Script_c_imageindex(0)
    gml_Script_c_wait(30)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E1* Have You Seen --/%", "obj_ch2_city_car_a_slash_Step_0_gml_127_0")
    gml_Script_c_talk_wait()
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E2* Oh my Luxurious Quuuueeeeeenn!!/%", "obj_ch2_city_car_a_slash_Step_0_gml_137_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(qu)
    gml_Script_c_sprite(505)
    gml_Script_c_arg_objectxy(qu_actor, -20, 0)
    gml_Script_c_setxy(x, y)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E8* Oh My Circuits Kris Get In The Car/%", "obj_ch2_city_car_a_slash_Step_0_gml_139_0")
    gml_Script_c_talk_wait()
    gml_Script_c_soundplay(204)
    gml_Script_c_var_lerp_instance(queencar, "x", (gml_Script_camerax() + 800), 840, 15)
    gml_Script_c_wait(16)
    gml_Script_c_sel(kr)
    gml_Script_c_walkdirect(915, 110, 20)
    gml_Script_c_delaycmd(20, "visible", 0)
    gml_Script_c_sel(qu)
    gml_Script_c_arg_objectxy(qu_actor, 20, 0)
    gml_Script_c_setxy(x, y)
    gml_Script_c_walkdirect(915, 65, 20)
    gml_Script_c_delaycmd(20, "visible", 0)
    gml_Script_c_sel(no)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(97)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect(870, 97, 20)
    gml_Script_c_delaycmd(20, "visible", 0)
    gml_Script_c_wait(20)
    gml_Script_c_soundplay(205)
    gml_Script_c_wait(30)
    gml_Script_c_sel(be)
    gml_Script_c_walkdirect_wait(895, 183, 45)
    gml_Script_c_wait(10)
    gml_Script_c_sprite(509)
    gml_Script_c_wait(10)
    gml_Script_c_sprite(511)
    gml_Script_c_wait(10)
    gml_Script_c_sprite(509)
    gml_Script_c_wait(10)
    gml_Script_c_sprite(511)
    gml_Script_c_wait(10)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E7* My Queen!^1! Where are you!!/", "obj_ch2_city_car_a_slash_Step_0_gml_187_0")
    gml_Script_c_msgnextloc("\\E6* I've baked you a Gamer's Delight!!/", "obj_ch2_city_car_a_slash_Step_0_gml_188_0")
    gml_Script_c_msgnextloc("\\E0* Hmm..^1. she's not here.../%", "obj_ch2_city_car_a_slash_Step_0_gml_189_0")
    gml_Script_c_talk_wait()
    gml_Script_c_walkdirect_wait(200, 183, 45)
    gml_Script_c_delaycmd(46, "visible", 0)
    gml_Script_c_sel(qu)
    gml_Script_c_visible(1)
    gml_Script_c_walkdirect(980, qu_actor.y, 15)
    gml_Script_c_delayfacing(16, "l")
    gml_Script_c_sel(kr)
    gml_Script_c_visible(1)
    gml_Script_c_walkdirect(890, 170, 15)
    gml_Script_c_sel(no)
    gml_Script_c_visible(1)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(98)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect(805, 150, 15)
    gml_Script_c_delaycmd(16, "imagespeed", 0)
    gml_Script_c_delaycmd(16, "imageindex", 0)
    gml_Script_c_wait(45)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\EF* That Was Close/%", "obj_ch2_city_car_a_slash_Step_0_gml_218_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_sel(qu)
    gml_Script_c_facing("l")
    gml_Script_c_sel(kr)
    gml_Script_c_facing("r")
    gml_Script_c_sel(no)
    gml_Script_c_sprite(100)
    gml_Script_c_imageindex(0)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\ED* Kris/", "obj_ch2_city_car_a_slash_Step_0_gml_236_0")
    gml_Script_c_msgnextloc("\\EB* Who Is Your Friend/", "obj_ch2_city_car_a_slash_Step_0_gml_237_0")
    gml_Script_c_msgnextloc("\\E9* My Face Recognition Software Does Not Compute Them/%", "obj_ch2_city_car_a_slash_Step_0_gml_238_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(qu)
    gml_Script_c_walk("l", 5, 5)
    gml_Script_c_sel(kr)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walk_wait("l", 5, 5)
    gml_Script_c_imagespeed(0)
    gml_Script_c_autowalk(1)
    gml_Script_c_wait(30)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\EA* ...^1. And Yet/", "obj_ch2_city_car_a_slash_Step_0_gml_254_0")
    gml_Script_c_msgnextloc("\\E5* Something About Them Seems/%", "obj_ch2_city_car_a_slash_Step_0_gml_255_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_sel(no)
    gml_Script_c_sprite(98)
    gml_Script_c_imageindex(0)
    gml_Script_c_imagespeed(0)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\ED* Cool/", "obj_ch2_city_car_a_slash_Step_0_gml_267_0")
    gml_Script_c_msgnextloc("\\E1* Robotic Even/", "obj_ch2_city_car_a_slash_Step_0_gml_268_0")
    gml_Script_c_facenext("noelle", 16)
    gml_Script_c_msgnextloc("\\EG* (...)/%", "obj_ch2_city_car_a_slash_Step_0_gml_270_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(qu)
    gml_Script_c_facing("u")
    gml_Script_c_sel(no)
    gml_Script_c_sprite(102)
    gml_Script_c_imageindex(2)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_delaycmd(18, "imagespeed", 0)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E1* Kris We Must Drive To Find Noelle/", "obj_ch2_city_car_a_slash_Step_0_gml_284_0")
    gml_Script_c_msgnextloc("\\EC* Everyone Get In The Car/%", "obj_ch2_city_car_a_slash_Step_0_gml_285_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(kr)
    gml_Script_c_walkdirect(915, 110, 20)
    gml_Script_c_delaycmd(20, "visible", 0)
    gml_Script_c_sel(qu)
    gml_Script_c_arg_objectxy(qu_actor, 20, 0)
    gml_Script_c_setxy(x, y)
    gml_Script_c_walkdirect(915, 65, 20)
    gml_Script_c_delaycmd(20, "visible", 0)
    gml_Script_c_sel(no)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(97)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect(870, 97, 20)
    gml_Script_c_delaycmd(20, "visible", 0)
    gml_Script_c_wait(20)
    gml_Script_c_soundplay(205)
    gml_Script_c_wait(10)
    gml_Script_c_pan(730, 0, 20)
    gml_Script_c_wait(20)
    gml_Script_c_mus2("volume", 0, 15)
    gml_Script_c_wait(16)
    gml_Script_c_waitcustom()
}
if (con == 3 && customcon == 1)
{
    con = 4
    gml_Script_snd_free_all()
    global.currentsong[0] = gml_Script_snd_init("queen_car_radio.ogg")
    gml_Script_mus_volume(global.currentsong[1], 0.8, 0)
    global.currentsong[1] = gml_Script_mus_loop(global.currentsong[0])
    with (queencar)
        active = true
}
if (con == 4)
{
    release_timer++
    if (release_timer == 90)
    {
        queencar.pause_x_move = 1
        loop_road = 1
        shift_road = 1
    }
}
if (con == 4 && queencar.finish_convo && (!gml_Script_d_ex()))
{
    con = 6
    shift_road = 0
    queencar.pause_x_move = 0
}
if (con == 6 && queencar.x >= 1740)
{
    queencar.pause_x_move = 1
    queencar.active = false
    if (queencar.y > 208)
        queencar.y -= 6
    else
        queencar.y += 6
    if (abs((queencar.y - 208)) <= 6)
        queencar.y = 208
    queencar.x += 6
    gml_Script_camerax_set((gml_Script_camerax() + 3))
    if (queencar.x >= 2075)
    {
        con = 30
        queencar.active = false
        loop_road = 0
    }
}
if (con == 30)
{
    con = 49
    alarm[0] = 30
    gml_Script_c_waitcustom_end()
    gml_Script_c_mus2("volume", 0, 30)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E8* Oh My Circuits It's A Traffic Jam/", "obj_ch2_city_car_a_slash_Step_0_gml_389_0")
    gml_Script_c_msgnextloc("\\EF* A Dog Must Have Wandered In The Road Again/", "obj_ch2_city_car_a_slash_Step_0_gml_390_0")
    gml_Script_c_msgnextloc("\\ED* Kris Be A Dear And Go Press The Walk Button/", "obj_ch2_city_car_a_slash_Step_0_gml_391_0")
    gml_Script_c_msgnextloc("\\E9* It's Just Over On The Other Side Of The Road/%", "obj_ch2_city_car_a_slash_Step_0_gml_392_0")
    gml_Script_c_talk_wait()
    gml_Script_c_pannable(1)
    gml_Script_c_panspeed_wait(10, 0, 90)
    gml_Script_c_wait(15)
    gml_Script_c_pan_wait(1840, 0, 80)
    gml_Script_c_wait(15)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E8* Umm..^1. I'll go^1, too.../", "obj_ch2_city_car_a_slash_Step_0_gml_404_0")
    gml_Script_c_facenext("queen", "6")
    gml_Script_c_msgnextloc("\\E6* No/", "obj_ch2_city_car_a_slash_Step_0_gml_406_0")
    gml_Script_c_msgnextloc("\\E6* You Must Stay/", "obj_ch2_city_car_a_slash_Step_0_gml_407_0")
    gml_Script_c_facenext("noelle", 14)
    gml_Script_c_msgnextloc("\\EE* !?/", "obj_ch2_city_car_a_slash_Step_0_gml_409_0")
    gml_Script_c_facenext("queen", "1")
    gml_Script_c_msgnextloc("\\E1* Until You Hear All Of My Mixtape/%", "obj_ch2_city_car_a_slash_Step_0_gml_411_0")
    gml_Script_c_talk_wait()
    gml_Script_c_mus2("volume", 1, 30)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E2* O-okay.../", "obj_ch2_city_car_a_slash_Step_0_gml_418_0")
    gml_Script_c_msgnextloc("\\E8* (Kris..^1. hurry up^1, please...)/%", "obj_ch2_city_car_a_slash_Step_0_gml_419_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(kr)
    gml_Script_c_setxy((queencar.x + 90), (queencar.y - 40))
    gml_Script_c_autowalk(1)
    gml_Script_c_walk("d", 5, 20)
    gml_Script_c_wait(15)
    gml_Script_c_visible(1)
    gml_Script_c_wait(20)
    gml_Script_c_var_instance(id, "leftside_traffic", 1)
    gml_Script_c_panobj(kr_actor, 15)
    gml_Script_c_wait(16)
    gml_Script_c_pannable(0)
}
if (con == 50 && (!gml_Script_d_ex()))
{
    con = 59
    alarm[0] = con
    gml_Script_c_actortokris()
    gml_Script_c_terminatekillactors()
}
if (con == 60 && (!gml_Script_i_ex(895)))
{
    con = 0
    global.plot = 80
    global.interact = 0
    global.facing = 0
    if (global.flag[465] == 0)
        global.flag[465] = 1
    instance_activate_object(traffic_collider_left)
    carnpc.x = queencar.x
    carnpc.y = queencar.y
    if gml_Script_i_ex(queencar)
        instance_destroy(queencar)
    instance_activate_object(traffic_collider_left)
}
if break_pie
{
    if (piebreak == self)
    {
        gml_Script_snd_play(188)
        gml_Script_snd_play(86)
        piebreak = gml_Script_scr_dark_marker(1030, 225, 512)
        piebreak.image_index = 0
        piebreak.image_speed = 0.5
    }
    break_pie_timer++
    if (break_pie_timer >= 7)
    {
        if gml_Script_i_ex(piebreak)
            instance_destroy(piebreak)
        break_pie = 0
    }
}
if release_car
{
    queencar.x -= 5
    if (queencar.x <= 400)
        release_car = 0
}
if loop_road
{
    var tile_speed = 6
    var tile_1_x = tilemap_get_x(tile_1_map_id)
    var tile_2_x = tilemap_get_x(tile_2_map_id)
    var tile_3_x = tilemap_get_x(tile_3_map_id)
    if shift_road
    {
        tilemap_x(tile_1_map_id, (tile_1_x - tile_speed))
        tilemap_x(tile_2_map_id, (tile_2_x - tile_speed))
        tilemap_x(tile_3_map_id, (tile_3_x - tile_speed))
    }
    var camera_width = camera_get_view_width(view_camera[0])
    if (tilemap_get_x(tile_1_map_id) <= (gml_Script_camerax() - camera_width))
        tilemap_x(tile_1_map_id, (gml_Script_camerax() + (camera_width * 2)))
    if (tilemap_get_x(tile_2_map_id) <= (gml_Script_camerax() - (camera_width * 2)))
        tilemap_x(tile_2_map_id, (gml_Script_camerax() + camera_width))
    if (tilemap_get_x(tile_3_map_id) <= (gml_Script_camerax() - (camera_width * 3)))
        tilemap_x(tile_3_map_id, gml_Script_camerax())
}
if leftside_traffic
{
    leftside_traffic_timer++
    if (leftside_traffic_timer == 1)
    {
        for (var i = 0; i < 4; i++)
        {
            for (var j = 0; j < 6; j++)
            {
                xpos = (1500 + (85 * i))
                ypos = (65 + (j * 55))
                traffic_car[i][j] = gml_Script_scr_dark_marker(xpos, ypos, 2369)
                with (traffic_car[i][j])
                    gml_Script_scr_depth()
                traffic_car[i][j].image_speed = 0.15
            }
        }
    }
    else if (leftside_traffic_timer < 15)
    {
        for (i = 0; i < array_height_2d(traffic_car); i++)
        {
            for (j = 0; j < array_length_2d(traffic_car, i); j++)
                traffic_car[i][j].x += 13.17
        }
    }
    else
    {
        var readable_cars = gml_Script_instance_create(2000, 120, obj_readable_room1)
        readable_cars.image_yscale = 20
        var readable_cars_2 = gml_Script_instance_create(2300, 140, obj_readable_room1)
        readable_cars_2.image_yscale = 10
        leftside_traffic = 0
    }
}
