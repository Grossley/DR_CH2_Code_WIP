if (con == 0 && obj_mainchara.x >= x && global.interact == 0)
{
    con = 1
    global.interact = 1
}
if (con == 1)
{
    con = 2
    cutscene_master = scr_cutscene_make()
    scr_maincharacters_actors()
    la = 5
    la_actor = instance_create(1220, 184, obj_actor)
    scr_actor_setup(la, la_actor, "lancer")
    la_actor.sprite_index = spr_lancer_ut
    c_sel(la)
    c_autowalk(false)
    nl = 6
    nl_actor = instance_create((obj_mainchara.x - 500), (obj_mainchara.y - 80), obj_actor)
    scr_actor_setup(nl, nl_actor, "lancer")
    nl_actor.sprite_index = spr_lancer_rt
    c_sel(nl)
    c_autowalk(false)
    snd_free_all()
}
if (con == 2)
{
    c_wait(15)
    c_sel(kr)
    c_emote("!", 30)
    c_sel(su)
    c_emote("!", 30)
    c_sel(ra)
    c_emote("!", 30)
    c_speaker("susie")
    c_msgsetloc(0, "\\E7* Hey^1, is that... Lancer!?/%", "obj_cutscene_test_slash_Step_0_gml_51_0")
    c_talk_wait()
    c_msgzurasu(1)
    c_pannable(true)
    c_panspeed(5, 0, 35)
    c_sel(kr)
    c_walkdirect(936, 240, 15)
    c_delayfacing(16, "r")
    c_sel(su)
    c_walkdirect(976, 186, 15)
    c_delayfacing(16, "r")
    c_sel(ra)
    c_walkdirect(930, 138, 15)
    c_delayfacing(16, "r")
    c_wait(16)
    c_msgside("bottom")
    c_speaker("susie")
    c_msgsetloc(0, "\\E2* What are you up to^1, buddy?/%", "obj_cutscene_test_slash_Step_0_gml_78_0")
    c_talk_wait()
    c_sel(la)
    c_facing("l")
    c_speaker("lancer")
    c_msgsetloc(0, "\\E1* Lancer?/%", "obj_cutscene_test_slash_Step_0_gml_87_0")
    c_talk_wait()
    c_var_lerp("image_angle", "init", 360, 30)
    c_soundplay(snd_lancerwhistle)
    c_mus2("initloop", "lancer.ogg", 0)
    c_speaker("lancer")
    c_msgsetloc(0, "\\E2* Ho ho ho!!^1! Susie!!!/%", "obj_cutscene_test_slash_Step_0_gml_96_0")
    c_talk_wait()
    c_wait(60)
    c_mus("stop")
    c_mus("free_all")
    c_soundplay(snd_hypnosis)
    c_speaker("lancer")
    c_msgsetloc(0, "\\E1* Who says I'm Lancer?/", "obj_cutscene_test_slash_Step_0_gml_107_0")
    c_facenext("susie", 0)
    c_msgnextloc("\\E0* Of course you're Lancer.../", "obj_cutscene_test_slash_Step_0_gml_109_0")
    c_facenext("lancer", 3)
    c_msgnextloc("\\E3* ..^1. then who's that?/%", "obj_cutscene_test_slash_Step_0_gml_111_0")
    c_talk_wait()
    c_wait(15)
    c_panspeed(-5, 0, 10)
    c_sel(nl)
    c_walkdirect(760, 210, 15)
    c_wait(30)
    c_sel(kr)
    c_facing("l")
    c_emote("!", 30)
    c_sel(su)
    c_facing("l")
    c_emote("!", 30)
    c_sel(ra)
    c_facing("l")
    c_emote("!", 30)
    c_wait(30)
    c_speaker("lancer")
    c_msgsetloc(0, "\\E1* Hoho!/%", "obj_cutscene_test_slash_Step_0_gml_139_0")
    c_talk_wait()
    c_speaker("susie")
    c_msgsetloc(0, "\\E0* Alright^1, are you Lancer then!?/", "obj_cutscene_test_slash_Step_0_gml_145_0")
    c_facenext("lancer", 8)
    c_msgnextloc("\\E8* Yes I am!/%", "obj_cutscene_test_slash_Step_0_gml_147_0")
    c_talk_wait()
    c_sel(ra)
    c_sprite(spr_ralsei_hurt_overworld)
    c_speaker("ralsei")
    c_msgsetloc(0, "\\EL* Which one of you said that!?/%", "obj_cutscene_test_slash_Step_0_gml_156_0")
    c_talk_wait()
    c_sel(la)
    c_spin(5)
    c_sel(nl)
    c_var_lerp("image_angle", "init", 360, 30)
    c_wait(30)
    c_sel(la)
    c_spin(0)
    c_facing("l")
    c_speaker("lancer")
    c_msgsetloc(0, "\\E1* I did!/", "obj_cutscene_test_slash_Step_0_gml_174_0")
    c_facenext("susie", 4)
    c_msgnextloc("\\E4* That's it^1, I'm taking a closer look!/%", "obj_cutscene_test_slash_Step_0_gml_176_0")
    c_talk_wait()
    c_sel(la)
    c_facing("l")
    c_sel(ra)
    c_facing("d")
    c_sel(kr)
    c_facing("d")
    c_sel(su)
    c_walkdirect((obj_mainchara.x + 280), (obj_mainchara.y - 80), 20)
    c_wait(60)
    c_walkdirect(826, 190, 30)
    c_wait(60)
    c_walkdirect(976, 186, 30)
    c_delayfacing(31, "d")
    c_wait(60)
    c_speaker("ralsei")
    c_msgsetloc(0, "\\E0* Umm^1, so what did you figure out?/", "obj_cutscene_test_slash_Step_0_gml_209_0")
    c_facenext("susie", 3)
    c_msgnextloc("\\E3* Uhhh.../%", "obj_cutscene_test_slash_Step_0_gml_211_0")
    c_talk_wait()
    c_sel(su)
    c_sprite(spr_susie_pose)
    c_speaker("susie")
    c_msgsetloc(0, "\\E9* I'll just be friends with both of them!/%", "obj_cutscene_test_slash_Step_0_gml_220_0")
    c_talk_wait()
    c_sel(ra)
    c_sprite(spr_ralsei_laugh)
    c_autowalk(false)
    c_imagespeed(0.25)
    c_speaker("ralsei")
    c_msgsetloc(0, "\\E2* That's the attitude!/", "obj_cutscene_test_slash_Step_0_gml_231_0")
    c_facenext("lancer", 1)
    c_msgnextloc("\\E1* Hohoho^1! Yeah^1, it is!/%", "obj_cutscene_test_slash_Step_0_gml_233_0")
    c_talk_wait()
    c_sel(la)
    c_sprite(spr_realisticexplosion)
    c_autowalk(false)
    c_imagespeed(0.5)
    c_soundplay(snd_badexplosion)
    c_wait(34)
    c_sel(ra)
    c_sprite(spr_ralsei_hurt_overworld)
    c_sel(su)
    c_sprite(spr_susie_shock_r)
    c_sel(kr)
    c_facing("r")
    c_sel(la)
    c_visible(0)
    c_speaker("susie")
    c_msgsetloc(0, "\\ER* What the!?/", "obj_cutscene_test_slash_Step_0_gml_259_0")
    c_msgnextloc("\\EZ* L-Lancer!?/%", "obj_cutscene_test_slash_Step_0_gml_260_0")
    c_talk_wait()
    c_sel(kr)
    c_facing("l")
    c_sel(su)
    c_facing("l")
    c_sel(ra)
    c_autowalk(true)
    c_facing("l")
    c_speaker("lancer")
    c_msgsetloc(0, "\\E2* That was the fake one./", "obj_cutscene_test_slash_Step_0_gml_274_0")
    c_facenext("ralsei", 2)
    c_msgnextloc("\\E2* Oh^1, okay./%", "obj_cutscene_test_slash_Step_0_gml_276_0")
    c_talk_wait()
    c_sel(nl)
    c_walkdirect(450, 205, 15)
    c_wait(30)
    c_actortokris()
    c_actortocaterpillar()
    c_panobj(kr_actor, 10)
    c_wait(10)
    c_pannable(false)
    c_terminatekillactors()
}
if (con == 2 && (!i_ex(obj_cutscene_master)))
{
    con = 3
    global.interact = 0
    global.facing = 0
}
