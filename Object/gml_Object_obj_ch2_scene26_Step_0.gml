var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_8, _temp_local_var_10, _temp_local_var_11, _temp_local_var_12, _temp_local_var_14, _temp_local_var_18, _temp_local_var_20, _temp_local_var_21, _temp_local_var_24, _temp_local_var_25, _temp_local_var_26, _temp_local_var_27, _temp_local_var_28, _temp_local_var_29, _temp_local_var_30, _temp_local_var_31, _temp_local_var_32, _temp_local_var_33;
if (obj_mainchara.x > 1120 && con == -1)
{
    con = 1
    global.interact = 1
    global.facing = 1
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    qu = 4
    qu_actor = gml_Script_instance_create(1670, 130, obj_actor)
    gml_Script_scr_actor_setup(qu, qu_actor, "queen")
    qu_actor.sprite_index = spr_cutscene_26_queen_back
    gml_Script_c_sel(qu)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0.25)
    no = 5
    no_actor = gml_Script_instance_create(2146, 167, obj_actor)
    gml_Script_scr_actor_setup(no, no_actor, "noelle")
    no_actor.sprite_index = spr_noelle_walk_down_dw
    gml_Script_c_sel(no)
    gml_Script_c_autodepth(0)
    no_actor.depth = (queenhand.depth - 100)
    gml_Script_c_visible(0)
    qu_flame = 6
    qu_flame_actor = gml_Script_scr_dark_marker(1670, 130, 764)
    gml_Script_scr_actor_setup_nofacing(qu_flame, qu_flame_actor, "qu_flame")
    gml_Script_c_sel(qu_flame)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_stickto(qu_actor, 100)
    queenwinehand = gml_Script_scr_dark_marker(1600, ((gml_Script_cameray() + view_hport[0]) + 100), 300)
    queenwinehand.depth = 1000100
    queenwinehand.image_speed = 0
    queenwinehand.visible = false
    queenfistleft = gml_Script_scr_dark_marker(1770, ((gml_Script_cameray() + view_hport[0]) + 100), 268)
    queenfistleft.depth = 1000240
    queenfistleft.visible = false
    damage1 = gml_Script_scr_dark_marker(1680, 266, 280)
    damage1.depth = 950000
    damage1.visible = false
    damage2 = gml_Script_scr_dark_marker(2100, 266, 280)
    damage2.depth = 950000
    damage2.visible = false
}
if (con == 1)
{
    con = 2
    alarm[0] = 30
    gml_Script_c_wait(15)
    gml_Script_c_mus2("volume", 0, 30)
    gml_Script_c_pannable(1)
    gml_Script_c_panspeed_wait(5, 0, 120)
    gml_Script_c_mus("free_all")
    gml_Script_c_msgside("bottom")
    gml_Script_c_var_instance(id, "set_queen_voice", 1)
    gml_Script_c_speaker("no_name")
    gml_Script_c_msgsetloc(0, "* The Knight/", "obj_ch2_scene26_slash_Step_0_gml_98_0")
    gml_Script_c_msgnextloc("* The Roaring Knight.../%", "obj_ch2_scene26_slash_Step_0_gml_99_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(id, "laser_con", 0)
    gml_Script_c_msgsetloc(0, "* Today^1, It Deigned To Create This World/%", "obj_ch2_scene26_slash_Step_0_gml_100_0")
    gml_Script_c_talk_wait()
    gml_Script_c_waitcustom()
}
if (con == 3 && obj_ch2_scene26_cityscape.cityscape_reveal && customcon == 1)
{
    con = 4
    alarm[0] = 30
    customcon = 0
    gml_Script_c_waitcustom_end()
    gml_Script_c_sel(qu)
    gml_Script_c_autowalk(0)
    gml_Script_c_walkdirect(1581, 173, 15)
    gml_Script_c_var_instance(id, "laser_con", 1)
    gml_Script_c_msgsetloc(0, "* Reaching Its Long Hand To The Sky/%", "obj_ch2_scene26_slash_Step_0_gml_101_0")
    gml_Script_c_talk_wait()
    gml_Script_c_waitcustom()
}
if (con == 5 && obj_ch2_scene26_cityscape.hand_both_reveal_finish && customcon == 1)
{
    con = 6
    alarm[0] = 30
    customcon = 0
    gml_Script_c_waitcustom_end()
    gml_Script_c_var_instance(id, "laser_con", 2)
    gml_Script_c_msgsetloc(0, "* It Coursed Its Will Into Its Blade/%", "obj_ch2_scene26_slash_Step_0_gml_102_0")
    gml_Script_c_talk_wait()
    gml_Script_c_waitcustom()
}
if (con == 7 && obj_ch2_scene26_cityscape.knife_hover && customcon == 1)
{
    con = 10
    alarm[0] = 30
    customcon = 0
    gml_Script_c_waitcustom_end()
    gml_Script_c_var_instance(id, "laser_con", 3)
    gml_Script_c_msgsetloc(0, "* And Made/%", "obj_ch2_scene26_slash_Step_0_gml_103_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(qu)
    gml_Script_c_autowalk(0)
    gml_Script_c_walkdirect(1670, 130, 15)
    gml_Script_c_msgsetloc(0, "* Thrusting The Fountain From The Earth/%", "obj_ch2_scene26_slash_Step_0_gml_104_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_msgsetloc(0, "* .../", "obj_ch2_scene26_slash_Step_0_gml_115_0")
    gml_Script_c_msgnextloc("* Unfortunately The World They Created/", "obj_ch2_scene26_slash_Step_0_gml_116_0")
    gml_Script_c_msgnextloc("* Is Trapped Within The Confines Of The Library/", "obj_ch2_scene26_slash_Step_0_gml_117_0")
    gml_Script_c_msgnextloc("* If Only We Had A Way To Make More Darkness/", "obj_ch2_scene26_slash_Step_0_gml_118_0")
    gml_Script_c_msgnextloc("* We Might Be Able To Cover The Whole World/", "obj_ch2_scene26_slash_Step_0_gml_119_0")
    gml_Script_c_msgnextloc("* .../", "obj_ch2_scene26_slash_Step_0_gml_120_0")
    gml_Script_c_msgnextloc("* That Is When I Realized/", "obj_ch2_scene26_slash_Step_0_gml_131_0")
    gml_Script_c_msgnextloc("* This Power..^1. This Power Of The Will/", "obj_ch2_scene26_slash_Step_0_gml_132_0")
    gml_Script_c_msgnextloc("* This Power Of Determination.../%", "obj_ch2_scene26_slash_Step_0_gml_133_0")
    gml_Script_c_talk()
    gml_Script_c_wait_box(1)
    gml_Script_c_var_instance(id, "laser_con", 5)
    gml_Script_c_waittalk()
    gml_Script_c_var_instance(id, "laser_con", 6)
    gml_Script_c_msgsetloc(0, "* Is This Not Something That All Lightners Possess...?/", "obj_ch2_scene26_slash_Step_0_gml_146_0")
    gml_Script_c_msgnextloc("* If One Was Simply/", "obj_ch2_scene26_slash_Step_0_gml_159_0")
    gml_Script_c_msgnextloc("* Determined Enough/%", "obj_ch2_scene26_slash_Step_0_gml_160_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(id, "laser_con", 7)
    gml_Script_c_msgsetloc(0, "* Could Not Anyone Make A Dark Fountain?/", "obj_ch2_scene26_slash_Step_0_gml_161_0")
    gml_Script_c_msgnextloc("* So Then/", "obj_ch2_scene26_slash_Step_0_gml_172_0")
    gml_Script_c_msgnextloc("* If The Knight Has Taken Its Leave/", "obj_ch2_scene26_slash_Step_0_gml_173_0")
    gml_Script_c_msgnextloc("* Then I Will Simply.../%", "obj_ch2_scene26_slash_Step_0_gml_184_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(id, "laser_con", 8)
    gml_Script_c_msgsetloc(0, "* Make A New One/%", "obj_ch2_scene26_slash_Step_0_gml_185_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_var_instance(id, "laser_con", 5)
    gml_Script_c_wait(30)
    if (gml_Script_scr_sideb_get_phase() < 2)
    {
        gml_Script_c_sel(qu)
        gml_Script_c_sprite(765)
        gml_Script_c_sel(qu_flame)
        gml_Script_c_sprite(763)
        gml_Script_c_panspeed(8, 0, 43)
        gml_Script_c_sel(qu)
        gml_Script_c_autowalk(0)
        gml_Script_c_walk_wait("r", 6, 45)
        gml_Script_c_msgzurasu(1)
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\EB* Noelle Honey Darling Sweetie Gravy/", "obj_ch2_scene26_slash_Step_0_gml_207_0")
        gml_Script_c_msgnextloc("\\E1* How Do You Find The Giant Hand?/%", "obj_ch2_scene26_slash_Step_0_gml_208_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(id, "disable_face", 1)
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "* .../%", "obj_ch2_scene26_slash_Step_0_gml_210_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(id, "enable_face", 0)
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\E1* Great And How Do You Feel About Worlddomination?/%", "obj_ch2_scene26_slash_Step_0_gml_212_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(id, "rudebuster", 1)
        gml_Script_c_wait(10)
        gml_Script_c_sel(qu_flame)
        gml_Script_c_visible(0)
        gml_Script_c_sel(qu)
        gml_Script_c_jump(2442, ((gml_Script_cameray() + view_hport[0]) + 100), 40, 30)
        gml_Script_c_wait(15)
        gml_Script_c_autodepth(0)
        gml_Script_c_depth(9500000)
        gml_Script_c_msgside("top")
        gml_Script_c_msgzurasu(0)
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\E8* Oooooo Ouchie Mama/%", "obj_ch2_scene26_slash_Step_0_gml_235_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(40)
        gml_Script_c_sel(kr)
        gml_Script_c_setxy(1700, kr_actor.y)
        gml_Script_c_walkdirect(1800, 226, 30)
        gml_Script_c_sel(su)
        gml_Script_c_setxy(1700, su_actor.y)
        gml_Script_c_walkdirect(1870, 210, 30)
        gml_Script_c_sel(ra)
        gml_Script_c_setxy(1700, ra_actor.y)
        gml_Script_c_walkdirect(1725, 214, 30)
        gml_Script_c_panspeed(-5, 0, 25)
        gml_Script_c_var_instance(queenhand, "sprite_index", 272)
        gml_Script_c_sel(no)
        gml_Script_c_visible(1)
        gml_Script_c_soundplay(159)
        gml_Script_c_autowalk(0)
        gml_Script_c_jump_sprite(2105, 210, 10, 15, 716, 712)
        gml_Script_c_wait(15)
        gml_Script_c_sprite(712)
        gml_Script_c_var_lerp_instance(queenhand, "y", queenhand.y, ((gml_Script_cameray() + view_hport[0]) + 200), 60)
        gml_Script_c_wait(30)
        gml_Script_c_sprite(715)
        gml_Script_c_msgside("bottom")
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\EN* S-Susie...^1! You..^1. you came to save me!/%", "obj_ch2_scene26_slash_Step_0_gml_277_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(no)
        gml_Script_c_sprite(714)
        gml_Script_c_halt()
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\E6* Somehow^1, I..^1. I..^1. I knew you would.../%", "obj_ch2_scene26_slash_Step_0_gml_285_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(su)
        gml_Script_c_facing("u")
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\E3* Uh^1, you did?/%", "obj_ch2_scene26_slash_Step_0_gml_292_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(no)
        gml_Script_c_sprite(215)
        gml_Script_c_halt()
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\EP* Umm^1, I mean..^1. I..^1. umm.. well.../", "obj_ch2_scene26_slash_Step_0_gml_298_0")
        gml_Script_c_msgnextloc("\\EL* .../%", "obj_ch2_scene26_slash_Step_0_gml_306_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(5)
        gml_Script_c_sel(no)
        gml_Script_c_sprite(716)
        gml_Script_c_shakeobj()
        gml_Script_c_sel(su)
        gml_Script_c_facing("r")
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\EB* W..^1. Wait^1! Wait wait wait!!/", "obj_ch2_scene26_slash_Step_0_gml_319_0")
        gml_Script_c_msgnextloc("\\EE* You need to get out of here!^1! Hurry!!/%", "obj_ch2_scene26_slash_Step_0_gml_320_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(su)
        gml_Script_c_facing("susieunhappy")
        gml_Script_c_facing("r")
        gml_Script_c_sel(ra)
        gml_Script_c_facing("ralseiunhappy")
        gml_Script_c_facing("r")
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\E6* H-huh?!/%", "obj_ch2_scene26_slash_Step_0_gml_333_0")
        gml_Script_c_talk_wait()
        gml_Script_c_mus("free_all")
        gml_Script_c_soundplay(2)
        gml_Script_c_wait(60)
        gml_Script_c_var_instance(id, "shakeloop", 1)
        gml_Script_c_var_lerp_instance(bg_cover, "image_alpha", 0, 1, 60)
        gml_Script_c_sel(ra)
        gml_Script_c_sprite(1507)
        gml_Script_c_sel(su)
        gml_Script_c_sprite(996)
        gml_Script_c_wait(60)
        gml_Script_c_mus("free_all")
        gml_Script_c_mus2("initloop", "giant_queen_appears.ogg", 0)
        gml_Script_c_sel(ra)
        gml_Script_c_facing("r")
        gml_Script_c_sel(su)
        gml_Script_c_facing("r")
        gml_Script_c_sel(no)
        gml_Script_c_facing("l")
        gml_Script_c_wait(10)
        gml_Script_c_var_instance(id, "release_queen", 1)
        gml_Script_c_wait(30)
        gml_Script_c_var_instance(id, "rockanim", 1)
        gml_Script_c_var_instance(id, "rockdog", 1)
        gml_Script_c_sel(kr)
        gml_Script_c_facing("u")
        gml_Script_c_sel(ra)
        gml_Script_c_sprite(813)
        gml_Script_c_sel(su)
        gml_Script_c_sprite(843)
        gml_Script_c_sel(no)
        gml_Script_c_sprite(736)
        gml_Script_c_wait(30)
        gml_Script_c_var_instance(id, "shakeloop", 0)
        gml_Script_c_wait(30)
        gml_Script_c_soundplay(2)
        gml_Script_c_var_instance(id, "queen_laugh_start", 1)
        gml_Script_c_shake()
        gml_Script_c_wait(62)
        gml_Script_c_var_instance(id, "queen_laugh_stop", 1)
        gml_Script_c_wait(10)
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\EC* Q..^1. Queen!?/", "obj_ch2_scene26_slash_Step_0_gml_436_0")
        gml_Script_c_facenext("queen", "B")
        gml_Script_c_msgnextloc("\\EB* Seems That You Failed To Notice/", "obj_ch2_scene26_slash_Step_0_gml_438_0")
        gml_Script_c_msgnextloc("\\E6* The Giant Freaking Robot In The Middle Of My Palace/", "obj_ch2_scene26_slash_Step_0_gml_439_0")
        gml_Script_c_facenext("noelle", "C")
        gml_Script_c_msgnextloc("\\EC* Th..^1. this isn't good..^1. she's..^1. she's invincible like this!!/", "obj_ch2_scene26_slash_Step_0_gml_441_0")
        gml_Script_c_facenext("susie", "K")
        gml_Script_c_msgnextloc("\\EK* Huh?/", "obj_ch2_scene26_slash_Step_0_gml_443_0")
        gml_Script_c_facenext("noelle", "B")
        gml_Script_c_msgnextloc("\\EB* She..^1. she's been bragging about her final form all day!!/%", "obj_ch2_scene26_slash_Step_0_gml_445_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(kr)
        gml_Script_c_facing("r")
        gml_Script_c_sel(ra)
        gml_Script_c_facing("r")
        gml_Script_c_sel(su)
        gml_Script_c_facing("r")
        gml_Script_c_sel(no)
        gml_Script_c_facing("l")
        gml_Script_c_wait(10)
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\E4* H..^1. heh.../%", "obj_ch2_scene26_slash_Step_0_gml_464_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(su)
        gml_Script_c_autowalk(0)
        gml_Script_c_sprite(43)
        gml_Script_c_imageindex(0)
        gml_Script_c_imagespeed(0.15)
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\EH* You think growing a few inches is gonna help!?/", "obj_ch2_scene26_slash_Step_0_gml_475_0")
        gml_Script_c_facenext("queen", 0)
        gml_Script_c_msgnextloc("\\EO* Yes/%", "obj_ch2_scene26_slash_Step_0_gml_477_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(10)
        gml_Script_c_sel(su)
        gml_Script_c_autowalk(1)
        gml_Script_c_facing("u")
        gml_Script_c_var_instance(queenwinehand, "visible", 1)
        gml_Script_c_var_lerp_instance(queenwinehand, "y", queenwinehand.y, 149, 15)
        gml_Script_c_var_lerp_instance(queenwinehand, "x", 1850, 1600, 15, 3, "inout")
        gml_Script_c_panspeed_wait(-5, 0, 20)
        gml_Script_c_wait(15)
        gml_Script_c_sel(su)
        gml_Script_c_facing("l")
        gml_Script_c_sel(ra)
        gml_Script_c_facing("u")
        gml_Script_c_sel(kr)
        gml_Script_c_facing("l")
        gml_Script_c_var_instance(id, "winelaser", 1)
        gml_Script_c_wait(6)
        gml_Script_c_var_instance(queenwinehand, "image_index", 1)
        gml_Script_c_soundplay(44)
        gml_Script_c_wait(15)
        gml_Script_c_wait(3)
        gml_Script_c_sel(su)
        gml_Script_c_facing("d")
        gml_Script_c_sel(ra)
        gml_Script_c_facing("r")
        gml_Script_c_sel(kr)
        gml_Script_c_facing("d")
        gml_Script_c_panspeed_wait(20, 0, 5)
        gml_Script_c_sel(su)
        gml_Script_c_facing("r")
        gml_Script_c_sel(kr)
        gml_Script_c_facing("r")
        gml_Script_c_wait(15)
        gml_Script_c_sel(ra)
        gml_Script_c_soundplay(61)
        gml_Script_c_autowalk(0)
        gml_Script_c_sprite(52)
        gml_Script_c_addxy(-35, 50)
        gml_Script_c_shakeobj()
        gml_Script_c_wait(2)
        gml_Script_c_sel(kr)
        gml_Script_c_shakeobj()
        gml_Script_c_soundplay(61)
        gml_Script_c_sprite(1412)
        gml_Script_c_wait(2)
        gml_Script_c_sel(su)
        gml_Script_c_shakeobj()
        gml_Script_c_soundplay(61)
        gml_Script_c_sprite(1444)
        gml_Script_c_wait(6)
        gml_Script_c_sel(no)
        gml_Script_c_shakeobj()
        gml_Script_c_sprite(712)
        gml_Script_c_wait(10)
        gml_Script_c_var_instance(queenwinehand, "image_index", 0)
        gml_Script_c_wait(15)
        gml_Script_c_var_lerp_instance(queenwinehand, "y", 149, queenwinehand.y, 15)
        gml_Script_c_var_lerp_instance(queenwinehand, "x", 1600, 1850, 15, 3, "inout")
        gml_Script_c_wait(20)
        gml_Script_c_var_instance(queenwinehand, "visible", 0)
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\E9* Are We Cool To Take Over The World Now/%", "obj_ch2_scene26_slash_Step_0_gml_645_0")
        gml_Script_c_talk_wait()
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\EA* S..^1. Susie..^1. let's just give up and.../%", "obj_ch2_scene26_slash_Step_0_gml_651_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(su)
        gml_Script_c_facing("r")
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\EH* Hell if we're giving up now!!/%", "obj_ch2_scene26_slash_Step_0_gml_659_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(no)
        gml_Script_c_autowalk(0)
        gml_Script_c_sprite(713)
        gml_Script_c_imageindex(0)
        gml_Script_c_wait(10)
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\EF* S..^1. Susie...?/%", "obj_ch2_scene26_slash_Step_0_gml_671_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(su)
        gml_Script_c_autowalk(0)
        gml_Script_c_sprite(43)
        gml_Script_c_imageindex(0)
        gml_Script_c_imagespeed(0.15)
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\EQ* So what if you got another form!?/", "obj_ch2_scene26_slash_Step_0_gml_682_0")
        gml_Script_c_msgnextloc("\\E5* We've got one too!!/%", "obj_ch2_scene26_slash_Step_0_gml_683_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(kr)
        gml_Script_c_facing("r")
        gml_Script_c_sel(ra)
        gml_Script_c_autowalk(1)
        gml_Script_c_facing("r")
        gml_Script_c_addxy(35, -50)
        gml_Script_c_wait(10)
        gml_Script_c_sel(su)
        gml_Script_c_autowalk(1)
        gml_Script_c_facing("l")
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\EN* Kris^1, Ralsei^1, c'mon!!/%", "obj_ch2_scene26_slash_Step_0_gml_700_0")
        gml_Script_c_talk_wait()
        gml_Script_c_delaycmd4(10, "fadeout", 20, 16777215, 0, 0)
        gml_Script_c_wait(30)
        gml_Script_c_sel(ra)
        gml_Script_c_setxy(1910, 225)
        gml_Script_c_sprite(53)
        gml_Script_c_sel(kr)
        gml_Script_c_visible(0)
        gml_Script_c_sel(su)
        gml_Script_c_sprite(59)
        gml_Script_c_setxy(1960, 210)
        gml_Script_c_wait(15)
        gml_Script_c_fadein(15)
        gml_Script_c_wait(15)
        gml_Script_c_soundplay(159)
        gml_Script_c_jump(1890, 180, 20, 15)
        gml_Script_c_wait(15)
        gml_Script_c_sprite(54)
        gml_Script_c_wait(15)
        gml_Script_c_sel(no)
        gml_Script_c_sprite(716)
        gml_Script_c_imageindex(0)
        gml_Script_c_imagespeed(0)
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\EK* Wh..^1. what are you doing!?/", "obj_ch2_scene26_slash_Step_0_gml_740_0")
        gml_Script_c_facenext("susie", 1)
        gml_Script_c_msgnextloc("\\E1* This is our ultimate.../", "obj_ch2_scene26_slash_Step_0_gml_742_0")
        gml_Script_c_msgnextloc("\\EK* Uh...^1. w-wait a sec^1, now that you mention it.../%", "obj_ch2_scene26_slash_Step_0_gml_743_0")
        gml_Script_c_talk_wait()
        gml_Script_c_facing("u")
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\EB* Oh No It Appears I Am Evenly Matched/", "obj_ch2_scene26_slash_Step_0_gml_750_0")
        gml_Script_c_msgnextloc("\\E7* I Hope You Won't Mind If I Don't Hold Back/%", "obj_ch2_scene26_slash_Step_0_gml_751_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(queenfistleft, "visible", 1)
        gml_Script_c_var_instance(queenfistleft, "depth", 1000100)
        gml_Script_c_var_lerp_instance(queenfistleft, "y", queenfistleft.y, 25, 5)
        gml_Script_c_wait(10)
        gml_Script_c_var_instance(queenfistleft, "depth", 900000)
        gml_Script_c_var_lerp_instance(queenfistleft, "y", 25, 15, 5)
        gml_Script_c_wait(5)
        gml_Script_c_var_instance(id, "fist_explode", 1)
        gml_Script_c_var_lerp_instance(queenfistleft, "y", 15, 187, 3)
        gml_Script_c_wait(3)
        gml_Script_c_soundplay(61)
        gml_Script_c_soundplay(141)
        gml_Script_c_shake()
        gml_Script_c_sel(qu)
        gml_Script_c_visible(0)
        gml_Script_c_var_instance(queenhand, "visible", 0)
        gml_Script_c_sel(no)
        gml_Script_c_sprite(716)
        gml_Script_c_sel(kr)
        gml_Script_c_setxy(1890, 220)
        gml_Script_c_visible(1)
        gml_Script_c_autowalk(0)
        gml_Script_c_jump_sprite(2023, 720, 40, 30, 536, 536)
        gml_Script_c_delaycmd(5, "sprite", 536)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_sel(ra)
        gml_Script_c_autowalk(0)
        gml_Script_c_jump_sprite(1830, 720, 40, 30, 1518, 1518)
        gml_Script_c_delaycmd(5, "sprite", 1518)
        gml_Script_c_var_instance(ra_actor, "siner_add0", 0.5)
        gml_Script_c_sel(su)
        gml_Script_c_autowalk(0)
        gml_Script_c_sprite(819)
        gml_Script_c_jump_sprite(1938, 720, 40, 30, 845, 845)
        gml_Script_c_delaycmd(5, "sprite", 845)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_var_instance(su_actor, "siner_add0", 0.5)
        gml_Script_c_var_instance(id, "wallanimstart", 1)
        gml_Script_c_var_instance(id, "rockanimstop", 1)
        gml_Script_c_var_instance(id, "rockdogstop", 1)
        gml_Script_c_panspeed(0, 25, 25)
        gml_Script_c_mus2("volume", 0, 30)
        gml_Script_c_wait(25)
        gml_Script_c_var_instance(id, "wallcon", 1)
        gml_Script_c_wait(90)
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\EU* We're falling!!/", "obj_ch2_scene26_slash_Step_0_gml_756_0")
        gml_Script_c_facenext("susie", 14)
        gml_Script_c_msgnextloc("\\EE* Any bright ideas on how we're getting out of this one?!/", "obj_ch2_scene26_slash_Step_0_gml_758_0")
        gml_Script_c_facenext("ralsei", 30)
        gml_Script_c_msgnextloc("\\EU* Um^1, we could try flapping our arms...?/%", "obj_ch2_scene26_slash_Step_0_gml_760_0")
        gml_Script_c_talk_wait()
        gml_Script_c_mus("free_all")
        gml_Script_c_msgside("top")
        gml_Script_c_var_instance(id, "disable_face", 1)
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "* Fear not!!/", "obj_ch2_scene26_slash_Step_0_gml_820_0")
        gml_Script_c_msgnextloc("* Your knight in glow in the dark armor is here!!/%", "obj_ch2_scene26_slash_Step_0_gml_821_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(id, "enable_face", 1)
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\E6* Berdly!?/%", "obj_ch2_scene26_slash_Step_0_gml_823_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(id, "berdly_coaster_start", 1)
        gml_Script_c_wait(1)
        gml_Script_c_sel(kr)
        gml_Script_c_visible(0)
        gml_Script_c_sel(ra)
        gml_Script_c_visible(0)
        gml_Script_c_sel(su)
        gml_Script_c_visible(0)
        gml_Script_c_soundplay(186)
        gml_Script_c_wait(30)
        gml_Script_c_var_instance(id, "wallcon", 2)
        gml_Script_c_var_lerp_instance(bg_cover, "image_alpha", 1, 0, 15)
        gml_Script_c_wait(30)
        gml_Script_c_mus2("initloop", "gigaqueen_pre.ogg", 0)
        gml_Script_c_speaker("berdly")
        if (global.flag[457] == 0)
            gml_Script_c_msgsetloc(0, "\\EG* Kris^1, Susie..^1. I can't do much for you like this.../", "obj_ch2_scene26_slash_Step_0_gml_846_0")
        else
            gml_Script_c_msgsetloc(0, "\\EG* Kris^1, Susie..^1. My energy is still too low to help you fight.../", "obj_ch2_scene26_slash_Step_0_gml_809_0")
        gml_Script_c_msgnextloc("\\E4* So I found help for you!^1! Behold!^1! Comrades!!/%", "obj_ch2_scene26_slash_Step_0_gml_847_0")
        gml_Script_c_talk_wait()
        gml_Script_scr_smallface(0, "rouxls", 1, "left", "bottom", gml_Script_stringsetloc("I shalt also take Credite for This", "obj_ch2_scene26_slash_Step_0_gml_850_0"))
        gml_Script_scr_miniface_init_sweet()
        gml_Script_c_speaker("no_name")
        gml_Script_c_msgsetloc(0, "\\m1		*On your quest against Queen,/", "obj_ch2_scene26_slash_Step_0_gml_855_0")
        gml_Script_c_msgnextloc("\\m3		*You've made all sorts of&	buddies, right?!/", "obj_ch2_scene26_slash_Step_0_gml_856_0")
        gml_Script_c_msgnextloc("\\m1		*Using our junk-making&	skills.../", "obj_ch2_scene26_slash_Step_0_gml_857_0")
        gml_Script_c_msgnextloc("\\m3		*We modified everyone.../", "obj_ch2_scene26_slash_Step_0_gml_858_0")
        gml_Script_c_msgnextloc("\\m2		*To work together!\\f0/%", "obj_ch2_scene26_slash_Step_0_gml_859_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(id, "berdly_coaster_leave", 1)
        gml_Script_c_wait(60)
        gml_Script_c_var_lerp_instance(whiteall, "image_alpha", 0, 1, 30)
        gml_Script_c_wait(30)
        gml_Script_c_var_instance(anime_bg, "image_alpha", 1)
        gml_Script_c_sel(su)
        gml_Script_c_visible(1)
        gml_Script_c_sprite(59)
        gml_Script_c_halt()
        gml_Script_c_setxy(1910, 720)
        gml_Script_c_autodepth(0)
        gml_Script_c_depth(90000)
        gml_Script_c_sel(ra)
        gml_Script_c_visible(1)
        gml_Script_c_sprite(53)
        gml_Script_c_halt()
        gml_Script_c_setxy(1940, 770)
        gml_Script_c_var_lerp_instance(whiteall, "image_alpha", 1, 0, 30)
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\E4* Kris!^1! Susie!^1! Behold!!/", "obj_ch2_scene26_slash_Step_0_gml_891_0")
        gml_Script_c_msgnextloc("\\EL* The ULTIMATE Group Project!!/%", "obj_ch2_scene26_slash_Step_0_gml_892_0")
        gml_Script_c_talk_wait()
        gml_Script_c_waitcustom()
    }
    else
    {
        var bigqueen = instance_find(obj_ch2_scene26_gigaqueen, 0)
        gml_Script_c_mus("free_all")
        gml_Script_c_var_instance(bigqueen, "head_x_pos", 1730)
        gml_Script_c_var_instance(bigqueen, "head_y_pos", 464)
        gml_Script_c_var_instance(bigqueen, "rem_head_y_pos", 464)
        gml_Script_c_panspeed(8, 0, 43)
        gml_Script_c_sel(qu)
        gml_Script_c_autowalk(0)
        gml_Script_c_walk_wait("r", 6, 45)
        gml_Script_c_msgsetloc(0, "* But Here I Am/", "obj_ch2_scene26_slash_Step_0_gml_849_0")
        gml_Script_c_msgnextloc("* Still Empty Handed In My Quest/", "obj_ch2_scene26_slash_Step_0_gml_850_0_b")
        gml_Script_c_msgnextloc("* Noelle Is In No Condition To Assist Me Now/", "obj_ch2_scene26_slash_Step_0_gml_851_0")
        gml_Script_c_msgnextloc("* She Must Rest/", "obj_ch2_scene26_slash_Step_0_gml_852_0")
        gml_Script_c_msgnextloc("* And Bird Boy/", "obj_ch2_scene26_slash_Step_0_gml_853_0")
        gml_Script_c_msgnextloc("* I Searched For Him For Ages But/", "obj_ch2_scene26_slash_Step_0_gml_854_0")
        gml_Script_c_msgnextloc("* My Sensors Cannot Detect Him Anywhere/", "obj_ch2_scene26_slash_Step_0_gml_855_0_b")
        gml_Script_c_msgnextloc("* .../%", "obj_ch2_scene26_slash_Step_0_gml_856_0_b")
        gml_Script_c_talk_wait()
        gml_Script_c_panspeed(-5, 0, 30)
        gml_Script_c_sel(kr)
        gml_Script_c_setxy(1600, kr_actor.y)
        gml_Script_c_walkdirect(1740, 226, 30)
        gml_Script_c_sel(su)
        gml_Script_c_setxy(1600, su_actor.y)
        gml_Script_c_walkdirect(1830, 210, 30)
        gml_Script_c_sel(ra)
        gml_Script_c_setxy(1600, ra_actor.y)
        gml_Script_c_walkdirect(1662, 214, 30)
        gml_Script_c_sel(qu)
        gml_Script_c_emote("!", 15)
        gml_Script_c_wait(15)
        gml_Script_c_sel(qu)
        gml_Script_c_sprite(1881)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_sel(qu_flame)
        gml_Script_c_sprite(764)
        gml_Script_c_wait(35)
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\E1* How Thoughtful You Two Have Come To Help Me/", "obj_ch2_scene26_slash_Step_0_gml_888_0")
        gml_Script_c_msgnextloc("\\ED* Kris^1, Susie/", "obj_ch2_scene26_slash_Step_0_gml_889_0")
        gml_Script_c_msgnextloc("\\E7* Which One Of You Wants To Be The New Knight/%", "obj_ch2_scene26_slash_Step_0_gml_890_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(su)
        gml_Script_c_sprite(230)
        gml_Script_c_addxy(-2, 55)
        gml_Script_c_shakeobj()
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\E1* Get out of our way./", "obj_ch2_scene26_slash_Step_0_gml_900_0")
        gml_Script_c_msgnextloc("\\E4* Noelle needs to wake up!/", "obj_ch2_scene26_slash_Step_0_gml_901_0")
        gml_Script_c_facenext("queen", 1)
        gml_Script_c_msgnextloc("\\E1* Wake? No^1, She Has Already Awakened Too Much/", "obj_ch2_scene26_slash_Step_0_gml_903_0")
        gml_Script_c_msgnextloc("\\ED* Let Her Close Her Eyes And Sleep Away/", "obj_ch2_scene26_slash_Step_0_gml_904_0")
        gml_Script_c_msgnextloc("\\E0* Into A Darker^1, Darker Dream/%", "obj_ch2_scene26_slash_Step_0_gml_905_0")
        gml_Script_c_talk_wait()
        gml_Script_c_soundplay(292)
        gml_Script_c_soundplay_x(154, 1, 0.5)
        gml_Script_c_sel(qu)
        gml_Script_c_sprite(759)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_walkdirect(2300, 100, 15)
        gml_Script_c_var_lerp_instance(queenhand, "y", queenhand.y, ((gml_Script_cameray() + view_hport[0]) + 200), 15)
        gml_Script_c_var_instance(id, "queen_afterimage", 1)
        gml_Script_c_wait(15)
        gml_Script_c_var_instance(id, "queen_afterimage", 0)
        gml_Script_c_wait(60)
        gml_Script_c_sel(kr)
        gml_Script_c_facing("u")
        gml_Script_c_sel(su)
        gml_Script_c_facing("u")
        gml_Script_c_addxy(2, -55)
        gml_Script_c_sel(ra)
        gml_Script_c_facing("u")
        gml_Script_c_var_instance(bigqueen, "climb", 1)
        gml_Script_c_wait(41)
        gml_Script_c_var_instance(bigqueen, "climb", 1)
        gml_Script_c_wait(41)
        gml_Script_c_var_instance(bigqueen, "climb", 1)
        gml_Script_c_wait(41)
        gml_Script_c_var_instance(bigqueen, "climb", 1)
        gml_Script_c_wait(41)
        gml_Script_c_wait(30)
        gml_Script_c_soundplay(2)
        gml_Script_c_var_instance(id, "queen_laugh_start", 1)
        gml_Script_c_shake()
        gml_Script_c_sel(ra)
        gml_Script_c_sprite(813)
        gml_Script_c_sel(su)
        gml_Script_c_sprite(843)
        gml_Script_c_wait(62)
        gml_Script_c_var_instance(id, "queen_laugh_stop", 1)
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\E1* Now^1, Which One Of You/", "obj_ch2_scene26_slash_Step_0_gml_995_0")
        gml_Script_c_msgnextloc("\\E6* Wants To Help Me Cover This World In Darkness!?/%", "obj_ch2_scene26_slash_Step_0_gml_996_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(30)
        gml_Script_c_sel(su)
        gml_Script_c_facing("u")
        gml_Script_c_sel(ra)
        gml_Script_c_facing("u")
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\EE* Queen^1, why.../", "obj_ch2_scene26_slash_Step_0_gml_1009_0")
        gml_Script_c_msgnextloc("\\EF* Why do you want to unleash the Roaring so much?!/%", "obj_ch2_scene26_slash_Step_0_gml_1010_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(30)
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\E1* What Is That/", "obj_ch2_scene26_slash_Step_0_gml_1017_0")
        gml_Script_c_facenext("ralsei", 22)
        gml_Script_c_msgnextloc("\\EM* Um..^1. the Roaring./", "obj_ch2_scene26_slash_Step_0_gml_1019_0")
        gml_Script_c_facenext("queen", 1)
        gml_Script_c_msgnextloc("\\E1* Yeah That What Is That/", "obj_ch2_scene26_slash_Step_0_gml_1021_0")
        gml_Script_c_facenext("ralsei", 5)
        gml_Script_c_msgnextloc("\\E5* If too much darkness is released.../", "obj_ch2_scene26_slash_Step_0_gml_1023_0")
        gml_Script_c_msgnextloc("\\E5* Titans will emerge from the fountain.../", "obj_ch2_scene26_slash_Step_0_gml_1024_0")
        gml_Script_c_msgnextloc("\\E5* And destroy everything./", "obj_ch2_scene26_slash_Step_0_gml_1025_0")
        gml_Script_c_msgnextloc("\\E7* All Darkners will turn into statues.../", "obj_ch2_scene26_slash_Step_0_gml_1026_0")
        gml_Script_c_msgnextloc("\\E7* And all Lightners will be lost in eternal chaos./%", "obj_ch2_scene26_slash_Step_0_gml_1027_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(30)
        gml_Script_c_soundplay(295)
        gml_Script_c_var_instance(bigqueen, "surprised", 1)
        gml_Script_c_wait(30)
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\E8* Holy Circuits Are You Serious/", "obj_ch2_scene26_slash_Step_0_gml_1039_0")
        gml_Script_c_facenext("ralsei", 21)
        gml_Script_c_msgnextloc("\\EL* You REALLY didn't know that!?/%", "obj_ch2_scene26_slash_Step_0_gml_1041_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(30)
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\EF* No/%", "obj_ch2_scene26_slash_Step_0_gml_1047_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(bigqueen, "leave", 1)
        gml_Script_c_wait(60)
        gml_Script_c_sel(qu_flame)
        gml_Script_c_stickto_stop()
        gml_Script_c_visible(0)
        gml_Script_c_sel(qu)
        gml_Script_c_setxy(2300, 165)
        gml_Script_c_sprite(3289)
        gml_Script_c_autowalk(0)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_walkdirect(2015, 165, 90)
        gml_Script_c_delaycmd(91, "imagespeed", 0)
        gml_Script_c_delaycmd(91, "imageindex", 0)
        gml_Script_c_wait(10)
        gml_Script_c_sel(kr)
        gml_Script_c_facing("r")
        gml_Script_c_sel(ra)
        gml_Script_c_facing("r")
        gml_Script_c_sel(su)
        gml_Script_c_facing("r")
        gml_Script_c_wait(120)
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\EG* Well My Plans Are Shot/", "obj_ch2_scene26_slash_Step_0_gml_1079_0")
        gml_Script_c_msgnextloc("\\EF* My One Idea To Help Noelle^1, Failed/", "obj_ch2_scene26_slash_Step_0_gml_1080_0")
        gml_Script_c_msgnextloc("\\ED* Go Ahead Kris^1, Seal The Fountain/", "obj_ch2_scene26_slash_Step_0_gml_1081_0")
        gml_Script_c_msgnextloc("\\EB* I Will Not Stay In Your Way Any Longer/%", "obj_ch2_scene26_slash_Step_0_gml_1082_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(qu)
        gml_Script_c_facing("u")
        gml_Script_c_panobj(kr_actor, 30)
        gml_Script_c_wait(35)
        gml_Script_c_var_instance(id, "make_npc_a", 1)
        gml_Script_c_pannable(0)
        gml_Script_c_actortokris()
        gml_Script_c_actortocaterpillar()
        gml_Script_c_terminatekillactors()
    }
}
if (con == 15 && (!gml_Script_d_ex()))
{
    con = 16
    customcon = 0
    gml_Script_c_waitcustom_end()
    gml_Script_c_var_lerp_instance(whiteall, "image_alpha", 0, 1, 30)
    gml_Script_scr_tempsave()
    gml_Script_c_wait(30)
}
if (con == 16 && (!gml_Script_d_ex()) && skipbattle == 1)
{
    con = 0
    global.plot = 170
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
    gml_Script_snd_free_all()
    room_goto(room_dw_mansion_top_post)
}
if (con == 16 && (!gml_Script_d_ex()) && skipbattle == 0)
{
    con = 17
    alarm[0] = 40
    global.plot = 170
}
if (con == 18)
{
    con = 19
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
    with (obj_ch2_scene26_powers_combined)
        instance_destroy()
    with (obj_power_up_fx)
        instance_destroy()
    with (obj_thrashmachine)
        instance_destroy()
    with (obj_anime_bg_controller)
        instance_destroy()
    with (obj_ch2_scene26_wall)
        instance_destroy()
    with (obj_ch2_scene26_cityscape)
        instance_destroy()
    if gml_Script_i_ex(207)
    {
        with (obj_looping_tiled_area)
            instance_destroy()
    }
    var _temp_local_var_8 = anime_bg
    instance_destroy()
}
if (con == 19 && gml_Script_i_ex(355))
{
    if gml_Script_i_ex(whiteall)
    {
        _temp_local_var_8.image_alpha = (whiteall.image_alpha - 0.1)
        var _temp_local_var_10 = -9
        var _temp_local_var_11 = whiteall
        if (whiteall.image_alpha < 0)
        {
            var _temp_local_var_12 = whiteall
            instance_destroy()
        }
    }
}
if (con == 20)
{
    con = 21
    alarm[0] = 30
    gml_Script_snd_volume(global.batmusic[1], 0, 25)
}
if (con == 22)
{
    gml_Script_snd_free(global.batmusic[0])
    gml_Script_snd_volume(global.currentsong[1], 0, 0)
    gml_Script_snd_resume(global.currentsong[1])
    gml_Script_snd_volume(global.currentsong[1], 1, 20)
    with (obj_monsterparent)
        instance_destroy()
    with (obj_bulletparent)
        instance_destroy()
    with (obj_heroparent)
        instance_destroy()
    if gml_Script_i_ex(865)
    {
        with (obj_battleback)
            destroy = 1
    }
    if gml_Script_i_ex(355)
        instance_destroy(obj_battlecontroller)
    gml_Script_scr_tempsave()
    room_goto(room_dw_mansion_top_post)
}
if (con == 11)
{
    if (gml_Script_scr_sideb_get_phase() < 2)
    {
        if (customcon == 1 && (!gml_Script_d_ex()))
        {
            con = 12
            if (power_up == -4)
            {
                power_up = gml_Script_instance_create((gml_Script_camerax() + (view_wport[0] / 2)), (gml_Script_cameray() + (view_hport[0] / 2)), obj_ch2_scene26_powers_combined)
                if gml_Script_i_ex(983)
                {
                    with (obj_ch2_scene26_cityscape)
                        auto_scroll = 0
                }
            }
        }
    }
    else if (!gml_Script_i_ex(895))
    {
        global.interact = 0
        global.facing = 0
        con = 30
        kris_active = 1
    }
}
if make_npc_a
{
    make_npc_a = 0
    queen_npc = gml_Script_instance_create(qu_actor.x, qu_actor.y, obj_npc_sign)
    queen_npc.sprite_index = qu_actor.sprite_index
    queen_npc.image_index = qu_actor.image_index
    var _temp_local_var_14 = queen_npc
    gml_Script_scr_depth()
}
if (con == 30 && (!gml_Script_d_ex()) && gml_Script_scr_sideb_get_phase() >= 2)
{
    if kris_active
    {
        if (obj_mainchara.x < 1650)
        {
            obj_mainchara.x += 8
            global.facing = 1
            global.interact = 1
            gml_Script_scr_speaker("ralsei")
            gml_Script_msgsetloc(0, "\\E2* Kris^1, the Fountain is right over there!/%", "obj_ch2_scene26_slash_Step_0_gml_1292_0_b")
            gml_Script_d_make()
            extra_con = 1
        }
        if (extra_con > 0)
        {
            extra_con++
            if (extra_con > 2 && (!gml_Script_i_ex(62)))
            {
                global.interact = 0
                extra_con = 0
            }
        }
        if (obj_mainchara.x > 2300)
        {
            kris_active = 0
            con = 31
            global.interact = 1
            queen_npc.visible = false
        }
    }
}
if (con == 31 && gml_Script_scr_sideb_get_phase() >= 2)
{
    con = 32
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    qu = 4
    qu_actor = gml_Script_instance_create(queen_npc.x, queen_npc.y, obj_actor)
    gml_Script_scr_actor_setup(qu, qu_actor, "queen")
    qu_actor.sprite_index = spr_queen_walk_up
    gml_Script_c_sel(su)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* .../%", "obj_ch2_scene26_slash_Step_0_gml_1328_0")
    gml_Script_c_talk_wait()
    gml_Script_c_walkdirect(2105, 200, 30)
    gml_Script_c_pannable(1)
    gml_Script_c_panspeed(-5, 0, 15)
    gml_Script_c_wait(10)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("l")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("l")
    gml_Script_c_wait(20)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* ..^1. Uh^1, hey. Hey^1, wait./%", "obj_ch2_scene26_slash_Step_0_gml_1349_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_facing("u")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EC* You don't have to..^1. I mean.../%", "obj_ch2_scene26_slash_Step_0_gml_1357_0_b")
    gml_Script_c_talk_wait()
    gml_Script_c_sprite(80)
    gml_Script_c_addxy(0, -6)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_wait(5)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\ED* Uh^1, it doesn't have to be..^1. goodbye^1, you know?/", "obj_ch2_scene26_slash_Step_0_gml_1368_0")
    gml_Script_c_facenext("queen", 21)
    gml_Script_c_msgnextloc("\\EL* Error: I Have No Idea What You're Talking About/%", "obj_ch2_scene26_slash_Step_0_gml_1370_0")
    gml_Script_c_talk_wait()
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("u")
    gml_Script_c_addxy(0, 6)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E3* We..^1. have our own Dark World./", "obj_ch2_scene26_slash_Step_0_gml_1379_0")
    gml_Script_c_msgnextloc("\\EA* You can stay there^1, you know?/", "obj_ch2_scene26_slash_Step_0_gml_1380_0")
    gml_Script_c_msgnextloc("\\E1* Who knows^1, maybe someday you'll even.../%", "obj_ch2_scene26_slash_Step_0_gml_1381_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("l")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* Get to meet Noelle again?/%", "obj_ch2_scene26_slash_Step_0_gml_1388_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_sel(qu)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E1* Really/%", "obj_ch2_scene26_slash_Step_0_gml_1399_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_sprite(80)
    gml_Script_c_addxy(0, -6)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_wait(5)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EK* Uhh^1, maybe?/%", "obj_ch2_scene26_slash_Step_0_gml_1411_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(qu)
    gml_Script_c_autowalk(0)
    gml_Script_c_soundplay(292)
    gml_Script_c_sprite(62)
    gml_Script_c_addxy(8, 0)
    gml_Script_c_imageindex(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\EP* Fatal Exception \"Sweet\" In Oh Hell Yeah.EXE/", "obj_ch2_scene26_slash_Step_0_gml_1424_0")
    gml_Script_c_msgnextloc("\\EQ* Susie I Knew You Were A Nice Girl/%", "obj_ch2_scene26_slash_Step_0_gml_1425_0")
    gml_Script_c_talk_wait()
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("d")
    gml_Script_c_addxy(-8, 0)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("l")
    gml_Script_c_addxy(0, 6)
    gml_Script_c_wait(15)
    gml_Script_c_facing("r")
    gml_Script_c_wait(15)
    gml_Script_c_facing("l")
    gml_Script_c_wait(15)
    gml_Script_c_facing("r")
    gml_Script_c_wait(15)
    gml_Script_c_facing("l")
    gml_Script_c_wait(15)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EG* Hey^1, uhh^1, I'm just.../%", "obj_ch2_scene26_slash_Step_0_gml_1448_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_sprite(45)
    gml_Script_c_shakeobj()
    gml_Script_c_soundplay(216)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EH* Kris^1, go seal the fountain!/%", "obj_ch2_scene26_slash_Step_0_gml_1459_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("u")
    gml_Script_c_wait(30)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* I.../%", "obj_ch2_scene26_slash_Step_0_gml_1468_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_facing("susieunhappy")
    gml_Script_c_facing("l")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E1* ..^1. I'm gonna go..^1. see Noelle before you do./%", "obj_ch2_scene26_slash_Step_0_gml_1479_0")
    gml_Script_c_talk_wait()
    gml_Script_c_walk_wait("d", 5, 6)
    gml_Script_c_walk("l", 10, 60)
    gml_Script_c_sel(qu)
    gml_Script_c_facing("r")
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect_wait(2042, 245, 30)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EQ* Umm^1, Kris^1, I'll tell Queen about our town!/%", "obj_ch2_scene26_slash_Step_0_gml_1496_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(qu)
    gml_Script_c_autowalk(0)
    gml_Script_c_soundplay(292)
    gml_Script_c_sprite(62)
    gml_Script_c_addxy(8, 0)
    gml_Script_c_imageindex(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\EN* Kris I Look Forward To Being Your Wacky Roommate/%", "obj_ch2_scene26_slash_Step_0_gml_1509_0")
    gml_Script_c_talk_wait()
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("d")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("u")
    gml_Script_c_panobj(kr_actor, 30)
    gml_Script_c_sel(qu)
    gml_Script_c_visible(0)
    gml_Script_c_var_instance(id, "make_npc_b", 1)
    gml_Script_c_wait(30)
    gml_Script_c_pannable(0)
    gml_Script_c_actortokris()
    gml_Script_c_terminatekillactors()
}
if make_npc_b
{
    make_npc_b = 0
    gml_Script_scr_losechar()
    queen_npc.x = qu_actor.x
    queen_npc.y = qu_actor.y
    queen_npc.sprite_index = qu_actor.sprite_index
    queen_npc.image_index = qu_actor.image_index
    queen_npc.visible = true
    ralsei_npc = gml_Script_instance_create(ra_actor.x, ra_actor.y, obj_npc_sign)
    ralsei_npc.sprite_index = ra_actor.sprite_index
    ralsei_npc.image_index = ra_actor.image_index
    var _temp_local_var_18 = ralsei_npc
    gml_Script_scr_depth()
}
if (con == 32 && (!gml_Script_i_ex(895)))
{
    con = 99
    global.plot = 170
    global.interact = 0
    global.facing = 0
}
if rudebuster
{
    rudebuster = 0
    rudebusteranim = gml_Script_instance_create((gml_Script_camerax() - 60), ((obj_rudebuster_bolt).room_height / 2), ralsei_npc)
    rudebusteranim.target = qu_actor
}
if winelaser
{
    _winelaser = gml_Script_instance_create(queenwinehand.x, queenwinehand.y, obj_ch2_scene26_wine_laser)
    winelaser = 0
    _winelaser.timer = -10
    _winelaser.noelle_x = (no_actor.x + (no_actor.sprite_width / 2))
}
if shakeloop
{
    if shakecon
    {
        shakecon = 0
        alarm[1] = 30
        gml_Script_snd_play(235)
        gml_Script_instance_create(0, 0, obj_shake)
    }
}
if fist_explode
{
    fist_explode = 0
    alarm[2] = 3
}
if platform_fall
{
    platform_timer++
    if (platform_timer > 15)
        platform_fall = 0
    else
    {
        platform_y += 30
        layer_y("TILES", platform_y)
        if gml_Script_i_ex(984)
        {
            with (obj_ch2_scene26_wall)
            {
                _temp_local_var_14.y_pos = (looping_coaster_top.y_pos + 30)
                _temp_local_var_12.y_pos = (looping_coaster.y_pos + 30)
                var _temp_local_var_26 = -9
                var _temp_local_var_27 = -9
                var _temp_local_var_28 = -9
                var _temp_local_var_29 = looping_coaster
                var _temp_local_var_30 = whiteall
                var _temp_local_var_31 = -9
                var _temp_local_var_32 = -9
                var _temp_local_var_33 = looping_coaster_top
            }
            if hand_shake
            {
                hand_shake = 0
                var i = 0
                while (i < 3)
                {
                    var _temp_local_var_20 = hand_platform[i]
                    gml_Script_scr_shakeobj()
                }
            }
            if hand_catch
            {
                i = 0
                while (i < 3)
                {
                    var _i = i
                    var _temp_local_var_21 = hand_platform[i]
                    y = lerp(y, (70 + (_i * 100)), 0.125)
                    if (_i == 2 && y >= 270)
                        hand_catch = 0
                }
            }
            if cityscape_fall
            {
                cityscape_fall = 0
                if gml_Script_i_ex(983)
                {
                    with (obj_ch2_scene26_cityscape)
                        auto_scroll_y = 1
                }
            }
            if disable_face
            {
                disable_face = 0
                global.fc = 0
            }
            if enable_face
            {
                enable_face = 0
                global.fc = 1
            }
            if set_queen_voice
            {
                set_queen_voice = 0
                global.typer = 62
            }
            if rockanim
            {
                layer_x("BG_rocks", gml_Script_camerax())
                gml_Script_instance_create(gml_Script_camerax(), (gml_Script_cameray() + 480), obj_ch2_scene26_rockstarter)
                layer_vspeed("BG_rocks", -5)
                layer_x("BG_Rocks_Small", gml_Script_camerax())
                var rockstart = gml_Script_instance_create(gml_Script_camerax(), (gml_Script_cameray() + 420), obj_ch2_scene26_rockstarter)
                rockstart.smallrocks = 1
                layer_vspeed("BG_Rocks_Small", -2)
                rockanim = 0
            }
            if rockdog
            {
                rockdog = 0
                rockdogobj = gml_Script_instance_create(((gml_Script___view_get(0, 0) + 545) + 12), (((gml_Script_cameray() + 6) + view_hport[0]) + 100), obj_ch2_scene26_rock_dog)
            }
            if rockdogstop
            {
                rockdogstop = 0
                instance_destroy(rockdogobj)
            }
            if rockanimstop
            {
                rockanimstop = 0
                layer_vspeed("BG_rocks", 0)
                layer_set_visible("BG_rocks", 0)
                layer_vspeed("BG_Rocks_Small", 0)
                layer_set_visible("BG_Rocks_Small", 0)
            }
            if queen_afterimage
            {
                if (qu_actor != -4)
                {
                    var _temp_local_var_24 = qu_actor
                    gml_Script_scr_afterimagefast()
                }
            }
            if wallanimstart
            {
                if (wallcon == 1)
                {
                    wallcon = 99
                    if gml_Script_i_ex(984)
                    {
                        with (obj_ch2_scene26_wall)
                            wall_con = 1
                    }
                }
                if (wallcon == 2)
                {
                    wallcon = 99
                    wallanimstart = 0
                    if gml_Script_i_ex(984)
                    {
                        with (obj_ch2_scene26_wall)
                            wall_con = 3
                    }
                    if gml_Script_i_ex(983)
                    {
                        with (obj_ch2_scene26_cityscape)
                            auto_scroll = 1
                    }
                }
            }
            if berdly_coaster_start
            {
                berdly_coaster_start = 0
                berdly_coaster = gml_Script_instance_create(gml_Script_camerax(), gml_Script_cameray(), obj_berdlycoaster_event)
            }
            if berdly_coaster_leave
            {
                berdly_coaster_leave = 0
                var _temp_local_var_25 = berdly_coaster
                con = 4
            }
            if (laser_con >= 0)
            {
                if (laser_con == 0)
                {
                    laser_con = 99
                    with (obj_ch2_scene26_cityscape)
                        show_laser_outline = 1
                }
                if (laser_con == 1)
                {
                    laser_con = 99
                    with (obj_ch2_scene26_cityscape)
                    {
                        show_hands = 1
                        hand_both_reveal = 1
                    }
                }
                if (laser_con == 2)
                {
                    laser_con = 99
                    with (obj_ch2_scene26_cityscape)
                        knife_reveal = 1
                }
                if (laser_con == 3)
                {
                    laser_con = 99
                    with (obj_ch2_scene26_cityscape)
                        knife_stab = 1
                }
                if (laser_con == 5)
                {
                    laser_con = 99
                    with (obj_ch2_scene26_cityscape)
                        fade_away = 1
                }
                if (laser_con == 6)
                {
                    laser_con = 99
                    with (obj_ch2_scene26_cityscape)
                        show_lightners = 1
                }
                if (laser_con == 7)
                {
                    laser_con = 99
                    with (obj_ch2_scene26_cityscape)
                        show_mini_fountains = 1
                }
                if (laser_con == 8)
                {
                    laser_con = 99
                    with (obj_ch2_scene26_cityscape)
                        merge_lightners = 1
                }
            }
            if release_queen
            {
                release_queen = 0
                if gml_Script_i_ex(985)
                {
                    with (obj_ch2_scene26_gigaqueen)
                        release = 1
                }
            }
            if queen_laugh_start
            {
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
            if hand_release
            {
                hand_release = 0
                if gml_Script_i_ex(987)
                {
                    with (obj_ch2_scene27_queenhand)
                    {
                        if (gml_Script_scr_sideb_get_phase() < 2)
                            release = 1
                        else
                            release_normal = 1
                    }
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
            if shake_hand
            {
                shake_hand = 0
                if gml_Script_i_ex(987)
                {
                    with (obj_ch2_scene27_queenhand)
                        gml_Script_scr_shakeobj()
                }
            }
            if queen_laugh_start
            {
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
            if queen_leave
            {
                queen_leave = 0
                if gml_Script_i_ex(985)
                {
                    with (obj_ch2_scene26_gigaqueen)
                        leave = 1
                }
            }
            if queen_leave_fast
            {
                queen_leave_fast = 0
                if gml_Script_i_ex(985)
                {
                    with (obj_ch2_scene26_gigaqueen)
                        leave_fast = 1
                }
            }
            if queen_release_fast
            {
                queen_release_fast = 0
                if gml_Script_i_ex(985)
                {
                    with (obj_ch2_scene26_gigaqueen)
                        release_fast = 1
                }
            }
        }
    }
}
if hand_shake
{
    hand_shake = 0
    var i = 0
    while (i < 3)
    {
        var _temp_local_var_20 = hand_platform[i]
        gml_Script_scr_shakeobj()
    }
}
if hand_catch
{
    i = 0
    while (i < 3)
    {
        var _i = i
        var _temp_local_var_21 = hand_platform[i]
        y = lerp(y, (70 + (_i * 100)), 0.125)
        if (_i == 2 && y >= 270)
            hand_catch = 0
    }
}
if cityscape_fall
{
    cityscape_fall = 0
    if gml_Script_i_ex(983)
    {
        with (obj_ch2_scene26_cityscape)
            auto_scroll_y = 1
    }
}
if disable_face
{
    disable_face = 0
    global.fc = 0
}
if enable_face
{
    enable_face = 0
    global.fc = 1
}
if set_queen_voice
{
    set_queen_voice = 0
    global.typer = 62
}
if rockanim
{
    layer_x("BG_rocks", gml_Script_camerax())
    gml_Script_instance_create(gml_Script_camerax(), (gml_Script_cameray() + 480), obj_ch2_scene26_rockstarter)
    layer_vspeed("BG_rocks", -5)
    layer_x("BG_Rocks_Small", gml_Script_camerax())
    var rockstart = gml_Script_instance_create(gml_Script_camerax(), (gml_Script_cameray() + 420), obj_ch2_scene26_rockstarter)
    rockstart.smallrocks = 1
    layer_vspeed("BG_Rocks_Small", -2)
    rockanim = 0
}
if rockdog
{
    rockdog = 0
    rockdogobj = gml_Script_instance_create(((gml_Script___view_get(0, 0) + 545) + 12), (((gml_Script_cameray() + 6) + view_hport[0]) + 100), obj_ch2_scene26_rock_dog)
}
if rockdogstop
{
    rockdogstop = 0
    instance_destroy(rockdogobj)
}
if rockanimstop
{
    rockanimstop = 0
    layer_vspeed("BG_rocks", 0)
    layer_set_visible("BG_rocks", 0)
    layer_vspeed("BG_Rocks_Small", 0)
    layer_set_visible("BG_Rocks_Small", 0)
}
if queen_afterimage
{
    if (qu_actor != -4)
    {
        var _temp_local_var_24 = qu_actor
        gml_Script_scr_afterimagefast()
    }
}
if wallanimstart
{
    if (wallcon == 1)
    {
        wallcon = 99
        if gml_Script_i_ex(984)
        {
            with (obj_ch2_scene26_wall)
                wall_con = 1
        }
    }
    if (wallcon == 2)
    {
        wallcon = 99
        wallanimstart = 0
        if gml_Script_i_ex(984)
        {
            with (obj_ch2_scene26_wall)
                wall_con = 3
        }
        if gml_Script_i_ex(983)
        {
            with (obj_ch2_scene26_cityscape)
                auto_scroll = 1
        }
    }
}
if berdly_coaster_start
{
    berdly_coaster_start = 0
    berdly_coaster = gml_Script_instance_create(gml_Script_camerax(), gml_Script_cameray(), obj_berdlycoaster_event)
}
if berdly_coaster_leave
{
    berdly_coaster_leave = 0
    var _temp_local_var_25 = berdly_coaster
    con = 4
}
if (laser_con >= 0)
{
    if (laser_con == 0)
    {
        laser_con = 99
        with (obj_ch2_scene26_cityscape)
            show_laser_outline = 1
    }
    if (laser_con == 1)
    {
        laser_con = 99
        with (obj_ch2_scene26_cityscape)
        {
            show_hands = 1
            hand_both_reveal = 1
        }
    }
    if (laser_con == 2)
    {
        laser_con = 99
        with (obj_ch2_scene26_cityscape)
            knife_reveal = 1
    }
    if (laser_con == 3)
    {
        laser_con = 99
        with (obj_ch2_scene26_cityscape)
            knife_stab = 1
    }
    if (laser_con == 5)
    {
        laser_con = 99
        with (obj_ch2_scene26_cityscape)
            fade_away = 1
    }
    if (laser_con == 6)
    {
        laser_con = 99
        with (obj_ch2_scene26_cityscape)
            show_lightners = 1
    }
    if (laser_con == 7)
    {
        laser_con = 99
        with (obj_ch2_scene26_cityscape)
            show_mini_fountains = 1
    }
    if (laser_con == 8)
    {
        laser_con = 99
        with (obj_ch2_scene26_cityscape)
            merge_lightners = 1
    }
}
if release_queen
{
    release_queen = 0
    if gml_Script_i_ex(985)
    {
        with (obj_ch2_scene26_gigaqueen)
            release = 1
    }
}
if queen_laugh_start
{
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
if hand_release
{
    hand_release = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
        {
            if (gml_Script_scr_sideb_get_phase() < 2)
                release = 1
            else
                release_normal = 1
        }
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
if shake_hand
{
    shake_hand = 0
    if gml_Script_i_ex(987)
    {
        with (obj_ch2_scene27_queenhand)
            gml_Script_scr_shakeobj()
    }
}
if queen_laugh_start
{
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
if queen_leave
{
    queen_leave = 0
    if gml_Script_i_ex(985)
    {
        with (obj_ch2_scene26_gigaqueen)
            leave = 1
    }
}
if queen_leave_fast
{
    queen_leave_fast = 0
    if gml_Script_i_ex(985)
    {
        with (obj_ch2_scene26_gigaqueen)
            leave_fast = 1
    }
}
if queen_release_fast
{
    queen_release_fast = 0
    if gml_Script_i_ex(985)
    {
        with (obj_ch2_scene26_gigaqueen)
            release_fast = 1
    }
}
