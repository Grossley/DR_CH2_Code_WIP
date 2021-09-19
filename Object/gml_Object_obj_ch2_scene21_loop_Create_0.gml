var collider_right, _temp_local_var_1, _temp_local_var_5;
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
    var _temp_local_var_1 = swanboat
    gml_Script_scr_depth()
}
else
{
    rouxls_talk_timer = 0
    swanboat = gml_Script_instance_create(2525, 190, obj_npc_room_animated)
    swanboat.sprite_index = spr_swanboat
    swanboat.image_speed = 0.15
    var _temp_local_var_5 = swanboat
    gml_Script_scr_depth()
}
