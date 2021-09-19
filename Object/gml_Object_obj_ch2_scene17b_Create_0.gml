con = -1
customcon = 0
inactivetimer = 0
lancertimer = 0
reminder = 0
lancercon = 0
lancertalking = 0
talktimer = 0
talkinterval = 1
talkstart = 0
if (global.chapter != 2 || global.plot >= 100)
    instance_destroy()
else
{
    gml_Script_scr_losechar()
    if instance_exists(obj_caterpillarchara)
        instance_destroy(obj_caterpillarchara)
    if (gml_Script_scr_keyitemcheck(8) == 0)
        gml_Script_scr_keyitemget(8)
    blackall = gml_Script_scr_dark_marker(-10, -10, 2529)
    blackall.image_xscale = 999
    blackall.image_yscale = 999
    blackall.depth = 100
    blackall.image_blend = c_black
    cage_collider = gml_Script_instance_create(280, 168, obj_soliddark)
    cage_collider.image_xscale = 2
    cage_collider.image_yscale = 3.5
    cagetop = gml_Script_scr_dark_marker(280, 168, 171)
    cagetop.image_speed = 0
    cagetop.depth = 96830
    talktube = gml_Script_instance_create(437, 150, obj_npc_sign)
    talktube.sprite_index = spr_dw_mansion_room_kris_talk_tube
    talktube.image_speed = 0
    talktube.visible = false
    queen_monitor_frame = gml_Script_scr_dark_marker(142, 24, 2877)
    with (queen_monitor_frame)
        gml_Script_scr_depth()
    queen_monitor = gml_Script_instance_create((queen_monitor_frame.x + 175), (queen_monitor_frame.y + 60), obj_queenmonitor)
    queen_monitor.depth = (queen_monitor_frame + 100)
    var computer = gml_Script_instance_create(130, 24, obj_npc_room)
    computer.sprite_index = spr_dw_mansion_room_kris_monitor
    computer.depth = (queen_monitor.depth + 100)
    lancer_typing_start = 0
    lancer_typing_stop = 0
    monitor_on = 0
    overload = 0
    open_capsule = 0
    cage_collider_bottom = gml_Script_instance_create((cagetop.x + 12), ((cagetop.y + (sprite_get_height(spr_cutscene_17b_capsule_top) * 2)) - 4), obj_soliddark)
    cage_collider_bottom.image_yscale = 0.1
    cage_collider_bottom.image_xscale = 1.4
}
