var _temp_local_var_7;
if (global.plot < 140)
{
    if (con == -1 && swanboat.x >= 40)
        global.facing = 1
    if (con == -1 && swanboat.x >= 136)
    {
        con = 1
        global.interact = 1
        swanboat.pause_x_move = 1
        swanboat.sprite_index = spr_swanboat_squish
        56
        swanboat.con = 99
        swanboat.active = false
        cutscene_master = 
        // WARNING: Popz'd an empty stack.
    }
    if (con == 1)
    {
        con = 2
        60
        kr
        "l"
        "ralsei"
        gml_Script_c_msgsetloc(0, "\\EL* H-huh? There's something blocking the way.../%", "obj_ch2_scene21_puzzle_entrance_slash_Step_0_gml_33_0")
        // WARNING: Popz'd an empty stack.
        kr
        gml_Script_c_walk("u", 4, 16)
        gml_Script_c_delayfacing(17, "r")
        8
        ra
        gml_Script_c_walk_wait("r", 4, 8)
        gml_Script_c_walk_wait("u", 4, 6)
        "r"
        5
        "ralsei"
        gml_Script_c_msgsetloc(0, "\\EJ* Maybe we can find some way to get rid of this...?/%", "obj_ch2_scene21_puzzle_entrance_slash_Step_0_gml_50_0")
        // WARNING: Popz'd an empty stack.
        15
        // WARNING: Popz'd an empty stack.
        // WARNING: Popz'd an empty stack.
        // WARNING: Popz'd an empty stack.
    }
    if (con == 2 && (!895))
    {
        con = 99
        with (obj_mainchara)
            fun = false
        with (obj_caterpillarchara)
        {
            follow = 1
            fun = false
        }
        global.interact = 0
        global.facing = 0
        bottom_collider = gml_Script_instance_create(200, 320, obj_soliddark)
        bottom_collider.visible = false
        bottom_collider.image_xscale = 6
        var swan_interact = gml_Script_instance_create((swanboat.x + 50), (swanboat.y + 80), obj_npc_sign)
        swan_interact.visible = false
        swan_interact.image_xscale = 4
        global.plot = 140
    }
}
else if remove_collider
{
    global.facing = 1
    remove_collider = 0
    var _temp_local_var_7 = left_collider
}
