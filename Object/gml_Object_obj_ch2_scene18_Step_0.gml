if (con == 0)
{
    global.interact = 1
    con = 1
}
if (con == 1)
{
    con = 1.5
    cutscene_master = gml_Script_scr_cutscene_make()
    cutscene_master.save_object[0] = id
    with (obj_mainchara)
        visible = false
    with (obj_caterpillarchara)
        visible = false
    kr = 0
    kr_actor = gml_Script_instance_create(243, 225, obj_actor)
    gml_Script_scr_actor_setup(kr, kr_actor, "kris")
    kr_actor.sprite_index = spr_krisd_dark
    su = 2
    su_actor = gml_Script_instance_create(440, 266, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_susie_walk_left_dw
    la = 3
    la_actor = gml_Script_instance_create(350, 288, obj_actor)
    gml_Script_scr_actor_setup(la, la_actor, "lancer")
    la_actor.sprite_index = spr_lancer_rt
    la_actor.sprite_palette = 1307
    be = 4
    be_actor = gml_Script_instance_create(804, 200, obj_actor)
    gml_Script_scr_actor_setup(be, be_actor, "berdly")
    be_actor.sprite_index = spr_berdly_walk_down_dw_unhappy
    be_actor.rsprite = spr_berdly_walk_right_dw_unhappy
    be_actor.lsprite = spr_berdly_walk_left_dw_unhappy
    be_actor.dsprite = spr_berdly_walk_down_dw_unhappy
}
if (con == 1.5)
{
    con = 2
    gml_Script_c_sel(be)
    gml_Script_c_visible(0)
    gml_Script_c_pannable(true)
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
    gml_Script_c_autowalk(false)
    gml_Script_c_sprite(spr_cutscene_18_susie_lancer_high_five)
    gml_Script_c_addxy(-4, 2)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_soundplay(snd_jump)
    gml_Script_c_wait(16)
    gml_Script_c_soundplay(snd_whip_crack_only)
    gml_Script_c_wait(32)
    gml_Script_c_sel(la)
    gml_Script_c_visible(1)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(true)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* C'mon^1, Noelle and Ralsei are waiting!!/%", "obj_ch2_scene18_slash_Step_0_gml_83_0")
    gml_Script_c_talk_wait()
    gml_Script_c_walk_wait("r", 8, 15)
    gml_Script_c_speaker("lancer")
    gml_Script_c_msgsetloc(0, "\\E2* Yes...^1! Let's put the pedal on the medal!!/%", "obj_ch2_scene18_slash_Step_0_gml_89_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(la)
    gml_Script_c_sprite(spr_lancer_rt_unhappy)
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
    gml_Script_c_autowalk(false)
    gml_Script_c_sprite(spr_cutscene_18_lancer_fall)
    gml_Script_c_imagespeed(0)
    gml_Script_c_arg_objectxy(la_actor, -5, 34)
    gml_Script_c_setxy(x, y)
    gml_Script_c_shakeobj()
    gml_Script_c_soundplay(snd_noise)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(false)
    gml_Script_c_sprite(spr_susie_shock)
    gml_Script_c_emote("!", 30)
    gml_Script_c_wait(30)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EZ* H..^1. hey^1, what the hell!?/", "obj_ch2_scene18_slash_Step_0_gml_166_0")
    gml_Script_c_facenext("lancer", 11)
    gml_Script_c_msgnextloc("\\EB* .../", "obj_ch2_scene18_slash_Step_0_gml_168_0")
    gml_Script_c_facenext("susie", "Z")
    gml_Script_c_msgnextloc("\\EZ* Hey^1, are you OK^1, dude...? Here^1, lemme heal you...!/%", "obj_ch2_scene18_slash_Step_0_gml_170_0")
    gml_Script_c_talk_wait()
    gml_Script_c_autowalk(true)
    gml_Script_c_facing("susieunhappy")
    gml_Script_c_facing("l")
    gml_Script_c_wait(10)
    gml_Script_c_autowalk(false)
    gml_Script_c_sprite(spr_cutscene_18_susie_heal)
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
    gml_Script_c_autowalk(true)
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
    gml_Script_c_autowalk(false)
    gml_Script_c_sprite(spr_cutscene_18_susie_lancer_carry_walk_right)
    gml_Script_c_arg_objectxy(su_actor, -5, -10)
    gml_Script_c_setxy(x, y)
    gml_Script_c_sel(la)
    gml_Script_c_visible(0)
    gml_Script_c_pannable(true)
    gml_Script_c_sel(su)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walk("r", 8, 70)
    gml_Script_c_sel(kr)
    gml_Script_c_walk("r", 8, 80)
    gml_Script_c_delayfacing(81, "l")
    gml_Script_c_panspeed(8, 0, 80)
    gml_Script_c_wait(80)
    gml_Script_c_sel(su)
    gml_Script_c_sprite(spr_cutscene_18_susie_lancer_carry_walk_left)
    gml_Script_c_imagespeed(0)
    gml_Script_c_waitcustom()
}
if (con == 8 && customcon == 1)
{
    con = 9
    customcon = 0
    gml_Script_c_var_instance(id, "berdly_door_open", 1)
    gml_Script_c_soundplay(snd_dooropen)
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
    gml_Script_c_soundplay(snd_doorclose)
    gml_Script_c_sel(be)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E3* Wait!!^1! WAIT!!!/", "obj_ch2_scene18_slash_Step_0_gml_289_0")
    gml_Script_c_msgnextloc("\\E5* Y-you two aren't going to leave without ME^1, are you!?/", "obj_ch2_scene18_slash_Step_0_gml_290_0")
    gml_Script_c_facenext("susie", 1)
    gml_Script_c_msgnextloc("\\E1* Uhhh..^1. yeah we are./", "obj_ch2_scene18_slash_Step_0_gml_292_0")
    gml_Script_c_facenext("berdly", 3)
    gml_Script_c_msgnextloc("\\E3* But Noelle - my damsel in distress - she must be.../%", "obj_ch2_scene18_slash_Step_0_gml_294_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sprite(spr_berdly_depressed_dw_right)
    gml_Script_c_msgsetloc(0, "\\EH* ..^1. in distress^1! And if I cannot help her^1, then...!/", "obj_ch2_scene18_slash_Step_0_gml_295_0")
    gml_Script_c_facenext("susie", 17)
    gml_Script_c_msgnextloc("\\EH* Okay FINE you can come if you shut up./%", "obj_ch2_scene18_slash_Step_0_gml_297_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_sprite(spr_cutscene_18_susie_lancer_carry_walk_right)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walk("r", 8, 70)
    gml_Script_c_sel(be)
    gml_Script_c_walk("r", 8, 70)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("r")
    gml_Script_c_panobj(kr_actor, 30)
    gml_Script_c_wait(70)
    gml_Script_c_pannable(false)
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
        gml_Script_snd_play(snd_spell_cure_slight_smaller)
        heal_beam = gml_Script_scr_dark_marker((su_actor.x - 20), (su_actor.y + 30), spr_cutscene_18_susie_heal_small)
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
