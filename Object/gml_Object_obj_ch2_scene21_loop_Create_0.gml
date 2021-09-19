con = -1
customcon = 0
if (global.chapter != 2)
    instance_destroy()
else if (global.plot < 150)
{
    layer_set_visible("TILES_Mansion_Hide_1", 0)
    layer_set_visible("TILES_Mansion_Hide_2", 0)
    if (!gml_Script_snd_is_playing(global.currentsong[1]))
    {
        global.currentsong[0] = gml_Script_snd_init("acid_tunnel.ogg")
        global.currentsong[1] = gml_Script_mus_loop(global.currentsong[0])
    }
    instance_deactivate_object(obj_doorB)
    obj_mainchara.x = -100
    gml_Script_scr_losechar()
    if instance_exists(obj_caterpillarchara)
        instance_destroy(obj_caterpillarchara)
    gml_Script_scr_getchar(3)
    gml_Script_scr_makecaterpillar(-100, obj_mainchara.y, 3, 0)
    global.facing = 1
    swanboat = gml_Script_instance_create(-200, 140, obj_queencar)
    with (swanboat)
        gml_Script_scr_depth()
    swanboat.con = 1
    swanboat.pause_y_move = 1
    swanboat.pause_auto_talk = 1
    actor_shadow = 0
    inside_tunnel = 1
    swan_shadow = gml_Script_scr_dark_marker(-200, swanboat.y, 2379)
    swan_shadow.image_speed = swanboat.image_speed
    swan_shadow.image_alpha = 0.5
    adjust_actors = 1
    remove_shadow = 0
    camera = gml_Script_scr_dark_marker(1794, 60, 2875)
    with (camera)
        gml_Script_scr_depth()
    ralsei_convo = 0
    ralsei_talk_timer = 0
    choice_text_timer = 0
    loopacid = 0
    shiftacid = 0
    shift_islands = 0
    shift_islands_timer = 0
    arrive_timer = 0
    remove_island_obj = 0
    set_flags_complete = 0
    rouxls_island = 0
    release_rouxls = 0
    rouxls_appear = -1
    rouxls_appear_timer = 0
    rouxls_power_up = 0
    rouxls_power_up_cancel = 0
    rouxls_talk_timer = 0
    blackall = gml_Script_scr_marker(-10, -10, 2529)
    blackall.image_xscale = 999
    blackall.image_yscale = 999
    blackall.depth = 700000
    blackall.image_blend = c_black
    blackall.image_alpha = 0
    whiteall = gml_Script_scr_marker(-10, -10, 2529)
    whiteall.image_xscale = 999
    whiteall.image_yscale = 999
    whiteall.depth = 0
    whiteall.image_alpha = 0
    duckmode = (global.flag[220] == 3 && global.flag[221] == 3 && global.flag[222] == 3)
    take_photo = 0
    photocon = 0
    leave_timer = 0
    remove_collider = 0
    explosion = 0
    explodetimer = 0
    finish_thrash = 0
    simtown_xpos = 760
    swan_swap = 0
    swan_depth = 0
    tile1 = gml_Script_instance_create((simtown_xpos + 160), (gml_Script_cameray() + 80), obj_simtown_landmaker)
    tile1.image_xscale = 8
    tile2 = gml_Script_instance_create((simtown_xpos + 160), (gml_Script_cameray() + 120), obj_simtown_landmaker)
    tile2.image_xscale = 8
    tile3 = gml_Script_instance_create((simtown_xpos + 240), (gml_Script_cameray() + 160), obj_simtown_landmaker)
    tile3.image_xscale = 3
    tile4 = gml_Script_instance_create((simtown_xpos + 280), (gml_Script_cameray() + 200), obj_simtown_landmaker)
    tile4.image_xscale = 3
    tile5 = gml_Script_instance_create((simtown_xpos + 160), (gml_Script_cameray() + 240), obj_simtown_landmaker)
    tile5.image_xscale = 8
    tile6 = gml_Script_instance_create((simtown_xpos + 160), (gml_Script_cameray() + 280), obj_simtown_landmaker)
    tile6.image_xscale = 8
    with (obj_simtown_landmaker)
        visible = false
    simcity = gml_Script_instance_create(simtown_xpos, 0, obj_rouxls_simtown)
}
else
{
    rouxls_talk_timer = 0
    swanboat = gml_Script_instance_create(2525, 190, obj_npc_room_animated)
    swanboat.sprite_index = spr_swanboat
    swanboat.image_speed = 0.15
    with (swanboat)
        gml_Script_scr_depth()
    if (gml_Script_scr_havechar(2) && global.flag[325] != 4)
    {
        npc = gml_Script_instance_create(3060, 122, obj_npc_butler)
        with (npc)
        {
            gml_Script_scr_depth()
            current_pal = green
        }
    }
    var collider_right = gml_Script_instance_create(2670, 198, obj_solidblock)
    collider_right.image_yscale = 10
}
