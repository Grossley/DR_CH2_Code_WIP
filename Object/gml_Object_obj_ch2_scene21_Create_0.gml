con = -1
customcon = 0
queen_monitor_frame = gml_Script_scr_dark_marker(148, 50, spr_dw_mansion_monitor_frame)
with (queen_monitor_frame)
    gml_Script_scr_depth()
queen_monitor = gml_Script_instance_create((queen_monitor_frame.x + 175), (queen_monitor_frame.y + 60), obj_queenmonitor)
queen_monitor.depth = (queen_monitor_frame + 100)
lever = gml_Script_instance_create(240, 290, obj_npc_sign)
lever.sprite_index = spr_dw_mansion_lever
lever_timer = 0
for (var i = 0; i < 4; i++)
{
    var frame = gml_Script_scr_dark_marker(((queen_monitor.x + 500) + (700 * i)), 50, spr_dw_mansion_monitor_frame)
    with (frame)
        gml_Script_scr_depth()
    monitor[i] = gml_Script_instance_create((frame.x + 175), (frame.y + 60), obj_queenmonitor)
    monitor[i].depth = (frame + 100)
}
if (global.chapter != 2 || global.plot >= 150)
    instance_destroy()
else
{
    release_swan = 0
    swanboat_init_y = 0
    swanboat = gml_Script_instance_create(320, ((gml_Script_cameray() + view_hport[0]) + 300), obj_queencar)
    with (swanboat)
        gml_Script_scr_depth()
    ralsei_convo = 0
    ralsei_talk_timer = 0
    choice_text_timer = 0
    swanboat_talk = 1
    queen_heckle = 0
    queen_heckle_con = 0
    queen_heckle_index = 0
    queen_heckle_timer = 0
    queen_heckle_start = 0
    banana = gml_Script_instance_create(2580, 250, obj_queencar_pickup)
    banana.image_xscale = 2
    banana.image_yscale = 2
    banana.image_speed = 0.25
    with (banana)
        gml_Script_scr_depth()
    got_banana = 0
    remove_collider = 0
    blackall = gml_Script_scr_marker(-10, -10, spr_pixel_white)
    blackall.image_xscale = 999
    blackall.image_yscale = 999
    blackall.depth = 700000
    blackall.image_blend = c_black
    blackall.image_alpha = 0
    whiteall = gml_Script_scr_marker(-10, -10, spr_pixel_white)
    whiteall.image_xscale = 999
    whiteall.image_yscale = 999
    whiteall.depth = 0
    whiteall.image_alpha = 0
}
