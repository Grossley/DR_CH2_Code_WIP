if (con == -1)
{
    con = 1
    global.interact = 1
    global.facing = 1
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    gml_Script_c_sel(kr)
    gml_Script_c_visible(0)
    su = (actor_count + 1)
    su_actor = gml_Script_instance_create(1670, 130, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_susie_walk_down_dw
    gml_Script_c_sel(su)
    gml_Script_c_visible(0)
    ra = (actor_count + 2)
    ra_actor = gml_Script_instance_create(1670, 130, obj_actor)
    gml_Script_scr_actor_setup(ra, ra_actor, "ralsei")
    ra_actor.sprite_index = spr_ralsei_walk_down
    gml_Script_c_sel(ra)
    gml_Script_c_visible(0)
    qu = (actor_count + 3)
    qu_actor = gml_Script_instance_create(510, ((gml_Script_cameray() + view_hport[0]) + 80), obj_actor)
    gml_Script_scr_actor_setup(qu, qu_actor, "queen")
    qu_actor.sprite_index = spr_queen_walk_left
    no = (actor_count + 4)
    no_actor = gml_Script_instance_create(400, 210, obj_actor)
    gml_Script_scr_actor_setup(no, no_actor, "noelle")
    no_actor.sprite_index = spr_cutscene_23b_noelle_kneel_forward
    be = (actor_count + 5)
    be_actor = gml_Script_instance_create(-60, 240, obj_actor)
    gml_Script_scr_actor_setup(be, be_actor, "berdly")
    be_actor.sprite_index = spr_berdly_walk_right_dw
    queenfistleft = gml_Script_scr_dark_marker(78, ((gml_Script_cameray() + view_hport[0]) + 100), 324)
    queenfistleft.depth = 1000100
    queenfistleft.image_speed = 0.15
    cutscene_master.save_object[0] = id
}
if (con == 1)
{
    con = 10
    alarm[0] = 30
    var bigqueen = instance_find(obj_ch2_scene26_gigaqueen, 0)
    gml_Script_c_mus("free_all")
    gml_Script_c_var_instance(bigqueen, "head_y_pos", 464)
    gml_Script_c_var_instance(bigqueen, "rem_head_y_pos", 464)
    gml_Script_c_var_lerp_instance(blackall, "image_alpha", 1, 0, 60)
    gml_Script_c_wait(120)
    gml_Script_c_msgside("bottom")
    gml_Script_c_speaker("queen_2")
    gml_Script_c_fefc(0, 0)
    gml_Script_c_msgsetloc(0, "\\E1* Noelle/%", "obj_ch2_scene27_slash_Step_0_gml_70_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(bigqueen, "climb", 1)
    gml_Script_c_wait(41)
    gml_Script_c_msgsetloc(0, "\\E1* Darling/%", "obj_ch2_scene27_slash_Step_0_gml_71_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(bigqueen, "climb", 1)
    gml_Script_c_wait(41)
    gml_Script_c_msgsetloc(0, "\\E1* Honey/%", "obj_ch2_scene27_slash_Step_0_gml_72_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(bigqueen, "climb", 1)
    gml_Script_c_wait(41)
    gml_Script_c_msgsetloc(0, "\\E1* Sweetie/%", "obj_ch2_scene27_slash_Step_0_gml_73_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(bigqueen, "climb", 1)
    gml_Script_c_wait(41)
    gml_Script_c_msgsetloc(0, "\\E1* Gravy/%", "obj_ch2_scene27_slash_Step_0_gml_74_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(id, "hand_release", 1)
    gml_Script_c_wait(90)
    gml_Script_c_mus2("initloop", "wind_highplace.ogg", 0)
    gml_Script_c_wait(90)
    gml_Script_c_speaker("queen_2")
    gml_Script_c_fefc(0, 0)
    gml_Script_c_var_instance(id, "set_queen_voice", 1)
    gml_Script_c_msgsetloc(0, "\\E6* Take..^1. The Pin..^1. I Gave You/", "obj_ch2_scene27_slash_Step_0_gml_82_0")
    gml_Script_c_msgnextloc("\\E6* And..^1. Stab The Earth/", "obj_ch2_scene27_slash_Step_0_gml_83_0")
    gml_Script_c_msgnextloc("\\E7* Creating..^1. Our New..^1. Supreme Empire/", "obj_ch2_scene27_slash_Step_0_gml_84_0")
    gml_Script_c_facenext("noelle", 12)
    gml_Script_c_msgnextloc("\\EC* I..^1. I.../", "obj_ch2_scene27_slash_Step_0_gml_86_0")
    gml_Script_c_facenext("queen2", "B")
    gml_Script_c_msgnextloc("\\EB* What's..^1. Wrong..^1. Noelle?/", "obj_ch2_scene27_slash_Step_0_gml_88_0")
    gml_Script_c_msgnextloc("\\EB* I Know It Would..^1. Make You..^1. Happy/", "obj_ch2_scene27_slash_Step_0_gml_89_0")
    gml_Script_c_msgnextloc("\\EB* Or..^1. Should I^1, With The Last 1`% Of My Battery.../%", "obj_ch2_scene27_slash_Step_0_gml_90_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(212)
    gml_Script_c_imageindex(0)
    gml_Script_c_imagespeed(0)
    gml_Script_c_var_instance(id, "shake_hand", 1)
    gml_Script_c_wait(15)
    gml_Script_c_var_instance(id, "shake_hand", 1)
    gml_Script_c_wait(15)
    gml_Script_c_var_instance(id, "shake_hand", 1)
    gml_Script_c_wait(50)
    gml_Script_c_speaker("queen_2")
    gml_Script_c_fefc(0, 0)
    gml_Script_c_msgsetloc(0, "\\E7* Crush Susie Into 8..^1. Bits?/%", "obj_ch2_scene27_slash_Step_0_gml_103_0")
    gml_Script_c_talk_wait()
    gml_Script_c_halt()
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\EW* Leave.../%", "obj_ch2_scene27_slash_Step_0_gml_112_0")
    gml_Script_c_talk_wait()
    gml_Script_c_mus("free")
    gml_Script_c_sel(no)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("u")
    gml_Script_c_soundplay(190)
    gml_Script_c_wait(30)
    gml_Script_c_sprite(735)
    gml_Script_c_soundplay(51)
    gml_Script_c_shakeobj()
    gml_Script_c_wait(40)
    gml_Script_c_var_instance(bigqueen, "head_sprite", 349)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\Ef* Leave Susie ALONE!!/", "obj_ch2_scene27_slash_Step_0_gml_125_0")
    gml_Script_c_msgnextloc("\\Ef* You think listening to YOU makes me happy!?/", "obj_ch2_scene27_slash_Step_0_gml_126_0")
    gml_Script_c_msgnextloc("\\Ef* No!/", "obj_ch2_scene27_slash_Step_0_gml_127_0")
    gml_Script_c_msgnextloc("\\Ef* I'll never be happy^1! Not if I'm controlled by you!/", "obj_ch2_scene27_slash_Step_0_gml_128_0")
    gml_Script_c_msgnextloc("\\Ef* Why can't you understand that!?/", "obj_ch2_scene27_slash_Step_0_gml_129_0")
    gml_Script_c_facenext("queen2", "5")
    gml_Script_c_msgnextloc("\\E5* .../", "obj_ch2_scene27_slash_Step_0_gml_131_0")
    gml_Script_c_msgnextloc("\\E5* .../", "obj_ch2_scene27_slash_Step_0_gml_132_0")
    gml_Script_c_msgnextloc("\\E5* ..^1. Noelle.../", "obj_ch2_scene27_slash_Step_0_gml_133_0")
    gml_Script_c_msgnextloc("\\E5* Perhaps My Computations Were/", "obj_ch2_scene27_slash_Step_0_gml_134_0")
    gml_Script_c_msgnextloc("\\E5* Miscalibrated/", "obj_ch2_scene27_slash_Step_0_gml_135_0")
    gml_Script_c_facenext("noelle", 12)
    gml_Script_c_msgnextloc("\\EC* .../", "obj_ch2_scene27_slash_Step_0_gml_137_0")
    gml_Script_c_facenext("queen2", "5")
    gml_Script_c_msgnextloc("\\E5* Noelle/", "obj_ch2_scene27_slash_Step_0_gml_139_0")
    gml_Script_c_msgnextloc("\\E5* Disregard..^1. Me..^1. And.../", "obj_ch2_scene27_slash_Step_0_gml_140_0")
    gml_Script_c_msgnextloc("\\E5* With Your Own Power/", "obj_ch2_scene27_slash_Step_0_gml_141_0")
    gml_Script_c_msgnextloc("\\E1* Choose The World..^1. That Makes You Happy/%", "obj_ch2_scene27_slash_Step_0_gml_142_0")
    gml_Script_c_talk()
    gml_Script_c_wait_box(6)
    gml_Script_c_var_instance(id, "queen_sad", 1)
    gml_Script_c_wait_box(14)
    gml_Script_c_var_instance(id, "queen_happy", 1)
    gml_Script_c_wait_talk()
    gml_Script_c_shake()
    gml_Script_c_mus("free_all")
    gml_Script_c_soundplay_x(235, 1, 0.5)
    gml_Script_c_var_instance(bigqueen, "damagedfx", 0)
    gml_Script_c_var_instance(id, "static_queen", 1)
    gml_Script_c_var_instance(id, "su_shocked", 1)
    gml_Script_c_var_instance(id, "ra_look", 1)
    gml_Script_c_wait(90)
    gml_Script_c_var_instance(id, "su_look_right", 1)
    gml_Script_c_sel(no)
    gml_Script_c_facing("u")
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E2* ..^1. Queen?/", "obj_ch2_scene27_slash_Step_0_gml_161_0")
    gml_Script_c_msgnextloc("\\EC* Q-Queen!/", "obj_ch2_scene27_slash_Step_0_gml_162_0")
    gml_Script_c_msgnextloc("\\ED* Queen^1, are you okay...?/", "obj_ch2_scene27_slash_Step_0_gml_163_0")
    gml_Script_c_facenext("ralsei", "I")
    gml_Script_c_msgnextloc("\\EI* Seems she ran out of battery power./", "obj_ch2_scene27_slash_Step_0_gml_165_0")
    gml_Script_c_msgnextloc("\\E2* Guess we can seal the fountain now^1, right everybody?/%", "obj_ch2_scene27_slash_Step_0_gml_166_0")
    gml_Script_c_talk()
    gml_Script_c_wait_box(1)
    gml_Script_c_sprite(744)
    gml_Script_c_wait_box(2)
    gml_Script_c_facing("u")
    gml_Script_c_wait_box(3)
    gml_Script_c_var_instance(id, "ra_smile", 1)
    gml_Script_c_waittalk()
    gml_Script_c_wait(90)
    gml_Script_c_var_instance(id, "ra_look", 1)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EK* Everybody?/%", "obj_ch2_scene27_slash_Step_0_gml_173_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(60)
    gml_Script_c_mus2("initloop", "noelle_normal.ogg", 0)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\Ee* Queen..^1. she said.../", "obj_ch2_scene27_slash_Step_0_gml_180_0")
    gml_Script_c_msgnextloc("\\Ee* \"Choose the world that makes you happy...\"/", "obj_ch2_scene27_slash_Step_0_gml_181_0")
    gml_Script_c_msgnextloc("\\Ee* I..^1. don't want to live in a world ruled by her./", "obj_ch2_scene27_slash_Step_0_gml_182_0")
    gml_Script_c_msgnextloc("\\Ed* ..^1. but^1, if that wasn't the case.../", "obj_ch2_scene27_slash_Step_0_gml_183_0")
    gml_Script_c_msgnextloc("\\Eb* I wonder if this world..^1. wouldn't be so bad?/", "obj_ch2_scene27_slash_Step_0_gml_184_0")
    gml_Script_c_facenext("ralsei", 21)
    gml_Script_c_msgnextloc("\\EL* Huh?/", "obj_ch2_scene27_slash_Step_0_gml_186_0")
    gml_Script_c_facenext("noelle", "b")
    gml_Script_c_msgnextloc("\\Eb* ..^1. Susie^1, don't you think so too...?/", "obj_ch2_scene27_slash_Step_0_gml_188_0")
    gml_Script_c_facenext("susie", 6)
    gml_Script_c_msgnextloc("\\E6* I..^1. uh^1,/", "obj_ch2_scene27_slash_Step_0_gml_190_0")
    gml_Script_c_msgnextloc("\\ED* Now that you mention it.../", "obj_ch2_scene27_slash_Step_0_gml_191_0")
    gml_Script_c_msgnextloc("\\E2* Kris^1, isn't this world just..^1. BETTER?/", "obj_ch2_scene27_slash_Step_0_gml_192_0")
    gml_Script_c_msgnextloc("\\EA* We make so many..^1. friends here. Y'know?/", "obj_ch2_scene27_slash_Step_0_gml_193_0")
    gml_Script_c_facenext("noelle", "2")
    gml_Script_c_msgnextloc("\\E2* I've never..^1. had an adventure like this before./", "obj_ch2_scene27_slash_Step_0_gml_195_0")
    gml_Script_c_facenext("susie", "2")
    gml_Script_c_msgnextloc("\\E2* With axes..^1. and battles..^1. and magic./", "obj_ch2_scene27_slash_Step_0_gml_197_0")
    gml_Script_c_facenext("noelle", "9")
    gml_Script_c_msgnextloc("\\E9* Where everything can be healed with a little spell./", "obj_ch2_scene27_slash_Step_0_gml_199_0")
    gml_Script_c_facenext("susie", "Q")
    gml_Script_c_msgnextloc("\\EQ* And no matter what happens.../", "obj_ch2_scene27_slash_Step_0_gml_201_0")
    gml_Script_c_msgnextloc("\\EY* No one tells us what to do!/", "obj_ch2_scene27_slash_Step_0_gml_202_0")
    gml_Script_c_facenext("noelle", 8)
    gml_Script_c_msgnextloc("\\E8* Gosh^1, yeah!/", "obj_ch2_scene27_slash_Step_0_gml_204_0")
    gml_Script_c_msgnextloc("\\E9* S-so^1, even if things were really scary just now.../", "obj_ch2_scene27_slash_Step_0_gml_205_0")
    gml_Script_c_msgnextloc("\\Ed* ..^1. I mean.../%", "obj_ch2_scene27_slash_Step_0_gml_206_0")
    gml_Script_c_talk()
    gml_Script_c_wait_box(0)
    gml_Script_c_sel(no)
    gml_Script_c_sprite(743)
    gml_Script_c_wait_box(2)
    gml_Script_c_sprite(745)
    gml_Script_c_wait_box(3)
    gml_Script_c_sprite(743)
    gml_Script_c_wait_box(4)
    gml_Script_c_sprite(744)
    gml_Script_c_wait_box(6)
    gml_Script_c_var_instance(id, "ra_huh", 1)
    gml_Script_c_wait_box(8)
    gml_Script_c_sprite(743)
    gml_Script_c_wait_box(10)
    gml_Script_c_var_instance(id, "su_look_left", 1)
    gml_Script_c_wait_box(12)
    gml_Script_c_var_instance(id, "su_grin_1", 1)
    gml_Script_c_wait_box(15)
    gml_Script_c_sprite(744)
    gml_Script_c_halt()
    gml_Script_c_wait_box(19)
    gml_Script_c_sprite(743)
    gml_Script_c_wait_box(21)
    gml_Script_c_var_instance(id, "su_grin_2", 1)
    gml_Script_c_wait_box(22)
    gml_Script_c_var_instance(id, "su_grin_1", 1)
    gml_Script_c_wait_box(24)
    gml_Script_c_sprite(744)
    gml_Script_c_halt()
    gml_Script_c_wait_box(25)
    gml_Script_c_var_instance(id, "su_look_right", 1)
    gml_Script_c_sprite(727)
    gml_Script_c_halt()
    gml_Script_c_wait_box(26)
    gml_Script_c_sprite(743)
    gml_Script_c_waittalk()
    gml_Script_c_wait(30)
    gml_Script_c_var_instance(id, "su_squint_2", 1)
    gml_Script_c_sel(be)
    gml_Script_c_autowalk(0)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(673)
    else
        gml_Script_c_sprite(334)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect(262, 222, 40)
    gml_Script_c_delaycmd(41, "imagespeed", 0)
    gml_Script_c_delaycmd(41, "imageindex", 0)
    gml_Script_c_mus2("volume", 0, 40)
    gml_Script_c_wait(20)
    gml_Script_c_sel(no)
    gml_Script_c_sprite(742)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0)
    gml_Script_c_imageindex(1)
    gml_Script_c_emote("!", 20)
    gml_Script_c_wait(20)
    gml_Script_c_mus("free")
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EI* So is there any reason not to...?/", "obj_ch2_scene27_slash_Step_0_gml_221_0")
    gml_Script_c_facenext("noelle", "4")
    gml_Script_c_msgnextloc("\\E4* Not that I can think of./", "obj_ch2_scene27_slash_Step_0_gml_223_0")
    gml_Script_c_facenext("susie", "2")
    gml_Script_c_msgnextloc("\\E2* Me neither./", "obj_ch2_scene27_slash_Step_0_gml_225_0")
    gml_Script_c_facenext("berdly", "5")
    gml_Script_c_msgnextloc("\\E5* Then^1, Noelle..^1. let THIS be my real apology!/%", "obj_ch2_scene27_slash_Step_0_gml_227_0")
    gml_Script_c_talk()
    gml_Script_c_wait_box(2)
    gml_Script_c_sel(no)
    gml_Script_c_sprite(741)
    gml_Script_c_wait_box(4)
    gml_Script_c_var_instance(id, "su_squint_1", 1)
    gml_Script_c_waittalk()
    gml_Script_c_sprite(742)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0)
    gml_Script_c_imageindex(1)
    gml_Script_c_var_instance(id, "su_squint_2", 1)
    gml_Script_c_sel(be)
    gml_Script_c_autowalk(0)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(948)
    else
        gml_Script_c_sprite(331)
    gml_Script_c_arg_objectxy(be_actor, 0, 0)
    gml_Script_c_setxy(x, y)
    gml_Script_c_imageindex(0)
    gml_Script_c_soundplay(139)
    gml_Script_c_var_instance(id, "berdly_power_up_start", 1)
    gml_Script_c_wait(60)
    gml_Script_c_var_instance(id, "berdly_power_up", 1)
    gml_Script_c_mus2("initloop", "gigaqueen_pre.ogg", 0)
    gml_Script_c_wait(60)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E4* Concentrating my will into this blade.../", "obj_ch2_scene27_slash_Step_0_gml_244_0")
    gml_Script_c_msgnextloc("\\EI* I will make a new Fountain.../", "obj_ch2_scene27_slash_Step_0_gml_245_0")
    gml_Script_c_msgnextloc("\\E4* And unleash a bright future!/", "obj_ch2_scene27_slash_Step_0_gml_246_0")
    gml_Script_c_msgnextloc("* A future that shines for US!/", "obj_ch2_scene27_slash_Step_0_gml_378_0")
    gml_Script_c_msgnextloc("* A future whose brightness... is born from DARKNESS!/%", "obj_ch2_scene27_slash_Step_0_gml_247_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(id, "berdly_power_up_cancel", 1)
    gml_Script_c_mus("pause")
    gml_Script_c_sel(be)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(3341)
    else
        gml_Script_c_sprite(354)
    gml_Script_c_sel(no)
    gml_Script_c_sprite(746)
    gml_Script_c_var_instance(id, "su_concerned", 1)
    gml_Script_c_sel(be)
    gml_Script_c_emote("!", 30)
    gml_Script_c_sel(no)
    gml_Script_c_emote("!", 30)
    gml_Script_c_mus("pause")
    gml_Script_c_soundplay(216)
    gml_Script_c_var_instance(id, "ra_scared", 1)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EY* STOP!/%", "obj_ch2_scene27_slash_Step_0_gml_403_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(60)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EY* What.../", "obj_ch2_scene27_slash_Step_0_gml_256_0")
    gml_Script_c_msgnextloc("\\EZ* In the world are you all doing?/%", "obj_ch2_scene27_slash_Step_0_gml_257_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(60)
    gml_Script_c_mus("resume")
    gml_Script_c_sel(be)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(3281)
    else
        gml_Script_c_sprite(329)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EI* Well^1, we thought we would just%%", "obj_ch2_scene27_slash_Step_0_gml_268_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(id, "su_look_right", 1)
    gml_Script_c_sel(be)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(3265)
    else
        gml_Script_c_sprite(356)
    gml_Script_c_mus("pause")
    gml_Script_c_soundplay(216)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EY* Stop./%", "obj_ch2_scene27_slash_Step_0_gml_275_0")
    gml_Script_c_talk_wait()
    gml_Script_c_mus("resume")
    gml_Script_c_sel(be)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(3281)
    else
        gml_Script_c_sprite(329)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E3* I mean -%%", "obj_ch2_scene27_slash_Step_0_gml_277_0")
    gml_Script_c_talk_wait()
    if (global.flag[457] == 1)
        gml_Script_c_sprite(2992)
    else
        gml_Script_c_sprite(353)
    gml_Script_c_mus("free")
    gml_Script_c_soundplay(216)
    gml_Script_c_var_instance(id, "ra_shake", 1)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EY* Stop!/", "obj_ch2_scene27_slash_Step_0_gml_283_0")
    gml_Script_c_msgnextloc("\\EZ* Do you realize what will happen if you do that?/", "obj_ch2_scene27_slash_Step_0_gml_284_0")
    gml_Script_c_facenext("berdly", 5)
    gml_Script_c_msgnextloc("\\E5* I..^1. we'll..^1. just.../", "obj_ch2_scene27_slash_Step_0_gml_286_0")
    gml_Script_c_facenext("ralsei", "T")
    gml_Script_c_msgnextloc("\\ET* You'll bring the Roaring./%", "obj_ch2_scene27_slash_Step_0_gml_288_0")
    gml_Script_c_talk()
    gml_Script_c_wait_box(3)
    gml_Script_c_sel(be)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(3336)
    else
        gml_Script_c_sprite(355)
    gml_Script_c_wait_box(5)
    gml_Script_c_var_instance(id, "ra_stern", 1)
    gml_Script_c_sel(be)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(2992)
    else
        gml_Script_c_sprite(353)
    gml_Script_c_waittalk()
    gml_Script_c_var_instance(blackall, "image_blend", 0)
    gml_Script_c_var_lerp_instance(blackall, "image_alpha", 0, 1, 60)
    gml_Script_c_var_instance(id, "hide_border", 1)
    gml_Script_c_wait(60)
    gml_Script_c_waitcustom()
}
if (con == 11 && customcon == 1)
{
    con = 12
    alarm[0] = 30
    room_persistent = true
    room_goto(room_legend_neo)
}
if (con == 13 || gml_Script_scr_cutscene_loaded())
{
    room_persistent = false
    static_queen_stop = 1
    con = 49
    alarm[0] = 30
    gml_Script_c_waitcustom_end()
    gml_Script_c_var_instance(id, "hide_border", 0)
    gml_Script_c_var_instance(id, "show_border", 1)
    gml_Script_c_sel(be)
    gml_Script_c_autowalk(1)
    gml_Script_c_setxy(220, 222)
    gml_Script_c_sprite(337)
    gml_Script_c_var_instance(id, "queen_surprised", 1)
    gml_Script_c_var_instance(id, "su_shocked", 1)
    gml_Script_c_var_instance(blackall, "image_blend", 0)
    gml_Script_c_var_lerp_instance(blackall, "image_alpha", 1, 0, 60)
    gml_Script_c_wait(165)
    gml_Script_c_var_instance(id, "ra_look", 1)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E8* Oh Damn I Did Not Know That/", "obj_ch2_scene27_slash_Step_0_gml_343_0")
    gml_Script_c_facenext("ralsei", "L")
    gml_Script_c_msgnextloc("\\EL* You..^1. didn't!?/", "obj_ch2_scene27_slash_Step_0_gml_345_0")
    gml_Script_c_msgnextloc("\\EC* But your whole plan was to --/%", "obj_ch2_scene27_slash_Step_0_gml_346_0")
    gml_Script_c_talk()
    gml_Script_c_wait_box(2)
    gml_Script_c_var_instance(id, "ra_huh", 1)
    gml_Script_c_wait_box(3)
    gml_Script_c_var_instance(id, "ra_scared", 1)
    gml_Script_c_waittalk()
    gml_Script_c_var_instance(id, "su_squint_1", 1)
    gml_Script_c_var_instance(id, "ra_mu", 1)
    gml_Script_c_var_instance(id, "queen_laugh_start", 1)
    gml_Script_c_soundplay(292)
    gml_Script_c_sel(be)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(675)
    else
        gml_Script_c_sprite(336)
    gml_Script_c_halt()
    gml_Script_c_wait(15)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\EN* I'm Just A Computer LMAO I Don't Know Everything/", "obj_ch2_scene27_slash_Step_0_gml_361_0")
    gml_Script_c_msgnextloc("\\ED* I Was Just Guessing Based Off The Knight's Actions/", "obj_ch2_scene27_slash_Step_0_gml_362_0")
    gml_Script_c_msgnextloc("\\EB* Why The Heck (Hell) Would I Want To End The World/%", "obj_ch2_scene27_slash_Step_0_gml_363_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(id, "queen_laugh_stop", 1)
    gml_Script_c_sel(be)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(673)
    else
        gml_Script_c_sprite(334)
    gml_Script_c_halt()
    gml_Script_c_sel(no)
    gml_Script_c_sprite(742)
    gml_Script_c_mus2("initloop", "noelle_school.ogg", 0)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\EI* W..^1. well^1, that's a relief!/%", "obj_ch2_scene27_slash_Step_0_gml_377_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(be)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(674)
    else
        gml_Script_c_sprite(335)
    gml_Script_c_halt()
    gml_Script_c_sel(no)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E5* Uhh..^1. ummm..^1. I'm sorry. I..^1. I.../", "obj_ch2_scene27_slash_Step_0_gml_388_0")
    gml_Script_c_msgnextloc("\\E8* After everything^1, I just caused trouble for you again^1, Noelle./", "obj_ch2_scene27_slash_Step_0_gml_389_0")
    gml_Script_c_facenext("queen", 13)
    var small_text = gml_Script_stringsetloc("I Thought About It While Charging My Battery", "obj_ch2_scene27_slash_Step_0_gml_656_0")
    gml_Script_scr_smallface(1, "queen", 1, "leftmid", "bottom", small_text)
    gml_Script_c_msgnextloc("\\ED* That's Okay Berdly I Understand \\f1 /", "obj_ch2_scene27_slash_Step_0_gml_391_0")
    gml_Script_c_msgnextloc("\\E1* You Cannot Calculate Other People's Feelings/%", "obj_ch2_scene27_slash_Step_0_gml_392_0")
    gml_Script_c_talk()
    gml_Script_c_wait_box(1)
    gml_Script_c_sel(be)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(681)
    else
        gml_Script_c_sprite(375)
    gml_Script_c_sel(no)
    gml_Script_c_facing("l")
    gml_Script_c_waittalk()
    gml_Script_c_sel(be)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(675)
    else
        gml_Script_c_sprite(336)
    gml_Script_c_halt()
    gml_Script_c_wait(5)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E3* You..^1. you understand how I feel?/%", "obj_ch2_scene27_slash_Step_0_gml_402_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(id, "queen_laugh_start", 1)
    gml_Script_c_soundplay(292)
    gml_Script_c_sel(no)
    gml_Script_c_facing("u")
    gml_Script_c_wait(15)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\EN* Not Really LMAO I Just Don't Want Noelle To Be Sad/%", "obj_ch2_scene27_slash_Step_0_gml_417_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(id, "queen_laugh_stop", 1)
    gml_Script_c_sel(no)
    gml_Script_c_sprite(223)
    gml_Script_c_halt()
    gml_Script_c_sel(be)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(673)
    else
        gml_Script_c_sprite(334)
    gml_Script_c_halt()
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E4* Haha^1, well..^1. I'm glad..^1. you two kind of get it now./%", "obj_ch2_scene27_slash_Step_0_gml_437_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(be)
    gml_Script_c_autowalk(0)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(679)
    else
        gml_Script_c_sprite(339)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EE* Guess we all..^1. made a pretty sweet team in the end./%", "obj_ch2_scene27_slash_Step_0_gml_446_0")
    gml_Script_c_talk_wait()
    gml_Script_c_soundplay(287)
    gml_Script_c_sel(no)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(730)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sel(be)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(694)
    else
        gml_Script_c_sprite(338)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_var_instance(id, "queen_laugh_start", 1)
    gml_Script_c_wait(99)
    gml_Script_c_var_instance(id, "queen_laugh_stop", 1)
    gml_Script_c_sel(be)
    gml_Script_c_halt()
    gml_Script_c_sel(no)
    gml_Script_c_halt()
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\EI* No We Freaking Didn't?/%", "obj_ch2_scene27_slash_Step_0_gml_486_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(id, "su_look_right", 1)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EH* CAN YOU LET GO OF US NOW!?/%", "obj_ch2_scene27_slash_Step_0_gml_494_0")
    gml_Script_c_talk_wait()
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\ED* Oh Yeah/%", "obj_ch2_scene27_slash_Step_0_gml_498_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("l")
    gml_Script_c_sel(be)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(673)
    else
        gml_Script_c_sprite(334)
    gml_Script_c_halt()
    gml_Script_c_var_instance(id, "hand_leave", 1)
    gml_Script_c_soundplay(159)
    gml_Script_c_soundplay(283)
    gml_Script_c_sel(kr)
    gml_Script_c_setxy(145, 135)
    gml_Script_c_sprite(862)
    gml_Script_c_visible(1)
    gml_Script_c_sel(su)
    gml_Script_c_setxy(65, 118)
    gml_Script_c_sprite(1005)
    gml_Script_c_visible(1)
    gml_Script_c_sel(ra)
    gml_Script_c_setxy(174, 90)
    gml_Script_c_sprite(779)
    gml_Script_c_visible(1)
    gml_Script_c_sel(ra)
    gml_Script_c_autowalk(0)
    gml_Script_c_walkdirect(157, 216, 10)
    gml_Script_c_sel(kr)
    gml_Script_c_autowalk(0)
    gml_Script_c_walkdirect(110, 228, 10)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(0)
    gml_Script_c_walkdirect(54, 211, 10)
    gml_Script_c_var_instance(id, "queen_leave", 1)
    gml_Script_c_wait(10)
    gml_Script_c_sel(kr)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("r")
    gml_Script_c_sel(ra)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("r")
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("r")
    gml_Script_c_wait(30)
    gml_Script_c_walkdirect_wait(54, 224, 4)
    gml_Script_c_walkdirect_wait(320, 224, 36)
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect_wait(320, 211, 4)
    gml_Script_c_facing("r")
    gml_Script_c_sel(no)
    gml_Script_c_sprite(223)
    gml_Script_c_halt()
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E4* S..^1. Susie!!/%", "obj_ch2_scene27_slash_Step_0_gml_567_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_sprite(818)
    gml_Script_c_halt()
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* Hey^1, you stood up to Queen. Not half bad./%", "obj_ch2_scene27_slash_Step_0_gml_575_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_sprite(737)
    gml_Script_c_halt()
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E3* R..^1. really?/", "obj_ch2_scene27_slash_Step_0_gml_583_0")
    gml_Script_c_facenext("susie", "A")
    gml_Script_c_msgnextloc("\\EA* Uh^1, yeah./%", "obj_ch2_scene27_slash_Step_0_gml_585_0")
    gml_Script_c_talk()
    gml_Script_c_wait_box(2)
    gml_Script_c_sel(su)
    gml_Script_c_flip("x")
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walk("l", 5, 5)
    gml_Script_c_delaycmd(6, "imagespeed", 0)
    gml_Script_c_waittalk()
    gml_Script_c_wait(10)
    gml_Script_c_sel(su)
    gml_Script_c_flip("x")
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EK* ..^1. just^1, guess you gotta wake up soon^1, huh?/%", "obj_ch2_scene27_slash_Step_0_gml_592_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_sprite(716)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\EN* H-huh?/%", "obj_ch2_scene27_slash_Step_0_gml_599_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_sprite(215)
    gml_Script_c_halt()
    gml_Script_c_wait(5)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E8* (Everything got so intense^1, I forgot it was a dream...)/%", "obj_ch2_scene27_slash_Step_0_gml_609_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_facing("d")
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E9* Then..^1. I just hope.../%", "obj_ch2_scene27_slash_Step_0_gml_620_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_sprite(223)
    gml_Script_c_halt()
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E4* I get to have more dreams like this./%", "obj_ch2_scene27_slash_Step_0_gml_629_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_facing("u")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* .../%", "obj_ch2_scene27_slash_Step_0_gml_637_0")
    gml_Script_c_talk_wait()
    gml_Script_c_walk_wait("r", 3, 4)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EC* Hey^1, Noelle^1, when you wake up..^1. um.../%", "obj_ch2_scene27_slash_Step_0_gml_644_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("d")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EK* Well^1, I just wanted to say..^1. uhh.../%", "obj_ch2_scene27_slash_Step_0_gml_651_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sel(qu)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(283)
    gml_Script_c_imageindex(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect_wait(518, 342, 40)
    gml_Script_c_halt()
    gml_Script_c_wait(15)
    gml_Script_c_soundplay(159)
    gml_Script_c_soundplay(289)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(503)
    gml_Script_c_jump(452, 178, 45, 15)
    gml_Script_c_wait(16)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("l")
    gml_Script_c_setxy(492, 178)
    gml_Script_c_shakeobj()
    gml_Script_c_imageindex(0)
    gml_Script_c_imagespeed(0)
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_sel(no)
    gml_Script_c_facing("r")
    gml_Script_c_sel(be)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(673)
    else
        gml_Script_c_sprite(334)
    gml_Script_c_halt()
    gml_Script_c_wait(40)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E1* Well Then I Suppose It Is Time For You All To Exit/", "obj_ch2_scene27_slash_Step_0_gml_682_0")
    gml_Script_c_msgnextloc("\\EB* Running Program..^1. Tender Goodbye.EXE/", "obj_ch2_scene27_slash_Step_0_gml_683_0")
    gml_Script_c_msgnextloc("\\ED* I Will Miss Each Of You/", "obj_ch2_scene27_slash_Step_0_gml_684_0")
    gml_Script_c_msgnextloc("\\E9* Noelle^1, Your Un-needed Honesty/", "obj_ch2_scene27_slash_Step_0_gml_685_0")
    gml_Script_c_msgnextloc("\\E1* Susie^1, Your Foolish Bravery/", "obj_ch2_scene27_slash_Step_0_gml_686_0")
    gml_Script_c_msgnextloc("\\EB* Kris^1, Your Chill Vibes/", "obj_ch2_scene27_slash_Step_0_gml_687_0")
    gml_Script_c_msgnextloc("\\ED* .../", "obj_ch2_scene27_slash_Step_0_gml_688_0")
    gml_Script_c_msgnextloc("\\EF* B...Burghley?/%", "obj_ch2_scene27_slash_Step_0_gml_689_0")
    gml_Script_c_talk()
    gml_Script_c_wait_box(1)
    gml_Script_c_sel(qu)
    gml_Script_c_soundplay(51)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(61)
    gml_Script_c_imageindex(0)
    gml_Script_c_imagespeed(0.4)
    gml_Script_c_delaycmd(15, "imagespeed", 0)
    gml_Script_c_delayfacing(20, "l")
    gml_Script_c_var_instance(id, "tender_goodbye", 1)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("u")
    gml_Script_c_sel(no)
    gml_Script_c_facing("u")
    gml_Script_c_sel(su)
    gml_Script_c_facing("u")
    gml_Script_c_sel(be)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(675)
    else
        gml_Script_c_sprite(336)
    gml_Script_c_halt()
    gml_Script_c_sel(ra)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("u")
    gml_Script_c_wait_box(2)
    gml_Script_c_sel(qu)
    gml_Script_c_facing("l")
    gml_Script_c_wait_box(3)
    gml_Script_c_var_instance(id, "noelle_qs", 1)
    gml_Script_c_wait_box(4)
    gml_Script_c_var_instance(id, "susie_qs", 1)
    gml_Script_c_wait_box(5)
    gml_Script_c_var_instance(id, "kris_qs", 1)
    gml_Script_c_wait_box(6)
    gml_Script_c_sel(qu)
    gml_Script_c_facing("d")
    gml_Script_c_wait_box(7)
    gml_Script_c_facing("l")
    gml_Script_c_var_instance(id, "berdly_qs", 1)
    gml_Script_c_waittalk()
    gml_Script_c_wait(5)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("r")
    gml_Script_c_sel(no)
    gml_Script_c_facing("l")
    gml_Script_c_sel(su)
    gml_Script_c_facing("l")
    gml_Script_c_sel(be)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("l")
    gml_Script_c_sel(ra)
    gml_Script_c_sprite(812)
    gml_Script_c_arg_objectxy(ra_actor, 0, 5)
    gml_Script_c_setxy(x, y)
    gml_Script_c_halt()
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\E2* It doesn't have to be goodbye^1, Queen!/", "obj_ch2_scene27_slash_Step_0_gml_711_0")
    gml_Script_c_msgnextloc("\\E2* Kris can take you back to our Castle Town!/", "obj_ch2_scene27_slash_Step_0_gml_712_0")
    gml_Script_c_msgnextloc("\\EH* You and all our recruits can live there!/", "obj_ch2_scene27_slash_Step_0_gml_713_0")
    gml_Script_c_facenext("queen", 3)
    gml_Script_c_msgnextloc("\\E3* Oh/%", "obj_ch2_scene27_slash_Step_0_gml_715_0")
    gml_Script_c_talk()
    gml_Script_c_wait_box(4)
    gml_Script_c_sel(qu)
    gml_Script_c_facing("d")
    gml_Script_c_waittalk()
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_arg_objectxy(ra_actor, 0, -5)
    gml_Script_c_setxy(x, y)
    gml_Script_c_sel(qu)
    gml_Script_c_autowalk(1)
    gml_Script_c_walk("r", 10, 60)
    gml_Script_c_var_instance(id, "tender_cancel", 1)
    gml_Script_c_var_instance(id, "tender_finish", 1)
    gml_Script_c_wait(30)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E1* Deleting Tender Goodbye.EXE/%", "obj_ch2_scene27_slash_Step_0_gml_728_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_sel(su)
    gml_Script_c_sprite(832)
    gml_Script_c_halt()
    gml_Script_c_sel(no)
    gml_Script_c_facing("l")
    gml_Script_c_sel(be)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(673)
    else
        gml_Script_c_sprite(334)
    gml_Script_c_halt()
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_sel(kr)
    gml_Script_c_facing("r")
    gml_Script_c_msgside("top")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* Alright^1! Time to do what we came here for.../%", "obj_ch2_scene27_slash_Step_0_gml_734_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_sprite(747)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E6* .../%", "obj_ch2_scene27_slash_Step_0_gml_742_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_sel(no)
    gml_Script_c_sprite(223)
    gml_Script_c_halt()
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* Hey^1, Noelle./", "obj_ch2_scene27_slash_Step_0_gml_750_0")
    gml_Script_c_msgnextloc("\\EC* ..^1. If you see the real Susie^1, just.../%", "obj_ch2_scene27_slash_Step_0_gml_751_0")
    gml_Script_c_talk()
    gml_Script_c_wait_box(1)
    gml_Script_c_sel(su)
    gml_Script_c_walk("r", 3, 5)
    gml_Script_c_waittalk()
    gml_Script_c_sel(su)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EK* Just know that maybe^1, she's.../%", "obj_ch2_scene27_slash_Step_0_gml_759_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_sprite(45)
    gml_Script_c_shakeobj()
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EH* Look^1, she doesn't have a tail^1, OK!?/%", "obj_ch2_scene27_slash_Step_0_gml_769_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(730)
    gml_Script_c_imagespeed(0.25)
    gml_Script_scr_smallface(0, "susie", 17, "right", "bottom", gml_Script_stringsetloc("It's not a secret!!", "obj_ch2_scene27_slash_Step_0_gml_778_0"))
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\ER* Hahaha^1, okay^1! I got it!!\\f0/%", "obj_ch2_scene27_slash_Step_0_gml_780_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_flip("x")
    gml_Script_c_shakeobj()
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EK* (Let's just go^1, Kris!!!)/%", "obj_ch2_scene27_slash_Step_0_gml_788_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(ra)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(812)
    gml_Script_c_arg_objectxy(ra_actor, 0, 5)
    gml_Script_c_setxy(x, y)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sel(be)
    gml_Script_c_autowalk(0)
    if (global.flag[457] == 1)
        gml_Script_c_sprite(694)
    else
        gml_Script_c_sprite(338)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sel(su)
    gml_Script_c_flip("x")
    gml_Script_c_walk_wait("d", 5, 5)
    gml_Script_c_walk_wait("l", 8, 32)
    gml_Script_c_walk_wait("u", 5, 5)
    gml_Script_c_walk("r", 5, 5)
    gml_Script_c_sel(kr)
    gml_Script_c_autowalk(0)
    gml_Script_c_walk_wait("d", 5, 5)
    gml_Script_c_sel(su)
    gml_Script_c_walk("d", 5, 5)
    gml_Script_c_sel(kr)
    gml_Script_c_walk_wait("r", 5, 5)
    gml_Script_c_sel(su)
    gml_Script_c_walk("r", 8, 80)
    gml_Script_c_sel(kr)
    gml_Script_c_autowalk(0)
    gml_Script_c_walk_wait("r", 8, 80)
    gml_Script_c_mus2("volume", 0, 60)
    gml_Script_c_var_lerp_instance(blackall, "image_alpha", 0, 1, 60)
    gml_Script_c_var_instance(id, "show_border", 0)
    gml_Script_c_var_instance(id, "hide_border", 1)
    gml_Script_c_wait(180)
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 50 && (!gml_Script_i_ex(895)))
{
    con = 99
    if (gml_Script_scr_get_total_recruits(2) == 0)
        global.flag[388] = 1
    gml_Script_snd_free_all()
    global.plot = 171
    room_goto(room_cc_fountain)
}
if berdly_power_up_start
{
    berdly_power_up_start = 0
    berdly_halberd = gml_Script_instance_create((gml_Script_camerax() + 320), (gml_Script_cameray() + 180), obj_ch2_scene27_halberd)
}
if berdly_power_up
{
    berdly_power_up = 0
    with (berdly_halberd)
        con = 4
}
if berdly_power_up_cancel
{
    berdly_power_up_cancel = 0
    with (berdly_halberd)
        con = 5
}
if shake_hand
{
    shake_hand = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
        {
            var shakething = gml_Script_scr_shakeobj()
            shakeobj.shakeamt = 20
        }
        var dmgsnd = gml_Script_snd_play(166)
        gml_Script_snd_pitch(dmgsnd, (0.8 + random(0.2)))
    }
}
if tender_goodbye
{
    tender_goodbye = 0
    if gml_Script_i_ex(983)
    {
        with (obj_ch2_scene26_cityscape)
            tender_goodbye = 1
    }
}
if tender_cancel
{
    tender_cancel = 0
    if gml_Script_i_ex(983)
    {
        with (obj_ch2_scene26_cityscape)
            tender_cancel = 1
    }
}
if noelle_qs
{
    noelle_qs = 0
    var screen = gml_Script_instance_create((no_actor.x + 25), (gml_Script_cameray() + 160), obj_queenscreen)
    screen.image_index = 7
    screen.aligned = 1
}
if susie_qs
{
    susie_qs = 0
    screen = gml_Script_instance_create((su_actor.x + 26), (gml_Script_cameray() + 160), obj_queenscreen)
    screen.image_index = 39
    screen.aligned = 1
}
if kris_qs
{
    kris_qs = 0
    screen = gml_Script_instance_create((kr_actor.x + 20), (gml_Script_cameray() + 160), obj_queenscreen)
    screen.image_index = 38
    screen.aligned = 1
}
if berdly_qs
{
    berdly_qs = 0
    screen = gml_Script_instance_create((be_actor.x + 24), (gml_Script_cameray() + 160), obj_queenscreen)
    screen.image_index = 20
    screen.aligned = 1
}
if tender_finish
{
    tender_finish = 0
    if gml_Script_i_ex(261)
    {
        with (obj_queenscreen)
            instance_destroy()
    }
}
if hand_release
{
    hand_release = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            release = 1
    }
}
if hand_leave
{
    hand_leave = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            leave = 1
    }
}
if su_struggle
{
    su_struggle = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            su_struggle = 1
    }
}
if su_shocked
{
    su_shocked = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            su_shocked = 1
    }
}
if su_look_left
{
    su_look_left = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            su_look_left = 1
    }
}
if su_look_right
{
    su_look_right = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            su_look_right = 1
    }
}
if su_grin_1
{
    su_grin_1 = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            su_grin_1 = 1
    }
}
if su_grin_2
{
    su_grin_2 = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            su_grin_2 = 1
    }
}
if su_squint_1
{
    su_squint_1 = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            su_squint_1 = 1
    }
}
if su_squint_2
{
    su_squint_2 = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            su_squint_2 = 1
    }
}
if su_concerned
{
    su_concerned = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            su_concerned = 1
    }
}
if ra_struggle
{
    ra_struggle = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            ra_struggle = 1
    }
}
if ra_huh
{
    ra_huh = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            ra_huh = 1
    }
}
if ra_look
{
    ra_look = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            ra_look = 1
    }
}
if ra_smile
{
    ra_smile = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            ra_smile = 1
    }
}
if ra_scared
{
    ra_scared = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            ra_scared = 1
    }
}
if ra_stern
{
    ra_stern = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            ra_stern = 1
    }
}
if ra_mu
{
    ra_mu = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            ra_mu = 1
    }
}
if ra_shake
{
    ra_shake = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            ra_shake = 1
    }
}
if set_queen_voice
{
    set_queen_voice = 0
    global.typer = 62
}
if queen_laugh_start
{
    queen_laugh_start = 0
    queen_laugh_start = 0
    if gml_Script_i_ex(985)
    {
        with (obj_ch2_scene26_gigaqueen)
            laugh = 1
    }
}
if queen_laugh_stop
{
    queen_laugh_stop = 0
    if gml_Script_i_ex(985)
    {
        with (obj_ch2_scene26_gigaqueen)
            laugh = 0
    }
}
if queen_surprised
{
    queen_surprised = 0
    if gml_Script_i_ex(985)
    {
        with (obj_ch2_scene26_gigaqueen)
            surprised = 1
    }
}
if static_queen
{
    static_queen = 0
    if gml_Script_i_ex(985)
    {
        with (obj_ch2_scene26_gigaqueen)
            static_start = 1
    }
}
if static_queen_stop
{
    static_queen_stop = 0
    if gml_Script_i_ex(985)
    {
        with (obj_ch2_scene26_gigaqueen)
            static_stop = 1
    }
}
if queen_leave
{
    queen_leave = 0
    if gml_Script_i_ex(985)
    {
        with (obj_ch2_scene26_gigaqueen)
            leave = 1
    }
}
if queen_sad
{
    queen_sad = 0
    if gml_Script_i_ex(985)
    {
        with (obj_ch2_scene26_gigaqueen)
        {
            head_sprite = 346
            pilot_sprite = 274
        }
    }
}
if queen_happy
{
    queen_happy = 0
    if gml_Script_i_ex(985)
    {
        with (obj_ch2_scene26_gigaqueen)
        {
            head_sprite = 348
            pilot_sprite = 275
        }
    }
}
