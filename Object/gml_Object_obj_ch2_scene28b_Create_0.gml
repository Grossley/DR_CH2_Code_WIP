if (gml_Script_scr_sideb_get_phase() >= 2)
{
    berdly_npc = gml_Script_instance_create(166, 68, obj_npc_sign)
    berdly_npc.sprite_index = spr_cutscene_28b_berdly_desk_sleep
    with (obj_caterpillarchara)
        visible = false
}
con = -1
customcon = 0
su_actor = -1
show_border = 0
if (global.chapter != 2 || global.plot > 200)
    instance_destroy()
else
{
    con = 1
    if instance_exists(obj_bg_givedepth)
    {
        with (obj_bg_givedepth)
            instance_destroy()
    }
    layer_set_visible("GIVE_DEPTH", 0)
    whiteall = gml_Script_scr_marker(-10, -10, 2529)
    whiteall.image_xscale = 999
    whiteall.image_yscale = 999
    whiteall.depth = 100
    blackall = gml_Script_scr_dark_marker(-10, -10, 2529)
    blackall.image_xscale = 999
    blackall.image_yscale = 999
    blackall.depth = 100
    blackall.image_blend = c_black
    blackall.image_alpha = 0
    desk_marker = gml_Script_scr_marker(152, 96, 2975)
    desk_marker.depthcancel = true
    desk_marker.depth = (whiteall.depth + 100)
    standing = 0
    kris_leave = 0
    susie_mad = 0
    susie_mad_timer = 0
}