if (obj_mainchara.x > x && con == -1)
{
    con = 1
    global.interact = 1
    global.facing = 1
    gml_Script_scr_losechar()
    gml_Script_scr_getchar(4)
    gml_Script_scr_makecaterpillar(0, -100, 4, 0)
    with (obj_caterpillarchara)
        visible = false
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    qu = 4
    qu_actor = gml_Script_instance_create((gml_Script_camerax() + 645), ((gml_Script_cameray() + view_hport[0]) + 200), obj_actor)
    gml_Script_scr_actor_setup(qu, qu_actor, "queen")
    qu_actor.sprite_index = spr_queen_walk_up
    be = 5
    be_actor = gml_Script_instance_create((gml_Script_camerax() + 666), ((gml_Script_cameray() + view_hport[0]) + 200), obj_actor)
    gml_Script_scr_actor_setup(be, be_actor, "berdly")
    be_actor.sprite_index = spr_berdly_walk_up_dw
    gml_Script_c_sel(no)
    no_actor.sprite_index = noellemarker.sprite_index
    gml_Script_c_setxy(noellemarker.x, noellemarker.y)
}
if (con == 1)
{
    con = 2
    gml_Script_c_mus2("volume", 0, 30)
    gml_Script_c_sel(kr)
    gml_Script_c_walkdirect(210, 222, 15)
    gml_Script_c_delayfacing(16, "r")
    gml_Script_c_sel(no)
    gml_Script_c_pannable(1)
    gml_Script_c_panspeed_wait(5, 0, 18)
    gml_Script_c_var_instance(noellemarker, "visible", 0)
    gml_Script_c_mus("free_all")
    gml_Script_c_facing("l")
    gml_Script_c_emote("!", 30, 15)
    gml_Script_c_wait(30)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\EF* K-Kris!^1! What are you---/", "obj_ch2_city01_slash_Step_0_gml_58_0")
    gml_Script_c_facenext("queen", 1)
    gml_Script_c_msgnextloc("\\E1* Oh Noelle Sweetie/%", "obj_ch2_city01_slash_Step_0_gml_60_0")
    gml_Script_c_talk_wait()
    gml_Script_c_emote("!", 30, 15)
    gml_Script_c_facing("r")
    gml_Script_c_wait(30)
    gml_Script_c_walk_wait("u", 10, 10)
    gml_Script_c_sprite(501)
    gml_Script_c_autodepth(0)
    gml_Script_c_depth(950000)
    gml_Script_c_msgside("bottom")
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\EE* (Don't let her find me...)/%", "obj_ch2_city01_slash_Step_0_gml_76_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(qu)
    gml_Script_c_walkdirect_wait(645, 173, 40)
    gml_Script_c_mus2("initloop", "queen.ogg", 0)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\EI* Noelle Sweetie Darling Honey Where Are You/%", "obj_ch2_city01_slash_Step_0_gml_85_0")
    gml_Script_c_talk_wait()
    gml_Script_c_soundplay(292)
    gml_Script_c_sprite(62)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\EC* We're A Team Now Remember/", "obj_ch2_city01_slash_Step_0_gml_94_0")
    gml_Script_c_msgnextloc("* You Still Have To Be My Willing Minion/%", "obj_ch2_city01_slash_Step_0_gml_95_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(10)
    gml_Script_c_autowalk(1)
    gml_Script_c_walk_wait("l", 10, 8)
    gml_Script_c_emote("!", 30, 20)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\ED* ..^1. Kris/", "obj_ch2_city01_slash_Step_0_gml_107_0")
    gml_Script_c_msgnextloc("\\E1* It Appears/", "obj_ch2_city01_slash_Step_0_gml_108_0")
    gml_Script_c_msgnextloc("\\EB* Our Comrades Have Pressed The Escape Key On Us/", "obj_ch2_city01_slash_Step_0_gml_109_0")
    gml_Script_c_msgnextloc("\\E5* ...^1. So It Has Come To This.../", "obj_ch2_city01_slash_Step_0_gml_110_0")
    gml_Script_c_msgnextloc("\\E5* In Order To Find Our Teams/", "obj_ch2_city01_slash_Step_0_gml_111_0")
    gml_Script_c_msgnextloc("\\E4* .../", "obj_ch2_city01_slash_Step_0_gml_112_0")
    gml_Script_c_msgnextloc("\\E9* We Must Form An Uneasy Truce.../%", "obj_ch2_city01_slash_Step_0_gml_113_0")
    gml_Script_c_talk_wait()
    gml_Script_c_emote("!", 30, 25)
    gml_Script_c_sprite(505)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E6* Queen!^1! My splendid Queen!^1! Where are you!!/", "obj_ch2_city01_slash_Step_0_gml_120_0")
    gml_Script_c_facenext("queen", 8)
    gml_Script_c_msgnextloc("\\E8* Oh No Don't Let Him Find Me/%", "obj_ch2_city01_slash_Step_0_gml_122_0")
    gml_Script_c_talk_wait()
    gml_Script_c_walkdirect_wait(300, 173, 15)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(503)
    gml_Script_c_soundplay(159)
    gml_Script_c_jump(320, 48, 20, 15)
    gml_Script_c_wait(13)
    gml_Script_c_sel(no)
    gml_Script_c_sprite(502)
    gml_Script_c_sel(be)
    gml_Script_c_walkdirect_wait(666, 215, 48)
    gml_Script_c_walkdirect_wait(535, 215, 20)
    gml_Script_c_facing("l")
    gml_Script_c_wait(10)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E0* Ah^1, Kris..^1. NOT the lifeform I was looking for./", "obj_ch2_city01_slash_Step_0_gml_146_0")
    gml_Script_c_msgnextloc("\\E3* ..^1. Hmm? Where's the rest of the C+ Squad?/", "obj_ch2_city01_slash_Step_0_gml_147_0")
    gml_Script_c_msgnextloc("\\E7* Don't tell me you got abandoned!? HA!!/", "obj_ch2_city01_slash_Step_0_gml_148_0")
    gml_Script_c_msgnextloc("\\E2* HAHA!^1! That's what you get for trusting Susie!^1! HA!!/%", "obj_ch2_city01_slash_Step_0_gml_149_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(be)
    gml_Script_c_sprite(163)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E3* H..^1. Huh? Noelle? Queen?/%", "obj_ch2_city01_slash_Step_0_gml_157_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sprite(162)
    gml_Script_c_flip("x")
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EB* They're just..^1. busy retro gaming somewhere!!/%", "obj_ch2_city01_slash_Step_0_gml_165_0")
    gml_Script_c_talk_wait()
    gml_Script_c_flip("x")
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(683)
    gml_Script_c_imageindex(0)
    gml_Script_c_imagespeed(0.1)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E6* I bet they're waiting for me on the player select screen!!/", "obj_ch2_city01_slash_Step_0_gml_176_0")
    gml_Script_c_msgnextloc("\\E2* Listening to strangely groovy music!^1! HAHA^1! HA!^1! HA!!/", "obj_ch2_city01_slash_Step_0_gml_177_0")
    gml_Script_c_msgnextloc("\\E8* .../%", "obj_ch2_city01_slash_Step_0_gml_178_0")
    gml_Script_c_talk_wait()
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("u")
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E9* ...Sigh./%", "obj_ch2_city01_slash_Step_0_gml_186_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("l")
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EA* So it's come to this./", "obj_ch2_city01_slash_Step_0_gml_193_0")
    gml_Script_c_msgnextloc("\\E9* In order to find our respective teams.../", "obj_ch2_city01_slash_Step_0_gml_194_0")
    gml_Script_c_msgnextloc("\\E0* It APPEARS.../", "obj_ch2_city01_slash_Step_0_gml_195_0")
    gml_Script_c_msgnextloc("\\EJ* We must form an uneasy truce.../%", "obj_ch2_city01_slash_Step_0_gml_196_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(qu)
    gml_Script_c_sprite(504)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E8* What The/", "obj_ch2_city01_slash_Step_0_gml_204_0")
    gml_Script_c_msgnextloc("\\EH* Who The Beep Said You Could Double Trucies/%", "obj_ch2_city01_slash_Step_0_gml_205_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_sel(be)
    gml_Script_c_facing("u")
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E3* Huh? Did you hear something?/%", "obj_ch2_city01_slash_Step_0_gml_216_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_sel(qu)
    gml_Script_c_sprite(503)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\EC* Honk Honk No It's Just The Sounds Of The City/", "obj_ch2_city01_slash_Step_0_gml_227_0")
    gml_Script_c_facenext("berdly", "I")
    gml_Script_c_msgnextloc("\\EI* Oh okay./%", "obj_ch2_city01_slash_Step_0_gml_229_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(be)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E7* Hmph. Well I'll be ahead. Don't be LATE!!!/%", "obj_ch2_city01_slash_Step_0_gml_237_0")
    gml_Script_c_talk_wait()
    gml_Script_c_walkdirect_wait(666, 215, 15)
    gml_Script_c_walkdirect_wait(666, ((gml_Script_cameray() + view_hport[0]) + 200), 30)
    gml_Script_c_wait(15)
    gml_Script_c_sel(no)
    gml_Script_c_sprite(501)
    gml_Script_c_sel(qu)
    gml_Script_c_autowalk(0)
    gml_Script_c_jump(470, 171, 20, 10)
    gml_Script_c_soundplay(159)
    gml_Script_c_wait(10)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E1* Kris As Part Of Our Truce (The Better One)/", "obj_ch2_city01_slash_Step_0_gml_258_0")
    gml_Script_c_msgnextloc("\\ED* Keep Distracting Berdly And Find Noelle/", "obj_ch2_city01_slash_Step_0_gml_259_0")
    gml_Script_c_msgnextloc("\\E4* For You See.../%", "obj_ch2_city01_slash_Step_0_gml_260_0")
    gml_Script_c_talk_wait()
    gml_Script_c_autowalk(1)
    gml_Script_c_walk_wait("r", 8, 5)
    gml_Script_c_wait(30)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E5* Berdly..^1. He's.../%", "obj_ch2_city01_slash_Step_0_gml_269_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E1* OK There's Nothing Wrong With Him He's Just Annoying/%", "obj_ch2_city01_slash_Step_0_gml_279_0")
    gml_Script_c_talk_wait()
    gml_Script_c_walk("r", 14, 10)
    gml_Script_c_delaywalk(11, "d", 15, 30)
    gml_Script_c_mus2("volume", 0, 40)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\ED* Toodles/%", "obj_ch2_city01_slash_Step_0_gml_289_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_sel(no)
    gml_Script_c_autodepth(1)
    gml_Script_c_walk_wait("d", 5, 20)
    gml_Script_c_walk("l", 3, 33)
    gml_Script_c_panobj(kr_actor, 33)
    gml_Script_c_wait(50)
    gml_Script_c_pannable(0)
    gml_Script_c_msc(1065)
    gml_Script_c_talk_wait()
}
if (con == 20)
{
    con = 21
    gml_Script_c_mus2("initplay", "charjoined.ogg", 0)
    gml_Script_c_speaker("no_name")
    gml_Script_c_msgsetloc(0, "* (Noelle joined the party!)/%", "obj_ch2_city01_slash_Step_0_gml_313_0")
    gml_Script_c_talk_wait()
}
if (con == 21 && (!gml_Script_d_ex()))
{
    con = 50
    gml_Script_c_mus("free_all")
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 50 && (!gml_Script_i_ex(895)))
{
    con = 0
    global.plot = 70
    global.interact = 0
    global.facing = 0
    gml_Script_snd_free_all()
    var savepoint = gml_Script_instance_create(360, 185, obj_savepoint)
    savepoint.depth = (alleyoverlay.depth - 100)
    gml_Script_scr_tempsave()
    noellejoin = 1
}
if noellejoin
{
    if (leaveleftattempt == 0 && obj_mainchara.x < 40)
    {
        leavecon = 10
        leaveleftattempt = 1
    }
    if (leaverightattempt == 0 && obj_mainchara.x > 520)
    {
        leaverightattempt = 1
        leavecon = 20
    }
    if (leavecon == 10)
    {
        leavecon = 30
        global.interact = 1
        global.facing = 1
        obj_mainchara.x += 4
        with (obj_caterpillarchara)
            gml_Script_scr_caterpillar_interpolate()
        gml_Script_scr_speaker("noelle")
        gml_Script_msgsetloc(0, "\\E2* K..^1. Kris...? Isn't that the wrong way...?/", "obj_ch2_city01_slash_Step_0_gml_375_0")
        gml_Script_msgnextloc("\\E8* (Somehow I'm already regretting this...)/%", "obj_ch2_city01_slash_Step_0_gml_376_0")
        gml_Script_d_make()
    }
    if (leavecon == 20)
    {
        leavecon = 30
        global.interact = 1
        global.facing = 3
        obj_mainchara.x -= 4
        with (obj_caterpillarchara)
            gml_Script_scr_caterpillar_interpolate()
        gml_Script_scr_speaker("noelle")
        gml_Script_msgsetloc(0, "\\ES* So^1, um^1, any idea where Susie is?/", "obj_ch2_city01_slash_Step_0_gml_388_0")
        gml_Script_msgnextloc("\\EN* What!? WHAT!? I'm just asking!^1! It's a normal question!!/%", "obj_ch2_city01_slash_Step_0_gml_389_0")
        gml_Script_d_make()
    }
    if (leavecon == 30 && (!gml_Script_d_ex()))
    {
        leavecon = 0
        global.interact = 0
        global.facing = 0
    }
}
