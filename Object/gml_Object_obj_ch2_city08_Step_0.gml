var _temp_local_var_4;
if (weird == 0)
{
    if (obj_mainchara.x >= x && con == -1)
    {
        con = 1
        global.interact = 1
        global.facing = 1
        cutscene_master = gml_Script_scr_cutscene_make()
        gml_Script_scr_maincharacters_actors()
        qu = (actor_count + 1)
        qu_actor = gml_Script_instance_create((gml_Script_camerax() + 650), 120, obj_actor)
        gml_Script_scr_actor_setup(qu, qu_actor, "queen")
        qu_actor.sprite_index = spr_queen_chair_2
        gml_Script_c_sel(qu)
        gml_Script_c_autowalk(0)
        gml_Script_c_imagespeed(0.25)
        be = (actor_count + 2)
        be_actor = gml_Script_instance_create(0, -200, obj_actor)
        gml_Script_scr_actor_setup(be, be_actor, "berdly")
        be_actor.sprite_index = spr_berdly_walk_left_dw
        qu_flame = (actor_count + 3)
        qu_flame_actor = gml_Script_scr_dark_marker((gml_Script_camerax() + 650), 120, 764)
        gml_Script_scr_actor_setup_nofacing(qu_flame, qu_flame_actor, "qu_flame")
        gml_Script_c_sel(qu_flame)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_stickto(qu_actor, 100)
        capsule1 = gml_Script_instance_create(963, 460, obj_ch2_capsule)
        capsule1.visible = false
        capsule2 = gml_Script_instance_create(764, 460, obj_ch2_capsule)
        capsule2.visible = false
        capsule2.main = 1
        capsule3 = gml_Script_instance_create(664, 460, obj_ch2_capsule)
        capsule3.visible = false
        capsule4 = gml_Script_instance_create(864, 460, obj_ch2_capsule)
        capsule4.visible = false
    }
    if (con == 1)
    {
        con = 49
        alarm[0] = 30
        gml_Script_c_sel(kr)
        gml_Script_c_walkdirect(786, 200, 15)
        gml_Script_c_delayfacing(16, "u")
        gml_Script_c_sel(su)
        gml_Script_c_walkdirect(698, 184, 15)
        gml_Script_c_delayfacing(16, "u")
        gml_Script_c_sel(no)
        gml_Script_c_walkdirect(634, 182, 15)
        gml_Script_c_delayfacing(16, "u")
        gml_Script_c_sel(ra)
        gml_Script_c_walkdirect(578, 188, 15)
        gml_Script_c_delayfacing(16, "u")
        gml_Script_c_mus2("volume", 0, 30)
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\E0* Look!^1! We're finally close to the Fountain!/", "obj_ch2_city08_slash_Step_0_gml_69_0")
        gml_Script_c_msgnextloc("\\EH* It's Queen's mansion!!/%", "obj_ch2_city08_slash_Step_0_gml_70_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(no)
        gml_Script_c_sprite(716)
        gml_Script_c_shakeobj()
        gml_Script_c_sel(su)
        gml_Script_c_facing("l")
        gml_Script_c_sel(kr)
        gml_Script_c_facing("l")
        gml_Script_c_sel(ra)
        gml_Script_c_facing("r")
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\EB* H-huh!? W-wait^1, why did we come here!?/%", "obj_ch2_city08_slash_Step_0_gml_78_0")
        gml_Script_c_talk_wait()
        gml_Script_c_pannable(1)
        gml_Script_c_panspeed_wait(5, 0, 40)
        gml_Script_c_sel(no)
        gml_Script_c_facing("r")
        gml_Script_c_sel(su)
        gml_Script_c_facing("r")
        gml_Script_c_sel(kr)
        gml_Script_c_facing("r")
        gml_Script_c_mus("free")
        gml_Script_c_wait(10)
        gml_Script_c_mus2("initloop", "queen.ogg", 0)
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\EQ* Kris You Brought Noelle Right To Me/", "obj_ch2_city08_slash_Step_0_gml_92_0")
        gml_Script_c_msgnextloc("\\E9* (I Knew Our Truce Was The Best)/", "obj_ch2_city08_slash_Step_0_gml_93_0")
        gml_Script_c_msgnextloc("\\E6* But Unfortunately/", "obj_ch2_city08_slash_Step_0_gml_94_0")
        gml_Script_c_msgnextloc("\\E7* That Means Trucies Are Over/", "obj_ch2_city08_slash_Step_0_gml_95_0")
        gml_Script_c_msgnextloc("\\E1* Noelle Get Over Here/", "obj_ch2_city08_slash_Step_0_gml_96_0")
        gml_Script_c_facenext("noelle", 7)
        gml_Script_c_msgnextloc("\\E7* But I..^1. I.../", "obj_ch2_city08_slash_Step_0_gml_98_0")
        gml_Script_c_facenext("queen", 1)
        gml_Script_c_msgnextloc("\\E1* Noelle/", "obj_ch2_city08_slash_Step_0_gml_100_0")
        gml_Script_c_msgnextloc("\\ED* I Will Only Say It One Time/", "obj_ch2_city08_slash_Step_0_gml_101_0")
        gml_Script_c_msgnextloc("\\E1* Infinitely/", "obj_ch2_city08_slash_Step_0_gml_102_0")
        gml_Script_c_msgnextloc("\\E1* Get Over Here Get Over Here Get Over Here Get Over Here Get Over Here/%", "obj_ch2_city08_slash_Step_0_gml_103_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(no)
        gml_Script_c_sprite(738)
        gml_Script_c_halt()
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\E7* I..^1. I.../", "obj_ch2_city08_slash_Step_0_gml_111_0")
        gml_Script_c_facenext("queen", "F")
        gml_Script_c_msgnextloc("\\EF* Noelle Are You: Hesitating/", "obj_ch2_city08_slash_Step_0_gml_113_0")
        gml_Script_c_msgnextloc("\\E9* Let Me If-Then This For You/", "obj_ch2_city08_slash_Step_0_gml_114_0")
        gml_Script_c_msgnextloc("\\E1* How About: IF You Don't Listen THEN/", "obj_ch2_city08_slash_Step_0_gml_115_0")
        gml_Script_c_msgnextloc("\\EO* A Certain Bird Might Take A Ride In The Acid River/%", "obj_ch2_city08_slash_Step_0_gml_116_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(no)
        gml_Script_c_sprite(716)
        gml_Script_c_shakeobj()
        gml_Script_c_emote("!", 30)
        gml_Script_c_sel(su)
        gml_Script_c_sprite(996)
        gml_Script_c_shakeobj()
        gml_Script_c_emote("!", 30, 20)
        gml_Script_c_wait(5)
        if (global.flag[307] != 4)
        {
            gml_Script_c_speaker("noelle")
            gml_Script_c_msgsetloc(0, "\\EC* B..^1. Berdly!?/%", "obj_ch2_city08_slash_Step_0_gml_132_0")
        }
        else
        {
            gml_Script_c_speaker("noelle")
            gml_Script_c_msgsetloc(0, "\\EC* B..^1. Berdly!?/", "obj_ch2_city08_slash_Step_0_gml_159_0_b")
            gml_Script_c_msgnextloc("* (That's right^1, he was just with us...)/", "obj_ch2_city08_slash_Step_0_gml_160_0_b")
            gml_Script_c_msgnextloc("* (Queen must have captured him when we weren't looking...!?)/%", "obj_ch2_city08_slash_Step_0_gml_161_0_b")
        }
        gml_Script_c_talk_wait()
        gml_Script_c_sel(su)
        gml_Script_c_facing("susieunhappy")
        gml_Script_c_facing("r")
        gml_Script_c_sel(no)
        gml_Script_c_walkdirect_wait(624, 195, 10)
        gml_Script_c_autowalk(0)
        gml_Script_c_sprite(731)
        gml_Script_c_imagespeed(0.24)
        gml_Script_c_walkdirect_wait(918, 195, 60)
        gml_Script_c_imageindex(0)
        gml_Script_c_imagespeed(0)
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\E7* (...)/%", "obj_ch2_city08_slash_Step_0_gml_152_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(733)
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\E7* (I..^1. I'm sorry..^1. Kris^1, Susie..^1. I...)/", "obj_ch2_city08_slash_Step_0_gml_159_0")
        gml_Script_c_msgnextloc("\\E9* (I wish I could have stayed with you longer^1, but...)/", "obj_ch2_city08_slash_Step_0_gml_160_0")
        gml_Script_c_msgnextloc("\\E7* (I..^1. I can't let Berdly get hurt^1, y'know?)/", "obj_ch2_city08_slash_Step_0_gml_161_0")
        gml_Script_c_facenext("susie", "O")
        gml_Script_c_msgnextloc("\\EO* .../%", "obj_ch2_city08_slash_Step_0_gml_163_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(731)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_walkdirect_wait(980, 185, 40)
        gml_Script_c_imageindex(0)
        gml_Script_c_imagespeed(0)
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\E0* Don't Be Sad Noelle Honey/", "obj_ch2_city08_slash_Step_0_gml_173_0")
        gml_Script_c_msgnextloc("\\E1* All That Remains Is The Final Step/%", "obj_ch2_city08_slash_Step_0_gml_174_0")
        gml_Script_c_talk_wait()
        gml_Script_c_mus("free")
        gml_Script_c_sel(be)
        gml_Script_c_setxy((gml_Script_camerax() - 40), 220)
        gml_Script_c_walkdirect(880, 220, 40)
        gml_Script_c_wait(20)
        gml_Script_c_sel(no)
        gml_Script_c_facing("l")
        gml_Script_c_wait(20)
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\E6* My splendorious Queen^1! There you are!/", "obj_ch2_city08_slash_Step_0_gml_190_0")
        if (global.flag[307] != 4)
            gml_Script_c_msgnextloc("\\EI* Phew^1! I looked in every used game store for you!/%", "obj_ch2_city08_slash_Step_0_gml_191_0")
        else
            gml_Script_c_msgnextloc("\\EI* Sorry^1, I thought I saw you in a used game store^1, and.../%", "obj_ch2_city08_slash_Step_0_gml_229_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(be)
        gml_Script_c_walk_wait("u", 4, 6)
        gml_Script_c_facing("r")
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\E3* Oh^1, Noelle. Are you okay? You look a little funny./%", "obj_ch2_city08_slash_Step_0_gml_199_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(20)
        gml_Script_c_sel(qu)
        gml_Script_c_halt()
        gml_Script_c_sel(no)
        gml_Script_c_facing("r")
        gml_Script_c_wait(60)
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\E1* Okay Plan B/%", "obj_ch2_city08_slash_Step_0_gml_214_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(qu)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_var_instance(capsule1, "visible", 1)
        gml_Script_c_var_lerp_instance(capsule1, "y", 440, 140, 15)
        gml_Script_c_wait(15)
        gml_Script_c_sel(no)
        gml_Script_c_sprite(716)
        gml_Script_c_wait(20)
        gml_Script_c_var_instance(capsule1, "con", 1)
        gml_Script_c_sel(su)
        gml_Script_c_sprite(996)
        gml_Script_c_shakeobj()
        gml_Script_c_sel(be)
        gml_Script_c_sprite(693)
        gml_Script_c_shakeobj()
        gml_Script_c_wait(15)
        gml_Script_c_sel(no)
        gml_Script_c_autowalk(0)
        gml_Script_c_walkdirect(980, -300, 25)
        gml_Script_c_var_lerp_instance(capsule1, "y", 140, -300, 25)
        gml_Script_c_wait(30)
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\E3* H-huh!?/", "obj_ch2_city08_slash_Step_0_gml_250_0")
        gml_Script_c_msgnextloc("\\EC* What are you doing!?/", "obj_ch2_city08_slash_Step_0_gml_251_0")
        gml_Script_c_facenext("queen", "A")
        gml_Script_c_msgnextloc("\\EA* I See Now Her Will Must Be Unleashed By Force/", "obj_ch2_city08_slash_Step_0_gml_253_0")
        gml_Script_c_msgnextloc("\\E9* Perhaps If I Make Her Face Into A Robot One...?/%", "obj_ch2_city08_slash_Step_0_gml_254_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(be)
        gml_Script_c_facing("berdlyunhappy")
        gml_Script_c_facing("r")
        gml_Script_c_sel(su)
        gml_Script_c_facing("susieunhappy")
        gml_Script_c_facing("r")
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\EC* B-but..^1. you said you wouldn't do that if I.../", "obj_ch2_city08_slash_Step_0_gml_266_0")
        gml_Script_c_facenext("queen", "K")
        gml_Script_c_msgnextloc("\\EK* Variable Lying Set To True/%", "obj_ch2_city08_slash_Step_0_gml_268_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(be)
        gml_Script_c_sprite(698)
        gml_Script_c_halt()
        gml_Script_c_shakeobj()
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\EB* We were going to be smart together!!! That's not fair!!!/", "obj_ch2_city08_slash_Step_0_gml_277_0")
        gml_Script_c_facenext("queen", "1")
        gml_Script_c_msgnextloc("\\E1* Understood/", "obj_ch2_city08_slash_Step_0_gml_279_0")
        gml_Script_c_msgnextloc("\\E7* Fairness Activated/%", "obj_ch2_city08_slash_Step_0_gml_280_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(capsule2, "visible", 1)
        gml_Script_c_var_lerp_instance(capsule2, "y", 440, 140, 15)
        gml_Script_c_var_instance(capsule3, "visible", 1)
        gml_Script_c_var_lerp_instance(capsule3, "y", 440, 140, 15)
        gml_Script_c_var_instance(capsule4, "visible", 1)
        gml_Script_c_var_lerp_instance(capsule4, "y", 440, 140, 15)
        gml_Script_c_wait(31)
        gml_Script_c_var_instance(capsule2, "con", 1)
        gml_Script_c_var_instance(capsule3, "con", 1)
        gml_Script_c_var_instance(capsule4, "con", 1)
        gml_Script_c_sel(kr)
        gml_Script_c_facing("d")
        gml_Script_c_sel(su)
        gml_Script_c_sprite(996)
        gml_Script_c_arg_objectxy(su_actor, -10, 0)
        gml_Script_c_setxy(x, y)
        gml_Script_c_sel(be)
        gml_Script_c_sprite(693)
        gml_Script_c_arg_objectxy(be_actor, -10, 0)
        gml_Script_c_setxy(x, y)
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\EZ* H-HEY!!!/", "obj_ch2_city08_slash_Step_0_gml_313_0")
        gml_Script_c_facenext("queen", "D")
        gml_Script_c_msgnextloc("\\ED* Good Thing I Calibrated Those Cages/", "obj_ch2_city08_slash_Step_0_gml_315_0")
        gml_Script_c_facenext("berdly", "B")
        gml_Script_c_msgnextloc("\\EB* You..^1. you said I could trust you!!/", "obj_ch2_city08_slash_Step_0_gml_317_0")
        gml_Script_c_msgnextloc("\\EC* You said you were a GAMER!!!/", "obj_ch2_city08_slash_Step_0_gml_318_0")
        gml_Script_c_facenext("queen", "B")
        gml_Script_c_msgnextloc("\\EB* Berdly/", "obj_ch2_city08_slash_Step_0_gml_320_0")
        gml_Script_c_msgnextloc("\\E6* I Only Play Mobile Games/%", "obj_ch2_city08_slash_Step_0_gml_321_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(695)
        gml_Script_c_arg_objectxy(be_actor, 10, 0)
        gml_Script_c_setxy(x, y)
        gml_Script_c_shakeobj()
        gml_Script_c_soundplay(61)
        gml_Script_c_wait(5)
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\E3* NOOOOOOOO!!!!!!/", "obj_ch2_city08_slash_Step_0_gml_333_0")
        gml_Script_c_facenext("queen", "6")
        gml_Script_c_msgnextloc("\\E6* One Of You Is Going To Help Me With My Plan/", "obj_ch2_city08_slash_Step_0_gml_335_0")
        gml_Script_c_msgnextloc("\\E6* And It's Going To Be Noelle/", "obj_ch2_city08_slash_Step_0_gml_336_0")
        gml_Script_c_msgnextloc("\\ED* The Rest Of You/", "obj_ch2_city08_slash_Step_0_gml_337_0")
        gml_Script_c_msgnextloc("\\EC* Go To Your Rooms/%", "obj_ch2_city08_slash_Step_0_gml_338_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(kr)
        gml_Script_c_autowalk(0)
        gml_Script_c_walkdirect(786, -300, 25)
        gml_Script_c_var_lerp_instance(capsule2, "y", 140, -300, 25)
        gml_Script_c_sel(su)
        gml_Script_c_autowalk(0)
        gml_Script_c_walkdirect(698, -300, 25)
        gml_Script_c_var_lerp_instance(capsule3, "y", 140, -300, 25)
        gml_Script_c_sel(be)
        gml_Script_c_autowalk(0)
        gml_Script_c_walkdirect(880, -300, 25)
        gml_Script_c_var_lerp_instance(capsule4, "y", 140, -300, 25)
        gml_Script_c_wait(10)
        gml_Script_c_sel(qu)
        gml_Script_c_autowalk(0)
        gml_Script_c_walkdirect_wait(880, 120, 15)
        gml_Script_c_wait(5)
        gml_Script_c_soundplay(292)
        gml_Script_c_sprite(759)
        gml_Script_c_imagespeed(0.1)
        gml_Script_c_sel(qu_flame)
        gml_Script_c_sprite(763)
        gml_Script_c_wait(60)
        gml_Script_c_mus("free")
        gml_Script_c_panspeed_wait(-3, 0, 50)
        gml_Script_c_wait(30)
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\EC* Wh..^1. What are you going to do with me?/%", "obj_ch2_city08_slash_Step_0_gml_382_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(qu)
        gml_Script_c_soundplay(216)
        gml_Script_c_sprite(165)
        gml_Script_c_wait(30)
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\EI* Oh Damn/", "obj_ch2_city08_slash_Step_0_gml_403_0")
        gml_Script_c_msgnextloc("\\E1* You're Still Here/", "obj_ch2_city08_slash_Step_0_gml_404_0")
        gml_Script_c_msgnextloc("\\ED* I Only Made Four Cages Ha Ha Ha/", "obj_ch2_city08_slash_Step_0_gml_405_0")
        gml_Script_c_msgnextloc("\\EM* I Literally Don't Know Ha Ha Ha Ha/%", "obj_ch2_city08_slash_Step_0_gml_406_0")
        gml_Script_c_talk_wait()
        gml_Script_c_soundplay(292)
        gml_Script_c_sprite(759)
        gml_Script_c_imagespeed(0.1)
        gml_Script_c_var_instance(id, "circle_zoom_start", 1)
        gml_Script_c_wait(10)
        gml_Script_c_soundplay(200)
        gml_Script_c_wait(70)
    }
    if (con == 50 && (!gml_Script_d_ex()))
    {
        con = 60
        gml_Script_c_actortokris()
        gml_Script_c_terminatekillactors()
    }
    if (con == 60 && (!gml_Script_i_ex(895)))
    {
        con = 0
        global.plot = 99
        room_goto(room_dw_mansion_krisroom)
    }
}
if (weird == 1)
{
    if (con == -1)
    {
        ralsei = gml_Script_instance_create(858, 196, obj_marker)
        ralsei.sprite_index = spr_ralsei_walk_up
        ralsei.image_xscale = 2
        ralsei.image_yscale = 2
        ralsei.image_speed = 0
        susie = gml_Script_instance_create(916, 188, obj_marker)
        susie.sprite_index = spr_susie_walk_up_dw
        susie.image_xscale = 2
        susie.image_yscale = 2
        susie.image_speed = 0
        con++
    }
    if (con == 0)
    {
        if (obj_mainchara.x < 1200)
        {
            gml_Script_scr_getchar(1)
            gml_Script_scr_getchar(2)
            gml_Script_scr_makecaterpillar(ralsei.x, (ralsei.y + 900), 2, 0)
            gml_Script_scr_makecaterpillar(susie.x, (susie.y + 900), 3, 1)
            con++
        }
    }
    if (con == 1)
    {
        global.interact = 1
        cutscene_master = gml_Script_scr_cutscene_make()
        gml_Script_scr_maincharacters_actors()
        con++
    }
    if (con == 2)
    {
        con = -999
        gml_Script_c_sel(kr)
        gml_Script_c_walkdirect(1160, 220, 8)
        gml_Script_c_pannable(1)
        gml_Script_c_pan(621, 0, 16)
        gml_Script_c_sel(ra)
        gml_Script_c_setxy(858, 196)
        gml_Script_c_facing("u")
        gml_Script_c_var_instance(susie, "y", 900)
        gml_Script_c_sel(su)
        gml_Script_c_setxy(916, 188)
        gml_Script_c_facing("u")
        gml_Script_c_var_instance(ralsei, "y", 900)
        gml_Script_c_sel(kr)
        gml_Script_c_wait(17)
        gml_Script_c_facing("l")
        gml_Script_c_wait(1)
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\E0* Looks like we finally found the fountain.../", "obj_ch2_city08_slash_Step_0_gml_528_0")
        gml_Script_c_facenext("susie", "0")
        gml_Script_c_msgnextloc("\\E0* Yeah^1, but where the hell is Kris...?/%", "obj_ch2_city08_slash_Step_0_gml_530_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(ra)
        gml_Script_c_facing("r")
        gml_Script_c_emote("!", 15, 0)
        gml_Script_c_sel(su)
        gml_Script_c_facing("r")
        gml_Script_c_emote("!", 15, 0)
        gml_Script_c_wait(30)
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\E7* Kris!/%", "obj_ch2_city08_slash_Step_0_gml_541_0")
        gml_Script_c_talk_wait()
        gml_Script_c_pan(805, 0, 32)
        gml_Script_c_sel(su)
        gml_Script_c_walkdirect(1104, 204, 32)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_sel(ra)
        gml_Script_c_walkdirect_wait(1048, 208, 32)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\E5* Where the hell were you!?/", "obj_ch2_city08_slash_Step_0_gml_551_0")
        gml_Script_c_facenext("ralsei", "Q")
        gml_Script_c_msgnextloc("\\EQ* We were searching everywhere for you.../", "obj_ch2_city08_slash_Step_0_gml_553_0")
        gml_Script_c_msgnextloc("\\E2* Even Susie was worried!/%", "obj_ch2_city08_slash_Step_0_gml_554_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(8)
        gml_Script_c_sel(su)
        gml_Script_c_facing("l")
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\EP* Huh!? No I wasn't!/%", "obj_ch2_city08_slash_Step_0_gml_560_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(4)
        gml_Script_c_facing("r")
        gml_Script_c_wait(4)
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\EO* Just^1, y'know^1, tell us if you're gonna.../%", "obj_ch2_city08_slash_Step_0_gml_566_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(15)
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\E0* .../", "obj_ch2_city08_slash_Step_0_gml_570_0")
        gml_Script_c_msgnextloc("\\E1* Hey..^1. Kris^1, you^1, uh^1, ok?/", "obj_ch2_city08_slash_Step_0_gml_571_0")
        gml_Script_c_msgnextloc("\\E0* You look kinda.../%", "obj_ch2_city08_slash_Step_0_gml_572_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(4)
        gml_Script_c_facing("l")
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\EH* Aww Kris^1, if you're hurt^1, Susie can heal you!/%", "obj_ch2_city08_slash_Step_0_gml_577_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(832)
        gml_Script_c_speaker("susie")
        gml_Script_c_wait(12)
        gml_Script_c_msgsetloc(0, "\\E2* Yeah^1, that's right^1! I'm a healing master now^1, Kris!/", "obj_ch2_city08_slash_Step_0_gml_582_0")
        gml_Script_c_msgnextloc("\\EA* I'm even better than Ralsei^1, so.../%", "obj_ch2_city08_slash_Step_0_gml_583_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(12)
        gml_Script_c_setxy(1100, 198)
        gml_Script_c_sprite(80)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_wait(12)
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\E3* If^1, uh^1, you hurt yourself or something^1, then.../%", "obj_ch2_city08_slash_Step_0_gml_591_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(ra)
        gml_Script_c_setxy(1046, 214)
        gml_Script_c_sprite(812)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_wait(15)
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\EG* You could try doing a hug like I did earlier!/%", "obj_ch2_city08_slash_Step_0_gml_599_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(15)
        gml_Script_c_sel(su)
        gml_Script_c_setxy(1110, 204)
        gml_Script_c_sprite(45)
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\EH* SHUT UP AND LET'S JUST GO ALREADY!/%", "obj_ch2_city08_slash_Step_0_gml_606_0")
        gml_Script_c_talk_wait()
        gml_Script_c_fadeout(30)
        gml_Script_c_autowalk(1)
        gml_Script_c_walk("l", 4, 30)
        gml_Script_c_sel(kr)
        gml_Script_c_walk("l", 4, 30)
        gml_Script_c_sel(ra)
        gml_Script_c_setxy(1048, 208)
        gml_Script_c_walk("l", 4, 30)
        gml_Script_c_wait(30)
        gml_Script_c_var_instance(id, "con", 99)
        gml_Script_c_actortokris()
        gml_Script_c_actortocaterpillar()
        gml_Script_c_terminatekillactors()
    }
    if (con == 99)
    {
        global.flag[915] = 7
        global.entrance = 24
        gml_Script_instance_create(0, 0, obj_persistentfadein)
        gml_Script_scr_spellget(2, 11)
        room_goto(room_dw_mansion_entrance)
    }
}
if circle_zoom_start
{
    circle_zoom_timer++
    if (circle_zoom == -1)
        circle_zoom = gml_Script_instance_create((qu_actor.x + 50), (qu_actor.y + 40), obj_circlezoom)
    if (circle_zoom_timer >= 60)
    {
        circle_zoom_start = 0
        var _temp_local_var_4 = circle_zoom
        finish = 1
    }
}
if cityscape_parallax
{
}