if (southcon == 1)
{
    southcon = -1
    layer_set_visible("TILES_Secret", 0)
    if gml_Script_i_ex(southcollider)
        instance_destroy(southcollider)
}
if (con == 0 && weird == 1)
{
    if instance_exists(obj_fadein)
    {
        global.interact = 0
        con++
    }
}
if (con == 1)
{
    with (obj_mainchara)
    {
        if place_meeting(x, y, obj_triggervolume)
            other.con++
    }
}
if (con == 2)
{
    global.interact = 1
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    con++
}
if (con == 3)
{
    con = -9999
    gml_Script_c_saveload("save")
    gml_Script_c_pannable(true)
    gml_Script_c_pan(0, 320, 32)
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect(202, 538, 32)
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect(263, 542, 32)
    gml_Script_c_wait(33)
    gml_Script_c_facing("u")
    gml_Script_c_sel(su)
    gml_Script_c_facing("u")
    gml_Script_c_wait(8)
    gml_Script_c_msgside("bottom")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "* Huh...? Isn't this.../%", "obj_ch2_room_mansion_entrance_slash_Step_0_gml_46_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("r")
    gml_Script_c_wait(12)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "* Uhh^1, that guy from before?/%", "obj_ch2_room_mansion_entrance_slash_Step_0_gml_51_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(4)
    gml_Script_c_facing("u")
    gml_Script_c_wait(8)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "* Why is there a statue of him?/", "obj_ch2_room_mansion_entrance_slash_Step_0_gml_57_0")
    gml_Script_c_facenext("ralsei", 0)
    gml_Script_c_msgnextloc("* It's..^1. not a statue^1, Susie./", "obj_ch2_room_mansion_entrance_slash_Step_0_gml_59_0")
    gml_Script_c_facenext("susie", 0)
    gml_Script_c_msgnextloc("* Huh?/%", "obj_ch2_room_mansion_entrance_slash_Step_0_gml_61_0")
    gml_Script_c_talk_wait()
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\E4* You see^1, each Dark Fountain creates a different \"world.\"/", "obj_ch2_scene20_slash_Step_0_gml_336_0")
    gml_Script_c_msgnextloc("\\E4* A \"world\" whose Darkners reflect the will of its fountain./", "obj_ch2_scene20_slash_Step_0_gml_337_0")
    if (global.lang == "ja")
        gml_Script_c_msgnextloc("\\E4＊ その世界を生み出した&　 「闇の泉」の意志を&　 受け継いだ者たちなんだよ。/", "obj_ch2_scene20_slash_Step_0_gml_375_0_b")
    gml_Script_c_msgnextloc("\\E4* But^1, though those Darkners can exist in their own worlds.../", "obj_ch2_scene20_slash_Step_0_gml_338_0")
    gml_Script_c_msgnextloc("\\E4* They might not \"belong\" if they go to another one./%", "obj_ch2_scene20_slash_Step_0_gml_339_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "* Huh.../%", "obj_ch2_room_mansion_entrance_slash_Step_0_gml_73_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(4)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "* So if we just bring him back to the castle town.../", "obj_ch2_room_mansion_entrance_slash_Step_0_gml_78_0")
    gml_Script_c_msgnextloc("* .../%", "obj_ch2_room_mansion_entrance_slash_Step_0_gml_79_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(8)
    gml_Script_c_facing("u")
    gml_Script_c_wait(8)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "* Do we^1, uh^1, have to do that?/", "obj_ch2_room_mansion_entrance_slash_Step_0_gml_85_0")
    gml_Script_c_facenext("ralsei", 0)
    gml_Script_c_msgnextloc("* Umm^1, yes./", "obj_ch2_room_mansion_entrance_slash_Step_0_gml_87_0")
    gml_Script_c_facenext("susie", 0)
    gml_Script_c_msgnextloc("* Whatever./%", "obj_ch2_room_mansion_entrance_slash_Step_0_gml_89_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(8)
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect(su_actor.x, su_actor.y, 28)
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect(ra_actor.x, ra_actor.y, 28)
    gml_Script_c_panobj(kr_actor, 28)
    gml_Script_c_wait(28)
    gml_Script_c_var_instance(id, "con", 4)
    gml_Script_c_pannable(false)
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 4)
{
    with (obj_caterpillarchara)
        gml_Script_scr_caterpillar_interpolate()
    global.interact = 0
    global.flag[915] = 8
    con++
}
