var _temp_local_var_1;
con = -1
customcon = 0
noellejoin = 0
leavecon = 0
leaveleftattempt = 0
leaverightattempt = 0
if (global.chapter != 2)
    // WARNING: Popz'd an empty stack.
else if (global.plot < 70)
{
    // WARNING: Popz'd an empty stack.
    if 274
        274
    alleyoverlay = gml_Script_scr_marker(320, 40, 2528)
    alleyoverlay.image_xscale = 30
    alleyoverlay.image_yscale = 50
    alleyoverlay.image_blend = c_black
    alleyoverlay.image_alpha = 0.5
    var _temp_local_var_1 = alleyoverlay
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
