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
        gml_Script_snd_play(snd_squeaky)
        swanboat.con = 99
        swanboat.active = false
        cutscene_master = gml_Script_scr_cutscene_make()
        gml_Script_scr_maincharacters_actors()
    }
    if (con == 1)
    {
        con = 2
        gml_Script_c_wait(60)
        gml_Script_c_sel(kr)
        gml_Script_c_facing("l")
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\EL* H-huh? There's something blocking the way.../%", "obj_ch2_scene21_puzzle_entrance_slash_Step_0_gml_33_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(kr)
        gml_Script_c_walk("u", 4, 16)
        gml_Script_c_delayfacing(17, "r")
        gml_Script_c_wait(8)
        gml_Script_c_sel(ra)
        gml_Script_c_walk_wait("r", 4, 8)
        gml_Script_c_walk_wait("u", 4, 6)
        gml_Script_c_facing("r")
        gml_Script_c_wait(5)
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\EJ* Maybe we can find some way to get rid of this...?/%", "obj_ch2_scene21_puzzle_entrance_slash_Step_0_gml_50_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(15)
        gml_Script_c_actortokris()
        gml_Script_c_actortocaterpillar()
        gml_Script_c_terminatekillactors()
    }
    if (con == 2 && (!gml_Script_i_ex(obj_cutscene_master)))
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
    with (left_collider)
        instance_destroy()
    with (right_collider)
        instance_destroy()
}
