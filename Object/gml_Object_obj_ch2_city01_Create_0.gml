con = -1
customcon = 0
noellejoin = 0
leavecon = 0
leaveleftattempt = 0
leaverightattempt = 0
if (global.chapter != 2)
    instance_destroy()
else if (global.plot < 70)
{
    gml_Script_scr_losechar()
    if instance_exists(obj_caterpillarchara)
        instance_destroy(obj_caterpillarchara)
    alleyoverlay = gml_Script_scr_marker(320, 40, 2529)
    alleyoverlay.image_xscale = 30
    alleyoverlay.image_yscale = 50
    alleyoverlay.image_blend = c_black
    alleyoverlay.image_alpha = 0.5
    with (alleyoverlay)
        gml_Script_scr_depth()
    noellemarker = gml_Script_scr_dark_marker(360, 205, 723)
}
else
{
    con = 0
    if (global.flag[357] == 1)
    {
        hackernpc = gml_Script_instance_create(150, 158, obj_npc_sign)
        hackernpc.sprite_index = spr_npc_cursor_walk_right
    }
    gml_Script_instance_create(360, 185, obj_savepoint)
}
