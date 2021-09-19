var _temp_local_var_2;
if (con == 0)
{
    with (obj_mainchara)
    {
        if place_meeting(x, y, obj_traffic_road_trigger)
            other.con = 1
    }
}
if (con == 1)
{
    global.interact = 1
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    con++
}
if (con == 2)
{
    con = -999
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* Wait, is this another puzzle? You do it./%", "obj_controller_keyboard_puzzle_2_slash_Step_0_gml_18_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect(150, ra_actor.y, 8)
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect(86, su_actor.y, 6)
    gml_Script_c_wait(8)
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect(150, 348, 12)
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect(86, 344, 12)
    gml_Script_c_wait(13)
    gml_Script_c_facing("u")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("u")
    gml_Script_c_wait(4)
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_var_instance(id, "con", 3)
    gml_Script_c_terminatekillactors()
}
if (con == 3 && (!gml_Script_i_ex(cutscene_master)))
{
    npcral = gml_Script_instance_create(realral.x, realral.y, obj_npc_sign)
    npcral.sprite_index = spr_ralsei_walk_up
    realral.visible = false
    npcsus = gml_Script_instance_create(realsus.x, realsus.y, obj_npc_sign)
    npcsus.sprite_index = spr_susie_walk_up_dw
    realsus.visible = false
    global.interact = 0
    con++
}
if (con == 4)
{
    if (global.flag[333] == 1)
    {
        with (obj_mainchara)
        {
            if place_meeting(x, y, obj_traffic_road_trigger)
                other.con = 5
        }
    }
}
if (con == 5)
{
    gml_Script_scr_tempsave()
    realral.x = npcral.x
    realral.y = npcral.y
    var _temp_local_var_2 = realral
    gml_Script_scr_caterpillar_interpolate()
}
if (con == 4)
{
    failcount = obj_ch2_keyboardpuzzle_controller.failcount
    if (hintcon == 0 && global.interact == 0)
    {
        if (failcount == 8)
        {
            global.interact = 1
            hintcon++
            timer = 0
        }
    }
    if (hintcon == 1)
    {
        timer++
        if (timer == 15)
        {
            gml_Script_scr_speaker("ralsei")
            gml_Script_msgsetloc(0, "\\EQ* Um..^1. Kris?/", "obj_controller_keyboard_puzzle_2_slash_Step_0_gml_109_0")
            gml_Script_msgnextloc("\\EJ* Maybe you can press the same key more than once?/%", "obj_controller_keyboard_puzzle_2_slash_Step_0_gml_110_0")
            d = gml_Script_d_make()
            d.side = 0
            hintcon++
        }
    }
    if (hintcon == 2 && (!gml_Script_d_ex()))
    {
        global.interact = 0
        global.facing = 0
        hintcon++
    }
}
