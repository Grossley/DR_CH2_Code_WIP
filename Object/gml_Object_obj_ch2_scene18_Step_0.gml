var _temp_local_var_1;
if (con == 0)
{
    global.interact = 1
    con = 1
}
if (con == 1)
{
    con = 1.5
    cutscene_master = gml_Script_scr_cutscene_make()
    save_object[0] = cutscene_master
    var _temp_local_var_1 = id
    visible = false
}
if (con == 1.5)
{
    con = 2
    gml_Script_c_sel(be)
    gml_Script_c_visible(0)
    gml_Script_c_pannable(1)
    gml_Script_c_panspeed(2, 0, 35)
    gml_Script_c_sel(kr)
    gml_Script_c_walk_wait("d", 1, 60)
    gml_Script_c_delayfacing(31, "r")
    gml_Script_c_msgside("top")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E7* Kris^1, hey!!!/", "obj_ch2_scene18_slash_Step_0_gml_57_0")
    gml_Script_c_msgnextloc("\\E9* Man..^1. Lancer...^1! You're the best^1, dude!!/%", "obj_ch2_scene18_slash_Step_0_gml_58_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(la)
    gml_Script_c_visible(0)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(178)
    gml_Script_c_addxy(-4, 2)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_soundplay(159)
    gml_Script_c_wait(16)
    gml_Script_c_soundplay(216)
    gml_Script_c_wait(32)
    gml_Script_c_sel(la)
    gml_Script_c_visible(1)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* C'mon^1, Noelle and Ralsei are waiting!!/%", "obj_ch2_scene18_slash_Step_0_gml_83_0")
    gml_Script_c_talk_wait()
    gml_Script_c_walk_wait("r", 8, 15)
    gml_Script_c_speaker("lancer")
    gml_Script_c_msgsetloc(0, "\\E2* Yes...^1! Let's put the pedal on the medal!!/%", "obj_ch2_scene18_slash_Step_0_gml_89_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(la)
    gml_Script_c_sprite(1295)
    gml_Script_c_shakeobj()
    gml_Script_c_speaker("lancer")
    gml_Script_c_msgsetloc(0, "\\EC* Cough..^1. cough*/%", "obj_ch2_scene18_slash_Step_0_gml_97_0")
    gml_Script_c_talk_wait()
    gml_Script_c_waitcustom()
}
if (con == 2 && customcon == 1)
{
    fadetimer++
    if (fadetimer < 60)
    {
        lancerfade += 0.1
        la_actor.current_pal = ((sin(((((2 * lancerfade) + 3) * pi) / 2)) + 1) / 2)
    }
    else if (la_actor.current_pal != 1)
        la_actor.current_pal = clamp((la_actor.current_pal + 0.1), 0, 1)
    else
        con = 4
}
if (con == 4)
{
    con = 5
    customcon = 0
    gml_Script_c_waitcustom_end()
}
if (con == 5 && customcon == 0)
{
    con = 6
    gml_Script_c_sel(su)
    gml_Script_c_facing("l")
    gml_Script_c_facing("susieunhappy")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E6* ...?/", "obj_ch2_scene18_slash_Step_0_gml_140_0")
    gml_Script_c_msgnextloc("\\EK* Hey^1, Lancer^1, you ok^1, dude?/", "obj_ch2_scene18_slash_Step_0_gml_141_0")
    gml_Script_c_facenext("lancer", "3")
    gml_Script_c_msgnextloc("\\E3* I..^1. I'm fine^1! Just..^1. very.../", "obj_ch2_scene18_slash_Step_0_gml_143_0")
    gml_Script_c_msgnextloc("\\E7* Cold.../%", "obj_ch2_scene18_slash_Step_0_gml_144_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(la)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(179)
    gml_Script_c_imagespeed(0)
    gml_Script_c_arg_objectxy(la_actor, -5, 34)
    gml_Script_c_setxy(x, y)
    gml_Script_c_shakeobj()
    gml_Script_c_soundplay(64)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(995)
    gml_Script_c_emote("!", 30)
    gml_Script_c_wait(30)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EZ* H..^1. hey^1, what the hell!?/", "obj_ch2_scene18_slash_Step_0_gml_166_0")
    gml_Script_c_facenext("lancer", 11)
    gml_Script_c_msgnextloc("\\EB* .../", "obj_ch2_scene18_slash_Step_0_gml_168_0")
    gml_Script_c_facenext("susie", "Z")
    gml_Script_c_msgnextloc("\\EZ* Hey^1, are you OK^1, dude...? Here^1, lemme heal you...!/%", "obj_ch2_scene18_slash_Step_0_gml_170_0")
    gml_Script_c_talk_wait()
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("susieunhappy")
    gml_Script_c_facing("l")
    gml_Script_c_wait(10)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(181)
    gml_Script_c_addxy(0, 12)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_wait(50)
    gml_Script_c_var_instance(id, "susie_heal", 1)
    gml_Script_c_imagespeed(0)
    gml_Script_c_wait(15)
    gml_Script_c_waitcustom()
}
if (con == 6 && customcon == 1)
{
    healanim = gml_Script_instance_create(la_actor.x, la_actor.y, obj_healanim)
    healanim.target = la_actor.id
    con = 7
    customcon = 0
    gml_Script_c_waitcustom_end()
}
if (con == 7)
{
    con = 8
    gml_Script_c_wait(30)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(1)
    gml_Script_c_addxy(0, -12)
    gml_Script_c_walk_wait("l", 8, 14)
    gml_Script_c_speaker("lancer")
    gml_Script_c_msgsetloc(0, "\\E7* ..^1. th-thanks^1, Susie..^1. but.../%", "obj_ch2_scene18_slash_Step_0_gml_213_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("d")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EC* D..^1. darn^1, it's not strong enough^1, huh.../%", "obj_ch2_scene18_slash_Step_0_gml_219_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("l")
    gml_Script_c_facing("susieunhappy")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EN* Quick^1, Kris^1, let's find Ralsei^1! Maybe he can heal him!/%", "obj_ch2_scene18_slash_Step_0_gml_226_0")
    gml_Script_c_talk_wait()
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(174)
    gml_Script_c_arg_objectxy(su_actor, -5, -10)
    gml_Script_c_setxy(x, y)
    gml_Script_c_sel(la)
    gml_Script_c_visible(0)
    gml_Script_c_pannable(1)
    gml_Script_c_sel(su)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walk("r", 8, 70)
    gml_Script_c_sel(kr)
    gml_Script_c_walk("r", 8, 80)
    gml_Script_c_delayfacing(81, "l")
    gml_Script_c_panspeed(8, 0, 80)
    gml_Script_c_wait(80)
    gml_Script_c_sel(su)
    gml_Script_c_sprite(176)
    gml_Script_c_imagespeed(0)
    gml_Script_c_waitcustom()
}
if (con == 8 && customcon == 1)
{
    con = 9
    customcon = 0
    gml_Script_c_var_instance(id, "berdly_door_open", 1)
    gml_Script_c_soundplay(63)
    gml_Script_c_sel(be)
    gml_Script_c_visible(1)
    gml_Script_c_waitcustom_end()
}
if (con == 9)
{
    con = 50
    gml_Script_c_sel(be)
    gml_Script_c_walk_wait("d", 8, 10)
    gml_Script_c_facing("r")
    gml_Script_c_var_instance(id, "berdly_door_close", 1)
    gml_Script_c_soundplay(62)
    gml_Script_c_sel(be)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E3* Wait!!^1! WAIT!!!/", "obj_ch2_scene18_slash_Step_0_gml_289_0")
    gml_Script_c_msgnextloc("\\E5* Y-you two aren't going to leave without ME^1, are you!?/", "obj_ch2_scene18_slash_Step_0_gml_290_0")
    gml_Script_c_facenext("susie", 1)
    gml_Script_c_msgnextloc("\\E1* Uhhh..^1. yeah we are./", "obj_ch2_scene18_slash_Step_0_gml_292_0")
    gml_Script_c_facenext("berdly", 3)
    gml_Script_c_msgnextloc("\\E3* But Noelle - my damsel in distress - she must be.../%", "obj_ch2_scene18_slash_Step_0_gml_294_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sprite(681)
    gml_Script_c_msgsetloc(0, "\\EH* ..^1. in distress^1! And if I cannot help her^1, then...!/", "obj_ch2_scene18_slash_Step_0_gml_295_0")
    gml_Script_c_facenext("susie", 17)
    gml_Script_c_msgnextloc("\\EH* Okay FINE you can come if you shut up./%", "obj_ch2_scene18_slash_Step_0_gml_297_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_sprite(174)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walk("r", 8, 70)
    gml_Script_c_sel(be)
    gml_Script_c_walk("r", 8, 70)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("r")
    gml_Script_c_panobj(kr_actor, 30)
    gml_Script_c_wait(70)
    gml_Script_c_pannable(0)
    gml_Script_c_actortokris()
    gml_Script_c_terminatekillactors()
}
if (con == 50)
{
    if (!instance_exists(obj_cutscene_master))
    {
        global.interact = 0
        global.facing = 0
        global.plot = 101
        instance_destroy(berdlydoor)
        con = -1
    }
}
if susie_heal
{
    heal_timer++
    if (heal_beam == self)
    {
        gml_Script_snd_play(181)
        heal_beam = gml_Script_scr_dark_marker((su_actor.x - 20), (su_actor.y + 30), 180)
        heal_beam.image_speed = 0.25
        heal_beam.image_xscale = -2
    }
    heal_beam.x -= 8
    heal_beam.y += 1
    if (heal_beam.x <= (la_actor.x + 80))
    {
        heal_beam.image_alpha -= 0.25
        if (heal_beam.image_alpha <= 0)
        {
            susie_heal = 0
            instance_destroy(heal_beam)
        }
    }
}
if berdly_door_open
{
    berdly_door_open = 0
    with (obj_mansion_door)
    {
        if (x > 770 && x < 800 && y > 150)
            door_type = 1
    }
}
if berdly_door_close
{
    berdly_door_close = 0
    with (obj_mansion_door)
    {
        if (x > 770 && x < 800 && y > 150)
            door_type = 0
    }
}
