if (con == 0 && obj_mainchara.y >= (y - 26) && global.interact == 0)
{
    if (global.plot < 14)
    {
        con = 20
        global.interact = 1
        gml_Script_scr_speaker("ralsei")
        global.fe = 0
        gml_Script_msgsetloc(0, "\\E2* (Kris^1, I have something to show you in the CASTLE!)/%", "obj_ch2_scene6_slash_Step_0_gml_11_0")
        gml_Script_d_make()
        obj_mainchara.y = (y - 27)
    }
    if (global.plot == 15)
    {
        global.interact = 1
        con = 1
    }
}
if (con == 1)
{
    con = 5
    cutscene_master = gml_Script_scr_cutscene_make()
    with (obj_mainchara)
        visible = false
    la = 3
    la_actor = gml_Script_instance_create((obj_mainchara.x - 16), 900, obj_actor)
    gml_Script_scr_actor_setup(la, la_actor, "lancer")
    la_actor.sprite_index = spr_lancer_dt
    ro = 4
    ro_actor = gml_Script_instance_create((obj_mainchara.x - 28), 900, obj_actor)
    gml_Script_scr_actor_setup(ro, ro_actor, "rouxls")
    ro_actor.sprite_index = spr_rurus_idle
    gml_Script_c_sel(ro)
    gml_Script_c_autowalk(0)
    sw = 5
    sw_actor = gml_Script_instance_create((obj_mainchara.x - 20), 900, obj_actor)
    gml_Script_scr_actor_setup(sw, sw_actor, "starwalker")
    sw_actor.sprite_index = spr_npc_originalstarwalker
    with (sw_actor)
        specialsprite[0] = 1209
    gml_Script_c_sel(sw)
    gml_Script_c_autowalk(0)
    la_card = gml_Script_instance_create(0, 0, obj_marker)
    la_card.sprite_index = spr_cutscene_06_lancer_card
    ro_card = gml_Script_instance_create(0, 0, obj_marker)
    ro_card.sprite_index = spr_cutscene_06_rouxls_card
    gml_Script_scr_maincharacters_actors()
    gml_Script_c_msgside("bottom")
    gml_Script_c_sel(su)
    gml_Script_c_arg_objectxy(kr_actor, 42, -80)
    gml_Script_c_walkdirect(x, y, 15)
    gml_Script_c_sel(ra)
    gml_Script_c_arg_objectxy(kr_actor, -50, -75)
    gml_Script_c_walkdirect(x, y, 15)
    gml_Script_c_wait(15)
    gml_Script_c_facing("d")
    gml_Script_c_sel(su)
    gml_Script_c_facing("d")
    gml_Script_c_wait(5)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("u")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E6* Wait^1, Kris^1, we're leaving!? But we just got here!/", "obj_ch2_scene6_slash_Step_0_gml_84_0")
    gml_Script_c_msgnextloc("\\EK* Man^1, I don't wanna go do our group project.../%", "obj_ch2_scene6_slash_Step_0_gml_85_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait("5")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_wait("5")
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EK* Oh^1... You two have homework?/%", "obj_ch2_scene6_slash_Step_0_gml_93_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait("5")
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_wait(5)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EK* Uhh^1, well^1,/%", "obj_ch2_scene6_slash_Step_0_gml_101_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EN* Susie^1, Kris^1, you ought to do it right away^1! School's important!/", "obj_ch2_scene6_slash_Step_0_gml_106_0")
    gml_Script_c_msgnextloc("\\EN* I banish you from this kingdom until you start your project!/%", "obj_ch2_scene6_slash_Step_0_gml_107_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_facing("l")
    gml_Script_c_wait(5)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EH* Ugh^1, fine!!^1! I'll do it!!^1! Jeez!!!/%", "obj_ch2_scene6_slash_Step_0_gml_116_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(la)
    gml_Script_c_walk_wait("d", 15, 15)
    gml_Script_c_sel(su)
    gml_Script_c_facing("susieunhappy")
    gml_Script_c_facing("u")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("u")
    gml_Script_c_wait(15)
    gml_Script_c_speaker("lancer")
    gml_Script_c_msgsetloc(0, "\\E1* Susie!^1! Don't worry!^1! I'll go and help you^1, too!!!/", "obj_ch2_scene6_slash_Step_0_gml_128_0")
    gml_Script_c_facenext("ralsei", "C")
    gml_Script_c_msgnextloc("* Er^1, wait^1, Lancer^1! Perhaps you shouldn't -/", "obj_ch2_scene6_slash_Step_0_gml_130_0")
    gml_Script_c_facenext("lancer", 3)
    gml_Script_c_msgnextloc("* Too late^1, kindboy!^1! Friendship Forme!!/%", "obj_ch2_scene6_slash_Step_0_gml_132_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(kr)
    gml_Script_c_autodepth(0)
    gml_Script_c_depth(90)
    gml_Script_c_sel(la)
    gml_Script_c_spin(2)
    gml_Script_c_walk("d", 4, 35)
    gml_Script_c_sel(su)
    gml_Script_c_delayfacing(15, "l")
    gml_Script_c_delayfacing(30, "d")
    gml_Script_c_sel(ra)
    gml_Script_c_delayfacing(15, "r")
    gml_Script_c_delayfacing(30, "d")
    gml_Script_c_wait(35)
    gml_Script_c_sel(la)
    gml_Script_c_visible(0)
    gml_Script_c_soundplay(104)
    gml_Script_c_sel(kr)
    gml_Script_c_autodepth(1)
    gml_Script_c_wait(60)
    gml_Script_c_soundplay(194)
    gml_Script_c_speaker("no_name")
    gml_Script_c_msgsetloc(0, "* (LANCER was added to your Key Items.)/", "obj_ch2_scene6_slash_Step_0_gml_161_0")
    gml_Script_c_facenext("susie", 6)
    gml_Script_c_msgnextloc("* ..^1. What? Where'd you go...?/", "obj_ch2_scene6_slash_Step_0_gml_163_0")
    gml_Script_c_facenext("lancer", 0)
    gml_Script_c_msgnextloc("* Don't worry!^1! I just entered your INVENTORY!!/", "obj_ch2_scene6_slash_Step_0_gml_165_0")
    gml_Script_c_msgnextloc("\\E3* I'll just be hanging out in Kris's pocket!!!/", "obj_ch2_scene6_slash_Step_0_gml_166_0")
    gml_Script_c_facenext("susie", "K")
    gml_Script_c_msgnextloc("\\EK* Dunno what that means^1, but OK!/%", "obj_ch2_scene6_slash_Step_0_gml_168_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sel(ro)
    gml_Script_c_walk_wait("d", 15, 12)
    gml_Script_c_sel(su)
    gml_Script_c_facing("u")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("u")
    gml_Script_c_wait(15)
    gml_Script_c_speaker("rouxls")
    gml_Script_c_msgsetloc(0, "* Feare not^1! I too^1, shall Assisteth!/", "obj_ch2_scene6_slash_Step_0_gml_180_0")
    gml_Script_c_facenext("susie", "4")
    gml_Script_c_msgnextloc("\\E4* Uh^1, we're good./", "obj_ch2_scene6_slash_Step_0_gml_182_0")
    gml_Script_c_facenext("rouxls", "3")
    gml_Script_c_msgnextloc("\\E3* Ahah^1, quite!^1! We^1, as a Teame ^1- art Good!!!/%", "obj_ch2_scene6_slash_Step_0_gml_184_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sel(ro)
    gml_Script_c_arg_objectxy(kr_actor, -28, -40)
    gml_Script_c_walkdirect(x, y, 10)
    gml_Script_c_wait(5)
    gml_Script_c_sel(su)
    gml_Script_c_facing("d")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("d")
    gml_Script_c_wait(5)
    gml_Script_c_sel(ro)
    gml_Script_c_visible(0)
    gml_Script_c_wait(5)
    gml_Script_c_soundplay(172)
    gml_Script_c_speaker("no_name")
    gml_Script_c_msgsetloc(0, "* (ROUXLS became a Key Item even though no one wanted that.)/%", "obj_ch2_scene6_slash_Step_0_gml_201_0")
    gml_Script_c_talk_wait()
    if (global.flag[254] == 1)
    {
        gml_Script_scr_keyitemget(14)
        gml_Script_c_wait(10)
        gml_Script_c_sel(sw)
        gml_Script_c_walk_wait("d", 15, 15)
        gml_Script_c_sel(su)
        gml_Script_c_facing("u")
        gml_Script_c_sel(ra)
        gml_Script_c_facing("u")
        gml_Script_c_sel(sw)
        gml_Script_c_speaker("no_name")
        gml_Script_c_msgsetloc(0, "* \\cYI\\cW will also \\cYjoin\\cW/%", "obj_ch2_scene6_slash_Step_0_gml_214_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(5)
        gml_Script_c_sprite(1209)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_arg_objectxy(kr_actor, -20, -20)
        gml_Script_c_walkdirect(x, y, 60)
        gml_Script_c_wait(20)
        gml_Script_c_sel(su)
        gml_Script_c_facing("l")
        gml_Script_c_sel(ra)
        gml_Script_c_facing("r")
        gml_Script_c_wait(20)
        gml_Script_c_sel(su)
        gml_Script_c_facing("d")
        gml_Script_c_sel(ra)
        gml_Script_c_facing("d")
        gml_Script_c_wait(20)
        gml_Script_c_sel(sw)
        gml_Script_c_visible(0)
        gml_Script_c_soundplay(152)
        gml_Script_c_wait(20)
        gml_Script_c_soundplay(172)
        gml_Script_c_speaker("no_name")
        gml_Script_c_msgsetloc(0, "* (THE ORIGINAL   \\cYSTARWALKER\\cW became a Key Item.)/%", "obj_ch2_scene6_slash_Step_0_gml_238_0")
        gml_Script_c_talk_wait()
    }
    gml_Script_c_wait(5)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EK* .../%", "obj_ch2_scene6_slash_Step_0_gml_243_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_facing("d")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("d")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* Alright^1, enough already. Let's get going./%", "obj_ch2_scene6_slash_Step_0_gml_250_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sel(su)
    gml_Script_c_walk_wait("l", 8, 5)
    gml_Script_c_sel(kr)
    gml_Script_c_autowalk(0)
    gml_Script_c_walk("l", 6, 5)
    gml_Script_c_sel(su)
    gml_Script_c_walk("d", 8, 95)
    gml_Script_c_wait(15)
    gml_Script_c_sel(kr)
    gml_Script_c_walk("r", 3, 10)
    gml_Script_c_wait(15)
    gml_Script_c_sel(ra)
    gml_Script_c_walk_wait("r", 4, 13)
    gml_Script_c_walk_wait("d", 4, 10)
    gml_Script_c_wait(5)
    gml_Script_c_facing("d")
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\E2* Good luck today^1, Kris. See you soon!/%", "obj_ch2_scene6_slash_Step_0_gml_276_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sel(kr)
    gml_Script_c_autowalk(1)
    gml_Script_c_walk("d", 6, 85)
    gml_Script_c_wait(5)
    gml_Script_c_fadeout(35)
    gml_Script_c_wait(40)
    gml_Script_c_actortokris()
    gml_Script_c_pannable(0)
    gml_Script_c_terminatekillactors()
}
if (customcon == 1 && con == 2)
{
    if (!instance_exists(obj_dialoguer))
    {
        customcon = 0
        gml_Script_c_waitcustom_end()
        con = 3
    }
    ralTimer++
    if (ralTimer == 1)
    {
        with (ra_actor)
            gml_Script_scr_jump_in_place(10, 10)
    }
    if (ralTimer > 11)
        ralTimer = 0
}
if (customcon == 1 && con == 3)
{
    if (la_actor.visible == false)
    {
        con = 4
        lancerGlow = 3
        customcon = 0
        gml_Script_c_waitcustom_end()
    }
    kr_actor.depth = -99999999
    lancerSpin += addAmount
    moveAmount = 1
    if (lancerCard == 0)
    {
        if (lancerSpin >= 12)
        {
            totalSpins++
            lancerSpin = 0
            if (addAmount < 2.5)
                addAmount += 0.5
        }
        if (lancerSpin < 12)
            gml_Script_scr_actor_facing(la_actor, "r")
        if (lancerSpin < 9)
            gml_Script_scr_actor_facing(la_actor, "u")
        if (lancerSpin < 6)
            gml_Script_scr_actor_facing(la_actor, "l")
        if (lancerSpin < 3)
            gml_Script_scr_actor_facing(la_actor, "d")
    }
    if (lancerCard == 1)
        la_card.y += 4
    if (la_card.y > (su_actor.y + 30) && stepAway == 0)
    {
        gml_Script_scr_actor_facing(su_actor, "l")
        gml_Script_scr_actor_facing(ra_actor, "r")
    }
    if (la_card.y > (su_actor.y + 60))
    {
        gml_Script_scr_actor_facing(su_actor, "d")
        gml_Script_scr_actor_facing(ra_actor, "d")
    }
    if (la_card.y >= (kr_actor.y + 10))
    {
        moveAmount = 0
        addAmount = 0
        with (la_card)
            visible = false
        with (la_actor)
            visible = false
    }
    if (totalSpins > 3 && lancerGlow == 0)
    {
        shrinkValue = 1
        morphTime = 0
        growValue = 0
        cardMade = 0
        halfWidth = (la_actor.sprite_width * 0.5)
        origX = la_actor.x
        halfHeight = (la_actor.sprite_height * 0.5)
        origY = la_actor.y
        lancerGlow = 1
    }
    if (totalSpins > 18 && lancerGlow == 1)
    {
        lancerGlow = 2
        morphTime = 0
    }
}
if (customcon == 1 && con == 4)
{
    conTimer++
    if (ro_actor.visible == false)
    {
        con = 5
        customcon = 0
        lancerGlow = 6
        gml_Script_c_waitcustom_end()
    }
    kr_actor.depth = -99999999
    if (rouxlsCard == 1)
        ro_card.y += 6
    if (ro_card.y > (su_actor.y + 30) && stepAway == 0)
    {
        gml_Script_scr_actor_facing(su_actor, "l")
        gml_Script_scr_actor_facing(ra_actor, "r")
    }
    if (ro_card.y > (su_actor.y + 60))
    {
        gml_Script_scr_actor_facing(su_actor, "d")
        gml_Script_scr_actor_facing(ra_actor, "d")
    }
    if (ro_card.y >= (kr_actor.y + 10))
    {
        moveAmount = 0
        addAmount = 0
        with (ro_card)
            visible = false
        with (ro_actor)
            visible = false
    }
    if (conTimer >= 5 && lancerGlow == 3)
    {
        shrinkValue = 1
        morphTime = 0
        growValue = 0
        cardMade = 0
        halfWidth = (ro_actor.sprite_width * 0.5)
        origX = ro_actor.x
        halfHeight = (ro_actor.sprite_height * 0.5)
        origY = ro_actor.y
        lancerGlow = 4
    }
    if (conTimer >= 60 && lancerGlow == 4)
    {
        lancerGlow = 5
        morphTime = 0
    }
}
if (con == 5)
{
    if (!instance_exists(obj_cutscene_master))
    {
        con = 6
        gml_Script_scr_losechar()
        gml_Script_scr_keyitemget(8)
        gml_Script_scr_keyitemget(9)
        gml_Script_scr_litemget(9)
        gml_Script_scr_getchar(2)
        global.interact = 0
        if (global.plot < 16)
            global.plot = 16
        global.facing = 0
        gml_Script_instance_create(0, 0, obj_persistentfadein)
        room_goto(room_dw_castle_area_1)
    }
}
if (con == 20 && (!gml_Script_d_ex()))
{
    con = 0
    global.interact = 0
}
if (con == 50)
{
    global.interact = 1
    con = 51
    obj_mainchara.x = 740
    obj_mainchara.y = 720
}
if (con == 51)
{
    gml_Script_scr_losechar()
    if instance_exists(obj_caterpillarchara)
        instance_destroy(obj_caterpillarchara)
    gml_Script_scr_getchar(2)
    gml_Script_scr_getchar(3)
    gml_Script_scr_makecaterpillar(0, 0, 2, 0)
    gml_Script_scr_makecaterpillar(0, 0, 3, 1)
    global.interact = 1
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    global.facing = 0
    kr_actor.sprite_index = spr_krisu_dark
    kr_actor.x = obj_mainchara.x
    kr_actor.y = obj_mainchara.y
    su_actor.sprite_index = spr_susie_shock
    su_actor.specialsprite[6] = 25
    su_actor.x = (obj_mainchara.x + 80)
    su_actor.y = obj_mainchara.y
    ra_actor.sprite_index = spr_ralsei_walk_up
    ra_actor.x = (obj_mainchara.x - 80)
    ra_actor.y = obj_mainchara.y
    la = 3
    la_actor = gml_Script_instance_create(724, 440, obj_actor)
    gml_Script_scr_actor_setup(la, la_actor, "lancer")
    la_actor.sprite_index = spr_lancer_dt
    hathy = gml_Script_scr_dark_marker(883, 605, 1573)
    with (hathy)
        gml_Script_scr_depth()
    rabbick = gml_Script_scr_dark_marker(835, 570, 1263)
    with (rabbick)
        gml_Script_scr_depth()
    blockler = gml_Script_scr_dark_marker(600, 565, 1193)
    with (blockler)
        gml_Script_scr_depth()
    gml_Script_c_wait(25)
    gml_Script_c_sel(su)
    gml_Script_c_facing("u")
    gml_Script_c_sel(la)
    gml_Script_c_walk_wait("d", 20, 10)
    gml_Script_c_wait(15)
    gml_Script_c_soundplay(186)
    gml_Script_c_spin(2)
    gml_Script_c_wait(8)
    gml_Script_c_spin(0)
    gml_Script_c_wait(8)
    gml_Script_c_mus2("initloop", "lancer.ogg", 0)
    gml_Script_c_speaker("lancer")
    gml_Script_c_msgsetloc(0, "\\E1* Guess who's back^1, Clowns!?/", "obj_ch2_scene6_slash_Step_0_gml_543_0")
    gml_Script_c_facenext("susie", 7)
    gml_Script_c_msgnextloc("\\E7* Lancer!!!/%", "obj_ch2_scene6_slash_Step_0_gml_545_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect_wait(802, 600, 10)
    gml_Script_c_sel(la)
    gml_Script_c_visible(0)
    gml_Script_c_sel(su)
    gml_Script_c_specialsprite(6)
    gml_Script_c_autowalk(0)
    gml_Script_c_animate(0, 0, 0.5)
    gml_Script_c_soundplay(159)
    gml_Script_c_wait(14)
    gml_Script_c_soundplay(216)
    gml_Script_c_wait(8)
    gml_Script_c_soundplay(187)
    gml_Script_c_wait(50)
    gml_Script_c_sel(la)
    gml_Script_c_visible(1)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(24)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("d")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* Hey^1, Kris^1, dunno what you did^1, but hell yeah!/%", "obj_ch2_scene6_slash_Step_0_gml_566_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("r")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E9* Everyone's here!/%", "obj_ch2_scene6_slash_Step_0_gml_570_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("u")
    gml_Script_c_wait(20)
    gml_Script_c_facing("susieunhappy")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* .. but^1, uh^1, what happened to^1, uh^1, Lancer's castle?/%", "obj_ch2_scene6_slash_Step_0_gml_576_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("l")
    gml_Script_c_sel(la)
    gml_Script_c_facing("d")
    gml_Script_c_soundplay(186)
    gml_Script_c_spin(4)
    gml_Script_c_wait(12)
    gml_Script_c_spin(0)
    gml_Script_c_wait(30)
    gml_Script_c_speaker("lancer")
    gml_Script_c_msgsetloc(0, "\\E3* Alllll gone!/", "obj_ch2_scene6_slash_Step_0_gml_587_0")
    gml_Script_c_facenext("susie", 6)
    gml_Script_c_msgnextloc("\\E6* Gone?/%", "obj_ch2_scene6_slash_Step_0_gml_589_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(2)
    gml_Script_c_walk("u", 5, 23)
    gml_Script_c_delayfacing(24, "r")
    gml_Script_c_wait(15)
    gml_Script_c_sel(la)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EA* Right..^1. When Kris sealed the fountain^1,/", "obj_ch2_scene6_slash_Step_0_gml_598_0")
    gml_Script_c_msgnextloc("\\EA* That \"Dark World\" disappeared.../", "obj_ch2_scene6_slash_Step_0_gml_599_0")
    gml_Script_c_msgnextloc("\\EI* ..^1. And turned back into a normal classroom./", "obj_ch2_scene6_slash_Step_0_gml_600_0")
    gml_Script_c_facenext("susie", 0)
    gml_Script_c_msgnextloc("\\E0* ..^1. So where's Lancer gonna live now?/", "obj_ch2_scene6_slash_Step_0_gml_602_0")
    gml_Script_c_facenext("lancer", 2)
    gml_Script_c_msgnextloc("\\E2* Don't worry^1, Susie!!/", "obj_ch2_scene6_slash_Step_0_gml_604_0")
    gml_Script_c_msgnextloc("\\E1* We'll conquer Ralsei's castle as our own!!/%", "obj_ch2_scene6_slash_Step_0_gml_605_0")
    gml_Script_c_talk_wait()
    gml_Script_c_soundplay(187)
    gml_Script_c_soundplay(65)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sprite(1001)
    gml_Script_c_sel(la)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sprite(1303)
    gml_Script_c_wait(30)
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect_wait(694, 708, 27)
    gml_Script_c_specialsprite(1)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\E3* (Kris^1, as you bring Dark World Denizens back here...)/", "obj_ch2_scene6_slash_Step_0_gml_622_0")
    gml_Script_c_msgnextloc("\\EI* (The power of our Fountain...)/", "obj_ch2_scene6_slash_Step_0_gml_623_0")
    gml_Script_c_msgnextloc("\\E2* (Will transform this town more and more.)/", "obj_ch2_scene6_slash_Step_0_gml_624_0")
    gml_Script_c_msgnextloc("\\E3* (From now on^1, the enemies we SPARE...)/", "obj_ch2_scene6_slash_Step_0_gml_625_0")
    gml_Script_c_msgnextloc("\\E0* (Will be RECRUITED to our town.)/", "obj_ch2_scene6_slash_Step_0_gml_626_0")
    gml_Script_c_msgnextloc("\\E2* (So let's keep SPARING enemies^1, okay?)/%", "obj_ch2_scene6_slash_Step_0_gml_627_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("u")
    gml_Script_c_sel(la)
    gml_Script_c_facing("d")
    gml_Script_c_sel(su)
    gml_Script_c_facing("d")
    gml_Script_c_facing("susie")
    gml_Script_c_autowalk(1)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\E3* Anyhow^1, why don't we all have a look around?/", "obj_ch2_scene6_slash_Step_0_gml_637_0")
    gml_Script_c_msgnextloc("\\E2* We can head NORTH towards the CASTLE./", "obj_ch2_scene6_slash_Step_0_gml_638_0")
    gml_Script_c_msgnextloc("\\E2* I have a special surprise to show you there!/%", "obj_ch2_scene6_slash_Step_0_gml_639_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("lancer")
    gml_Script_c_msgsetloc(0, "\\E3* Ahaha!^1! Not if I surprise myself first!!/", "obj_ch2_scene6_slash_Step_0_gml_644_0")
    gml_Script_c_msgnextloc("\\E2* Last one there is a fresh and fragrant egg!!/%", "obj_ch2_scene6_slash_Step_0_gml_645_0")
    gml_Script_c_talk_wait()
    gml_Script_c_mus2("volume", 0, 30)
    gml_Script_c_sel(la)
    gml_Script_c_walk("u", 20, 900)
    gml_Script_c_wait(10)
    gml_Script_c_sel(su)
    gml_Script_c_wait(10)
    gml_Script_c_sel(1)
    gml_Script_c_walkdirect(780, 702, 16)
    gml_Script_c_delayfacing(17, "l")
    gml_Script_c_wait(20)
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_sel(kr)
    gml_Script_c_mus("free")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* C'mon^1, Kris! You gonna let him beat us!?/%", "obj_ch2_scene6_slash_Step_0_gml_662_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("d")
    gml_Script_c_var_lerp_instance(hathy, "x", hathy.x, 1150, 30)
    gml_Script_c_var_lerp_instance(rabbick, "x", rabbick.x, 1150, 30)
    gml_Script_c_var_lerp_instance(blockler, "x", blockler.x, 350, 30)
    gml_Script_c_mus2("initloop", "castletown.ogg", 0)
    gml_Script_c_wait(31)
    gml_Script_c_actortocaterpillar()
    gml_Script_c_actortokris()
    gml_Script_c_terminatekillactors()
    global.interact = 1
    con = 52
}
if (con == 52 && (!gml_Script_i_ex(895)))
{
    with (hathy)
        instance_destroy()
    with (rabbick)
        instance_destroy()
    with (blockler)
        instance_destroy()
    var lancer_npc = gml_Script_instance_create(675, 355, obj_npc_room)
    lancer_npc.sprite_index = spr_lancer_rt
    with (lancer_npc)
        gml_Script_scr_depth()
    global.interact = 0
    if (global.plot < 12)
        global.plot = 12
    global.facing = 0
    con = 0
    gml_Script_scr_tempsave()
}
