if (global.interact == 0 && con == 1)
{
    con = 2
    alarm[0] = 30
    global.interact = 1
    global.facing = 0
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    kr_actor.sprite_index = spr_krisd_dark
    gml_Script_c_wait(30)
    gml_Script_c_sel(su)
    gml_Script_c_facing("u")
    gml_Script_scr_speaker("susie")
    gml_Script_msgsetloc(0, "* ..^1. This is new./%", "obj_ch2_room_cyber_intro_1_slash_Step_0_gml_21_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("r")
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 3 && (!gml_Script_i_ex(obj_cutscene_master)))
{
    con = 0
    global.plot = 50
    global.facing = 0
    global.interact = 0
    gml_Script_scr_tempsave()
}
