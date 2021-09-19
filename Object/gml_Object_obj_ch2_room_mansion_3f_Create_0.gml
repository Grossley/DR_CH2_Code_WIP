var floor_dir_1f, sign_4f, floor_dir_4f;
if (gml_Script_scr_sideb_get_phase() != 3)
{
    con = -1
    customcon = 0
    if (global.chapter != 2 || global.plot >= 125)
        instance_destroy()
    else
    {
        berdly_marker = gml_Script_scr_dark_marker(680, 165, 669)
        var _temp_local_var_12 = berdly_marker
        gml_Script_scr_depth()
    }
    door = gml_Script_scr_dark_marker(590, 80, 2860)
    door.depth = 999999
    bookcase_x = ((global.flag[392] == 0 && global.plot < 150) ? 590 : 520)
    bookcase = gml_Script_instance_create(bookcase_x, 80, obj_npc_sign)
    bookcase.sprite_index = spr_dw_mansion_bookcase
    bookcase.depth = 899999
    door_left = gml_Script_scr_dark_marker(250, 80, 2860)
    door_left.depth = 999999
    bookcase_x_left = (global.plot >= 150 ? 180 : 250)
    bookcase_left = gml_Script_instance_create(bookcase_x_left, 80, obj_npc_sign)
    bookcase_left.sprite_index = spr_dw_mansion_bookcase
    bookcase_left.depth = 899999
    if (global.plot >= 150)
    {
        var sign_1f = gml_Script_scr_dark_marker(250, 40, 2933)
        sign_1f.image_speed = 0
        var _temp_local_var_5 = sign_1f
        gml_Script_scr_depth()
    }
    hide_entrance = 0
    if (!gml_Script_scr_havechar(2))
    {
        layer_set_visible("Tiles_ExitBlock", 1)
        var exit_collider = gml_Script_instance_create(240, 360, obj_soliddark)
        exit_collider.image_xscale = 2
    }
    if (global.flag[345] == 1)
    {
        var icon_npc = gml_Script_instance_create(1047, 150, obj_npc_room)
        icon_npc.sprite_index = spr_npc_iconman
    }
}
