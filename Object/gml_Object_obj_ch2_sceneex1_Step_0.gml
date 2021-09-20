if (obj_mainchara.x >= 970 && obj_mainchara.x <= 1020 && obj_mainchara.y < 180 && con == -1 && global.flag[309] < 9 && gml_Script_scr_havechar(2) && gml_Script_scr_havechar(3))
{
    instance_deactivate_object(obj_doorW)
    con = 1
    global.interact = 1
    global.facing = 0
    obj_mainchara.y += 4
}
if (con == -1 && global.flag[358] == 1 && obj_mainchara.x <= 900)
{
    global.flag[358] = 2
    con = 10
    global.interact = 1
    global.facing = 0
}
if (con == 1)
{
    con = 2
    with (obj_mainchara)
        visible = false
    with (obj_caterpillarchara)
        visible = false
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
}
if (con == 2)
{
    con = 3
    if (global.flag[358] == 0)
    {
        global.flag[358] = 1
        gml_Script_c_sel(kr)
        gml_Script_c_facing("d")
        gml_Script_c_sel(ra)
        gml_Script_c_walkdirect(1030, 180, 12)
        gml_Script_c_delayfacing(13, "l")
        gml_Script_c_sel(su)
        gml_Script_c_walkdirect(930, 175, 12)
        gml_Script_c_delayfacing(13, "r")
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\E5* Kris...? You want us to stay here...?/", "obj_ch2_sceneex1_slash_Step_0_gml_54_0")
        gml_Script_c_facenext("susie", 0)
        gml_Script_c_msgnextloc("* .../", "obj_ch2_sceneex1_slash_Step_0_gml_56_0")
        gml_Script_c_msgnextloc("\\E1* Sure^1, whatever./", "obj_ch2_sceneex1_slash_Step_0_gml_57_0")
        gml_Script_c_msgnextloc("\\EA* Me n' Ralsei'll have fun without you./%", "obj_ch2_sceneex1_slash_Step_0_gml_58_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(15)
        gml_Script_c_sel(kr)
        gml_Script_c_facing("u")
    }
    else
        global.flag[358] = (global.flag[358] + 1)
    gml_Script_c_waitcustom()
}
if (con == 3 && customcon == 1)
{
    con = 4
    alarm[0] = 30
    gml_Script_c_waitcustom_end()
    gml_Script_instance_create(0, 0, obj_fadeout)
    if gml_Script_snd_is_playing(global.currentsong[1])
        gml_Script_mus_volume(global.currentsong[1], 0, 14)
    gml_Script_c_wait(30)
    gml_Script_c_terminatekillactors()
}
if (con == 5 && (!gml_Script_i_ex(895)))
{
    con = 99
    global.interact = 3
    global.entrance = 20
    gml_Script_scr_losechar()
    gml_Script_snd_free_all()
    gml_Script_instance_create(0, 0, obj_persistentfadein)
    if (global.flag[309] < 5)
        global.flag[309] = 5
    room_goto(room_dw_mansion_b_entrance)
}
if (con == 10)
{
    con = 11
    gml_Script_scr_getchar(2)
    gml_Script_scr_getchar(3)
    gml_Script_scr_makecaterpillar((obj_mainchara.x - 40), obj_mainchara.y, 2, 0)
    gml_Script_scr_makecaterpillar((obj_mainchara.x - 120), obj_mainchara.y, 3, 1)
    with (obj_mainchara)
        visible = false
    with (obj_caterpillarchara)
        visible = false
    cutscene_master = gml_Script_scr_cutscene_make()
    with (nise_susie)
        visible = false
    with (nise_ralsei)
        visible = false
    kr = 0
    kr_actor = gml_Script_instance_create(obj_mainchara.x, obj_mainchara.y, obj_actor)
    gml_Script_scr_actor_setup(kr, kr_actor, "kris")
    kr_actor.sprite_index = spr_krisl_dark
    su = 1
    su_actor = gml_Script_instance_create(nise_susie.x, nise_susie.y, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = nise_susie.sprite_index
    su_actor.image_speed = nise_susie.image_speed
    ra = 2
    ra_actor = gml_Script_instance_create(nise_ralsei.x, nise_ralsei.y, obj_actor)
    gml_Script_scr_actor_setup(ra, ra_actor, "ralsei")
    ra_actor.sprite_index = nise_ralsei.sprite_index
    ra_actor.image_speed = nise_ralsei.image_speed
    gml_Script_c_sel(ra)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(494)
    gml_Script_c_imageindex(0)
    gml_Script_c_imagespeed(0.2)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(496)
    gml_Script_c_imageindex(0)
    gml_Script_c_imagespeed(0.2)
}
if (con == 11)
{
    con = 12
    alarm[0] = 30
    gml_Script_c_sel(kr)
    gml_Script_c_walkdirect(735, 285, 30)
    gml_Script_c_pannable(1)
    gml_Script_c_panspeed_wait(-6, 0, 35)
    gml_Script_c_msgside("top")
    gml_Script_c_var_instance(id, "disable_face", 1)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "* C'mon^1, Susie!^1! Give me my glasses back!!/", "obj_ch2_sceneex1_slash_Step_0_gml_165_0")
    gml_Script_c_facenext("susie", "a")
    gml_Script_c_msgnextloc("\\Ea* Oooh^1, look at me^1, I'm a big dweeb that loves homework!!/%", "obj_ch2_sceneex1_slash_Step_0_gml_167_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(ra)
    gml_Script_c_sprite(495)
    gml_Script_c_addxy(8, -3)
    gml_Script_c_imagespeed(0)
    gml_Script_c_imageindex(0)
    gml_Script_c_wait(10)
    gml_Script_c_imageindex(1)
    gml_Script_c_wait(10)
    gml_Script_c_imageindex(2)
    gml_Script_c_wait(10)
    gml_Script_c_sel(su)
    gml_Script_c_sprite(497)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\ES* C..^1. C'mon.../%", "obj_ch2_sceneex1_slash_Step_0_gml_184_0")
    gml_Script_c_talk_wait()
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\Ea* .../", "obj_ch2_sceneex1_slash_Step_0_gml_189_0")
    gml_Script_c_msgnextloc("\\EK* Fine^1, take them back!!/%", "obj_ch2_sceneex1_slash_Step_0_gml_190_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(ra)
    gml_Script_c_autowalk(1)
    gml_Script_c_sprite(790)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(1)
    gml_Script_c_sprite(823)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EP* Thank you!/%", "obj_ch2_sceneex1_slash_Step_0_gml_203_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EJ* Oh^1, Kris^1! Everything OK?/%", "obj_ch2_sceneex1_slash_Step_0_gml_214_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(60)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EK* Whatever^1, let's go./%", "obj_ch2_sceneex1_slash_Step_0_gml_237_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect(694, su_actor.y, 20)
    gml_Script_c_panobj(kr_actor, 15)
    gml_Script_c_wait(20)
    gml_Script_c_pannable(0)
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 13 && (!gml_Script_i_ex(895)))
{
    global.interact = 0
    con = 99
}
if (con == 50 && (!gml_Script_i_ex(895)))
{
    global.interact = 0
    global.facing = 0
    con = 0
}
if disable_face
{
    disable_face = 0
    global.fc = 0
}
