if (obj_mainchara.x > 240 && con == -1)
{
    con = 1
    global.interact = 1
    global.facing = 1
}
if (con == 1)
{
    con = 2
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
}
if (con == 2)
{
    con = 3
    if (kr_actor.y > 780 || ra_actor.y > 780)
    {
        gml_Script_c_sel(ra)
        gml_Script_c_walkdirect((kr_actor.x + 70), (kr_actor.y - 50), 20)
        gml_Script_c_delayfacing(21, "l")
        gml_Script_c_sel(kr)
        gml_Script_c_walkdirect_wait(kr_actor.x, (kr_actor.y - 40), 20)
        gml_Script_c_facing("r")
    }
    else
    {
        gml_Script_c_sel(ra)
        gml_Script_c_walkdirect_wait((kr_actor.x + 70), (kr_actor.y - 10), 20)
        gml_Script_c_facing("l")
        gml_Script_c_sel(kr)
        gml_Script_c_facing("r")
    }
    gml_Script_c_msgside("top")
    gml_Script_c_msc(1061)
    gml_Script_c_talk_wait()
}
if (con == 10)
{
    con = 11
    gml_Script_c_var_lerp_instance(blackall, "image_alpha", 0, 1, 60)
    gml_Script_c_mus2("volume", 0, 60)
    gml_Script_c_wait(60)
    gml_Script_c_mus("free_all")
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 11 && (!gml_Script_i_ex(895)))
{
    global.flag[331] = 0
    room_goto(room_dw_mansion_noelle_room)
}
if (con == 20)
{
    con = 21
    gml_Script_c_msgside("top")
    gml_Script_c_msc(1063)
    gml_Script_c_talk_wait()
}
if (con == 30 && (!gml_Script_d_ex()))
{
    con = 31
    alarm[0] = 30
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
    global.flag[319] = 2
    global.flag[331] = 1
}
if (con == 32 && (!gml_Script_i_ex(895)))
{
    con = 99
    gml_Script_instance_create(0, 0, obj_ch2_scene24e)
    instance_destroy()
}
