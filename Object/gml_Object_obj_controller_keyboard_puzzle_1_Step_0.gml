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
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\E2* Kris, I think you should handle this puzzle!/%", "obj_controller_keyboard_puzzle_1_slash_Step_0_gml_18_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect(50, 114, 12)
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect(102, 110, 12)
    gml_Script_c_wait(13)
    gml_Script_c_facing("d")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("d")
    gml_Script_c_wait(4)
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_var_instance(id, "con", 3)
    gml_Script_c_terminatekillactors()
}
if (con == 3 && (!gml_Script_i_ex(cutscene_master)))
{
    npcral = gml_Script_instance_create(realral.x, realral.y, obj_npc_sign)
    npcral.sprite_index = spr_ralsei_walk_down
    realral.visible = false
    npcsus = gml_Script_instance_create(realsus.x, realsus.y, obj_npc_sign)
    npcsus.sprite_index = spr_susie_walk_down_dw
    realsus.visible = false
    global.interact = 0
    con++
}
if (con == 4)
{
    if (global.flag[390] == 1 && obj_mainchara.x <= 160)
    {
        realral.x = npcral.x
        realral.y = npcral.y
        var _temp_local_var_3 = realral
        gml_Script_scr_caterpillar_interpolate()
    }
}
