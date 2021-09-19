var _temp_local_var_3;
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
    gml_Script_c_sel(ra)
    gml_Script_c_facing("u")
    gml_Script_c_sel(su)
    gml_Script_c_facing("u")
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect(ra_actor.x, 302, 8)
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect(su_actor.x, 298, 8)
    gml_Script_c_wait(8)
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect(520, 302, 30)
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect(84, 298, 30)
    gml_Script_c_wait(31)
    gml_Script_c_facing("r")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("l")
    gml_Script_c_wait(4)
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_var_instance(id, "con", 3)
    gml_Script_c_terminatekillactors()
}
if (con == 3 && (!gml_Script_i_ex(cutscene_master)))
{
    npcral = gml_Script_instance_create(realral.x, realral.y, obj_npc_sign)
    npcral.sprite_index = spr_ralsei_walk_left
    realral.visible = false
    npcsus = gml_Script_instance_create(realsus.x, realsus.y, obj_npc_sign)
    npcsus.sprite_index = spr_susie_walk_right_dw
    realsus.visible = false
    global.interact = 0
    con++
}
if (con == 4)
{
    triggered = 0
    with (obj_mainchara)
    {
        if place_meeting(x, y, obj_traffic_road_trigger)
            other.triggered = 1
    }
    if (global.flag[420] == 1 && triggered == 1)
    {
        gml_Script_scr_tempsave()
        realral.x = npcral.x
        realral.y = npcral.y
        var _temp_local_var_3 = realral
        gml_Script_scr_caterpillar_interpolate()
    }
}
