con = -1
customcon = 0
pillow = 0
fadebg = 0
removefg = 0
debug_skip = 0
hide_border = 0
if (global.chapter != 2 || global.plot < 211)
    instance_destroy()
else
{
    gml_Script_scr_losechar()
    if instance_exists(obj_caterpillarchara)
        instance_destroy(obj_caterpillarchara)
    if (!audio_is_playing(global.currentsong[1]))
    {
        global.currentsong[0] = gml_Script_snd_init("home.ogg")
        global.currentsong[1] = gml_Script_mus_loop(global.currentsong[0])
    }
    blackall = gml_Script_scr_marker(-10, -10, spr_pixel_white)
    blackall.image_xscale = 999
    blackall.image_yscale = 999
    blackall.depth = 100
    blackall.image_blend = c_black
    bg = gml_Script_scr_marker(0, 0, spr_cutscene_32_bg_windows_dark)
    bg.depth = 9000000
    bgdim = gml_Script_scr_marker(0, 0, spr_cutscene_32_bg_room_dim)
    bgdim.depth = 6000000
    bgdim.image_alpha = 0
    bgdark = gml_Script_scr_marker(0, 0, spr_cutscene_32_bg_room_dark)
    bgdark.depth = 5000000
    bgdark.image_alpha = 0
    disable_face = 0
    enable_face = 0
    footsteps = 0
    footsteps_volume = 1
    susie_snore = 0
    end_game = 0
    return_title = 0
    show_door_open = 0
    credits_timer = 0
    fade_out_deep = 0
    with (obj_npc_room)
        instance_destroy()
}
