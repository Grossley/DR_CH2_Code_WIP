var _temp_local_var_2, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7;
if (obj_mainchara.x >= 415 && con == -1)
{
    con = 1
    global.interact = 1
    global.facing = 1
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    be = (actor_count + 1)
    be_actor = gml_Script_instance_create(berdly_marker.x, berdly_marker.y, obj_actor)
    gml_Script_scr_actor_setup(be, be_actor, "berdly")
    be_actor.sprite_index = spr_berdly_walk_left_dw
    // WARNING: Popz'd an empty stack.
    if 274
        274
}
if (con == 1)
{
    con = 49
    alarm[0] = 30
    var _temp_local_var_2 = berdly_marker
}
if (con == 50 && customcon == 1)
{
    con = 51
    3
    gml_Script_scr_makecaterpillar((kr_actor.x + 40), (kr_actor.y - 7), 3, 0)
    with (obj_caterpillarchara)
        visible = false
}
if (con == 51)
{
    con = 60
    // WARNING: Popz'd an empty stack.
    ra
    "l"
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (con == 60 && (!895))
{
    with (obj_caterpillarchara)
        // WARNING: Popz'd an empty stack.
    con = 99
    global.plot = 125
    global.interact = 0
    global.facing = 0
    var savepoint = gml_Script_instance_create(260, 300, obj_savepoint)
    var _temp_local_var_5 = savepoint
}
if berdly_exit
{
    berdly_shadow = clamp((berdly_shadow + 0.2), 0, 1)
    var shadow = berdly_shadow
    var _temp_local_var_6 = be_actor
    color_blend = merge_color(c_white, make_color_hsv(0, 0, 0), shadow)
}
if susie_exit
{
    susie_shadow = clamp((susie_shadow + 0.2), 0, 1)
    shadow = susie_shadow
    var _temp_local_var_7 = su_actor
    color_blend = merge_color(c_white, make_color_hsv(0, 0, 0), shadow)
}
if hide_entrance
{
    hide_entrance = 0
    layer_set_visible("Tiles_ExitBlock", 1)
    var exit_collider = gml_Script_instance_create(240, 360, obj_soliddark)
    exit_collider.image_xscale = 2
}
