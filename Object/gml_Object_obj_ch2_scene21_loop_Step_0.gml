if (global.plot < 150)
{
    if (swanboat.x < 540)
        swan_shadow.x = swanboat.x
    else
    {
        if (swan_shadow.image_alpha > 0)
            swan_shadow.image_alpha -= 0.2
        actor_shadow = clamp((actor_shadow + 0.2), 0, 1)
        var shadow = actor_shadow
        if gml_Script_i_ex(890)
        {
            with (obj_actor)
                color_blend = merge_color(make_color_hsv(0, 0, 100), c_white, shadow)
        }
    }
    if (con == -1)
    {
        con = 0
        cutscene_master = gml_Script_scr_cutscene_make()
        gml_Script_scr_maincharacters_actors()
        gml_Script_c_waitcustom()
        with (obj_actor)
            color_blend = make_color_hsv(0, 0, 100)
    }
    if adjust_actors
    {
        with (obj_actor)
        {
            if (name == "kris")
            {
                x = (obj_queencar.x + 88)
                y = (obj_queencar.y + 20)
            }
            if (name == "ralsei")
            {
                x = (obj_queencar.x + 45)
                y = (obj_queencar.y + 8)
            }
        }
    }
    if (con == 0 && swanboat.x > 240)
    {
        con = 1
        global.interact = 1
        global.facing = 1
    }
    if (con == 1)
    {
        con = 10
        swanboat.pause_x_move = 1
        swanboat.pause_y_move = 1
        swanboat.pause_auto_talk = 1
        if gml_Script_i_ex(968)
        {
            with (obj_ch2_scene21_loop_vfx)
                auto_scroll_start = 1
        }
        global.interact = 1
    }
    if (con == 10)
    {
        con = 11
        customcon = 0
        gml_Script_c_waitcustom_end()
        gml_Script_c_mus2("volume", 0, 30)
        gml_Script_c_msgside("bottom")
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\EB* Kris..^1. hey^1, Kris./%", "obj_ch2_scene21_loop_slash_Step_0_gml_130_0")
        gml_Script_c_talk_wait()
        global.flag[307] = 1
        var choicetext = (global.flag[307] == 1 ? 1111 : 1113)
        gml_Script_c_msc(choicetext)
        gml_Script_c_talk_wait()
    }
    if (con == 15)
    {
        con = 25
        if (global.choice == 0)
        {
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\ED* .../%", "obj_ch2_scene21_loop_slash_Step_0_gml_149_0")
            gml_Script_c_talk_wait()
            gml_Script_c_sel(ra)
            gml_Script_c_facing("d")
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\E1* I'm happy hearing you say that^1, Kris.../%", "obj_ch2_scene21_loop_slash_Step_0_gml_157_0")
            gml_Script_c_talk_wait()
        }
        if (global.choice == 1)
        {
            gml_Script_c_sel(ra)
            gml_Script_c_facing("u")
            gml_Script_c_wait(10)
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\ED* Err^1, then^1, I^1, err -/%", "obj_ch2_scene21_loop_slash_Step_0_gml_169_0")
            gml_Script_c_talk_wait()
            gml_Script_c_facing("l")
            gml_Script_c_wait(10)
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\EU* Ah^1, s-sarcastic^1! I was just being sarcastic!/", "obj_ch2_scene21_loop_slash_Step_0_gml_177_0")
            gml_Script_c_msgnextloc("\\EQ* Haha^1, sorry about that!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_178_0")
            gml_Script_c_talk_wait()
        }
    }
    if (con == 20)
    {
        con = 25
        if (global.choice == 0 && global.flag[307] == 2)
        {
            gml_Script_c_sel(ra)
            gml_Script_c_facing("l")
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\E2* Ah^1, just as I expected^1, haha./", "obj_ch2_scene21_loop_slash_Step_0_gml_193_0")
            gml_Script_c_msgnextloc("\\E1* I feel warm..^1. thinking about how you care about her./%", "obj_ch2_scene21_loop_slash_Step_0_gml_194_0")
            gml_Script_c_talk_wait()
            gml_Script_c_facing("d")
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\E2* Kris^1, you can tell me anything anytime^1, OK?/", "obj_ch2_scene21_loop_slash_Step_0_gml_201_0")
            gml_Script_c_msgnextloc("\\E2* (...)/", "obj_ch2_scene21_loop_slash_Step_0_gml_202_0")
            gml_Script_c_msgnextloc("\\E2* (..^1. and they stopped talking...)/%", "obj_ch2_scene21_loop_slash_Step_0_gml_203_0")
            gml_Script_c_talk_wait()
        }
        if (global.choice == 0 && global.flag[307] == 3)
        {
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\E2* Ah^1, just as I expected^1, haha./", "obj_ch2_scene21_loop_slash_Step_0_gml_210_0")
            gml_Script_c_msgnextloc("\\E3* She's a nice girl^1, isn't she?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_211_0")
            gml_Script_c_talk_wait()
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\EI* Even though she doesn't understand it^1,/", "obj_ch2_scene21_loop_slash_Step_0_gml_219_0")
            gml_Script_c_msgnextloc("\\E0* It seems she's already strong at this world's magic./", "obj_ch2_scene21_loop_slash_Step_0_gml_220_0")
            gml_Script_c_msgnextloc("\\E2* I believe she can control the \"Ice\" element./", "obj_ch2_scene21_loop_slash_Step_0_gml_221_0")
            gml_Script_c_msgnextloc("\\E0* ..^1. Kris^1, if you ask her nicely^1,/", "obj_ch2_scene21_loop_slash_Step_0_gml_222_0")
            gml_Script_c_msgnextloc("\\EJ* Maybe she'll make you a popsicle^1! Haha!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_223_0")
            gml_Script_c_talk_wait()
        }
        if (global.choice == 0 && global.flag[307] == 4)
        {
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\EQ* That's^1, um...^1. That's right./", "obj_ch2_scene21_loop_slash_Step_0_gml_240_0")
            gml_Script_c_msgnextloc("\\EM* This ride^1, um..^1. it sort of looks like.../", "obj_ch2_scene21_loop_slash_Step_0_gml_241_0")
            gml_Script_c_msgnextloc("\\EJ* A bit bird-like?/", "obj_ch2_scene21_loop_slash_Step_0_gml_242_0")
            gml_Script_c_msgnextloc("\\EK* ... umm^1, what part of him are you thinking about?/", "obj_ch2_scene21_loop_slash_Step_0_gml_243_0")
            gml_Script_c_msgnextloc("\\EK* .../", "obj_ch2_scene21_loop_slash_Step_0_gml_244_0")
            gml_Script_c_msgnextloc("\\EK* (I suppose I don't mind no answer^, either...)/%", "obj_ch2_scene21_loop_slash_Step_0_gml_245_0")
            gml_Script_c_talk_wait()
        }
        if (global.choice == 1)
        {
            gml_Script_c_sel(ra)
            gml_Script_c_facing("d")
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\ED* H..^1. huh!?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_255_0")
            gml_Script_c_talk_wait()
            gml_Script_c_facing("l")
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\E1* I mean^1, I'm thinking of you too^1, of course.../%", "obj_ch2_scene21_loop_slash_Step_0_gml_261_0")
            gml_Script_c_talk_wait()
            gml_Script_c_facing("r")
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\ED* I mean^1, er -- you're right in front of me^1, but.../%", "obj_ch2_scene21_loop_slash_Step_0_gml_267_0")
            gml_Script_c_talk_wait()
        }
        if (global.choice == 2)
        {
            gml_Script_c_sel(ra)
            gml_Script_c_facing("d")
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\E1* Oh^1, err^1, sorry^1! Did I say something strange?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_278_0")
            gml_Script_c_talk_wait()
            gml_Script_c_facing("r")
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\E2* I'm happy you and Susie are friends^1, Kris./", "obj_ch2_scene21_loop_slash_Step_0_gml_285_0")
            gml_Script_c_msgnextloc("\\E3* She's a nice girl^1, isn't she...?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_286_0")
            gml_Script_c_talk_wait()
        }
    }
    if (con == 25 && (!gml_Script_d_ex()))
    {
        con = 26
        gml_Script_c_sel(ra)
        gml_Script_c_facing("r")
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\EB* When we first met^1, I.../", "obj_ch2_scene21_loop_slash_Step_0_gml_299_0")
        gml_Script_c_msgnextloc("\\EQ* I was so nervous about first impressions./", "obj_ch2_scene21_loop_slash_Step_0_gml_300_0")
        gml_Script_c_msgnextloc("\\E1* I even hid my face so you wouldn't see.../", "obj_ch2_scene21_loop_slash_Step_0_gml_301_0")
        gml_Script_c_msgnextloc("\\EQ* \"How do I even be a friend...?\"/", "obj_ch2_scene21_loop_slash_Step_0_gml_302_0")
        gml_Script_c_msgnextloc("\\EJ* All I have to do is be nice..^1. is what I thought./", "obj_ch2_scene21_loop_slash_Step_0_gml_303_0")
        gml_Script_c_msgnextloc("\\EB* But I'm starting to realize^1, being friends.../", "obj_ch2_scene21_loop_slash_Step_0_gml_304_0")
        gml_Script_c_msgnextloc("\\E2* Is more than that^1, isn't it?/", "obj_ch2_scene21_loop_slash_Step_0_gml_305_0")
        gml_Script_c_msgnextloc("\\EJ* Susie..^1. sometimes she isn't nice at all!/", "obj_ch2_scene21_loop_slash_Step_0_gml_306_0")
        gml_Script_c_msgnextloc("\\EK* She's selfish^1, she's rude^1, she's sarcastic.../", "obj_ch2_scene21_loop_slash_Step_0_gml_307_0")
        gml_Script_c_msgnextloc("\\E1* But.../", "obj_ch2_scene21_loop_slash_Step_0_gml_308_0")
        gml_Script_c_msgnextloc("\\E2* Isn't it wonderful that she's..^1. her?/", "obj_ch2_scene21_loop_slash_Step_0_gml_309_0")
        gml_Script_c_msgnextloc("\\EI* Is what I..^1. started thinking^1, today./%", "obj_ch2_scene21_loop_slash_Step_0_gml_310_0")
        gml_Script_c_talk_wait()
        gml_Script_c_msc(1115)
        gml_Script_c_talk_wait()
    }
    if (con == 28 && (!gml_Script_d_ex()))
    {
        con = 29
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\EI* .../", "obj_ch2_scene21_loop_slash_Step_0_gml_322_0")
        gml_Script_c_msgnextloc("\\EQ* I just wonder what..^1. being \"Ralsei-like\" even is...?/", "obj_ch2_scene21_loop_slash_Step_0_gml_323_0")
        gml_Script_c_msgnextloc("\\E5* .../", "obj_ch2_scene21_loop_slash_Step_0_gml_324_0")
        gml_Script_c_msgnextloc("\\E2* Sorry^1! Haha^1, I got off-track./", "obj_ch2_scene21_loop_slash_Step_0_gml_325_0")
        gml_Script_c_msgnextloc("\\EQ* Let's just enjoy the ride^1, Kris. Haha./%", "obj_ch2_scene21_loop_slash_Step_0_gml_326_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(60)
        gml_Script_c_waitcustom()
    }
    if (con == 29 && customcon == 1)
    {
        con = 200
        if gml_Script_i_ex(968)
        {
            with (obj_ch2_scene21_loop_vfx)
                auto_scroll_stop = 1
        }
    }
    if (con == 200 && obj_ch2_scene21_loop_vfx.auto_scroll_stop == 0)
    {
        con = 300
        inside_tunnel = 0
        remove_shadow = 1
        shift_islands = 1
        with (swanboat)
            gml_Script_scr_move_to_point_over_time(775, 110, 245)
        with (swan_shadow)
            gml_Script_scr_move_to_point_over_time(775, 110, 245)
    }
    if shift_islands
    {
        shift_islands_timer++
        if (shift_islands_timer >= 245)
        {
            shift_islands = 0
            shiftacid = 0
            if (!rouxls_island)
                con = 30
        }
    }
    if (con == 30)
    {
        con = 31
        global.flag[326] = 1
        layer_set_visible("TILES_Mansion_Hide_1", 1)
        layer_set_visible("TILES_Mansion_Hide_2", 1)
        rouxls_island = 1
        swanboat.pause_x_move = 1
        swanboat.pause_y_move = 1
        swanboat.pause_auto_talk = 1
        loopacid = 0
        thrash = gml_Script_instance_create(1285, 159, obj_thrashmachine)
        thrash.s = 3
        thrash.drawfeet = 0
        thrash.animate = 0
        thrash.visible = false
        thrash.depth = 835000
        thrash.draw_puddle = 1
        puddle = gml_Script_instance_create((thrash.x + 1), (thrash.y + 74), obj_marker)
        puddle.sprite_index = spr_rouxls_puddle
        puddle.image_xscale = 2
        puddle.image_yscale = 2
        puddle.depth = (thrash.depth + 1)
        puddle.image_speed = 0
        var _temp_local_var_10 = thrash
        puddle.image_index = (part[0] == 2 ? 2 : 0)
        puddle.visible = false
        var rouxls_ypos = (global.flag[221] == 3 ? (thrash.y + 45) : (thrash.y + 19))
        if (global.flag[221] == 2)
            rouxls_ypos = (thrash.y + 29)
        rouxls = gml_Script_instance_create((thrash.x - 1), rouxls_ypos, obj_ch2_rouxls_boat)
        rouxls.visible = false
        rouxls.boatfront.visible = false
        rouxls.depth = 830000
        with (obj_gradientglow)
            depth = 850000
    }
    if (con == 31)
    {
        con = 32
        customcon = 0
        gml_Script_c_waitcustom_end()
        gml_Script_c_sel(kr)
        gml_Script_c_facing("r")
        gml_Script_c_pannable(1)
        gml_Script_c_panspeed(4, 0, 50)
        gml_Script_c_msgzurasu(1)
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\EJ* W..^1. wow^1, Kris^1! Look at all those houses!/", "obj_ch2_scene21_loop_slash_Step_0_gml_435_0")
        gml_Script_c_msgnextloc("\\E2* I wonder what'll happen if we change their color!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_436_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_lerp_instance(blackall, "image_alpha", 0, 0.75, 30)
        gml_Script_c_mus2("volume", 0, 30)
        gml_Script_c_wait(15)
        gml_Script_c_waitcustom()
    }
    if (con == 32 && customcon == 1)
    {
        con = 33
        customcon = 0
        global.typer = 42
        gml_Script_scr_speaker("no_name")
        gml_Script_msgsetloc(0, "* Ge hahahaha..^1. Thoust WORMS reallyst thoughtst.../", "obj_ch2_scene21_loop_slash_Step_0_gml_454_0")
        gml_Script_msgnextloc("* Thoust had seeneth the Lastest of Me???/%", "obj_ch2_scene21_loop_slash_Step_0_gml_455_0")
        gml_Script_instance_create((gml_Script_camerax() + 80), (gml_Script_cameray() + 40), obj_writer)
        gml_Script_snd_free_all()
    }
    if release_rouxls
    {
        rouxls_appear_timer++
        if (rouxls_appear == self)
        {
            gml_Script_snd_free_all()
            gml_Script_snd_play(42)
            rouxls_appear = gml_Script_instance_create((rouxls.x - 40), (rouxls.y - 50), obj_rurus_appear)
            rouxls_appear.depth = 0
        }
        if (rouxls_appear_timer >= 60)
        {
            release_rouxls = 0
            if (!gml_Script_snd_is_playing(global.currentsong[1]))
            {
                global.currentsong[0] = gml_Script_snd_init("ruruskaado.ogg")
                global.currentsong[1] = gml_Script_mus_loop(global.currentsong[0])
            }
            if gml_Script_i_ex(rouxls_appear)
                instance_destroy(rouxls_appear)
        }
    }
    if ((con == 33 && (!gml_Script_i_ex(62))) || gml_Script_scr_cutscene_loaded())
    {
        con = 35
        gml_Script_c_waitcustom_end()
        gml_Script_c_var_lerp_instance(blackall, "image_alpha", 0.75, 0, 10)
        gml_Script_c_wait(10)
        gml_Script_c_var_instance(id, "release_rouxls", 1)
        gml_Script_c_wait(30)
        gml_Script_c_var_instance(rouxls, "visible", 1)
        gml_Script_c_var_instance(rouxls.boatfront, "visible", 1)
        gml_Script_c_var_instance(puddle, "visible", 1)
        gml_Script_c_wait(90)
        gml_Script_c_speaker("rouxls")
        gml_Script_c_msgsetloc(0, "\\E3* Chips Ahoyeth^1, Landlubbers!/", "obj_ch2_scene21_loop_slash_Step_0_gml_511_0")
        gml_Script_c_msgnextloc("\\E2* Arrrrrr-t thou ready-eth to visiteth Davith Jones' Lockre???/", "obj_ch2_scene21_loop_slash_Step_0_gml_512_0")
        gml_Script_c_facenext("ralsei", 22)
        gml_Script_c_msgnextloc("\\EM* Could..^1. Could you NOT speak with more than one accent?/", "obj_ch2_scene21_loop_slash_Step_0_gml_514_0")
        gml_Script_c_facenext("rouxls", 1)
        gml_Script_c_msgnextloc("\\E1* Yeahth^1, alright./", "obj_ch2_scene21_loop_slash_Step_0_gml_516_0")
        gml_Script_c_facenext("ralsei", 12)
        gml_Script_c_msgnextloc("\\EC* Oh^1, Mr. Rouxls^1! I just remembered^1! Lancer^1! He's not well!/", "obj_ch2_scene21_loop_slash_Step_0_gml_518_0")
        gml_Script_c_facenext("rouxls", 6)
        gml_Script_c_msgnextloc("\\E6* O dear. Didst thou^1, erm^1, tryeth Burpinge him???/", "obj_ch2_scene21_loop_slash_Step_0_gml_520_0")
        gml_Script_c_msgnextloc("\\E1* Perhapsth give him a sip of Medieval Ginger Ale??/", "obj_ch2_scene21_loop_slash_Step_0_gml_521_0")
        gml_Script_c_msgnextloc("\\E0* ..^1. Waite^1! I hath NOT time to spare on such Frivolitese!/", "obj_ch2_scene21_loop_slash_Step_0_gml_522_0")
        gml_Script_c_msgnextloc("\\E1* I must Conquere this Islande and defeast Thou!/", "obj_ch2_scene21_loop_slash_Step_0_gml_523_0")
        gml_Script_c_msgnextloc("\\E4* Then^1, giftingeth her a succulent Island Presente^1,/", "obj_ch2_scene21_loop_slash_Step_0_gml_524_0")
        gml_Script_c_msgnextloc("\\E3* The Beautious Queene shall reward ME -/", "obj_ch2_scene21_loop_slash_Step_0_gml_525_0")
        gml_Script_c_msgnextloc("\\E5* By Makingeth Me Her Left-Hand-Man!!/", "obj_ch2_scene21_loop_slash_Step_0_gml_526_0")
        gml_Script_c_msgnextloc("\\E6* Hahaha!^1! Me!^1! The ULTIMATE Minion!!/", "obj_ch2_scene21_loop_slash_Step_0_gml_527_0")
        gml_Script_c_msgnextloc("\\E2* Now^1, beholdeth^1! The forme of thoun Destroyere!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_528_0")
        gml_Script_c_talk_wait()
        gml_Script_c_soundplay(154)
        gml_Script_c_var_instance(rouxls.boatfront, "fallnow", 1)
        gml_Script_c_wait(5)
        gml_Script_c_var_instance(thrash, "visible", 1)
        gml_Script_c_wait(30)
        gml_Script_c_speaker("rouxls")
        gml_Script_c_msgsetloc(0, "\\E2* ..^1. whatevereth this Thing is!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_538_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(ra)
        gml_Script_c_sprite(1507)
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\EU* Th..^1. This again!?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_546_0")
        gml_Script_c_talk_wait()
        gml_Script_c_facing("r")
        gml_Script_c_speaker("rouxls")
        gml_Script_c_msgsetloc(0, "\\E3* Haha^1, squirming with Jealousy at my Battle Caravane!?/", "obj_ch2_scene21_loop_slash_Step_0_gml_553_0")
        gml_Script_c_msgnextloc("\\E4* 'Tis an Effigie of an Ancient God of Combate^1,/", "obj_ch2_scene21_loop_slash_Step_0_gml_554_0")
        gml_Script_c_msgnextloc("\\E6* I rescuedeth it from The King's Trash Heape^1,/", "obj_ch2_scene21_loop_slash_Step_0_gml_555_0")
        gml_Script_c_msgnextloc("\\E1* And fixedeth it up in this Worldes' Scrap Shoppe!!/", "obj_ch2_scene21_loop_slash_Step_0_gml_556_0")
        if (!duckmode)
        {
            gml_Script_c_facenext("ralsei", 22)
            gml_Script_c_msgnextloc("\\EM* It's^1, um..^1. It's actually a rejected^1, uh^1, design we made.../", "obj_ch2_scene21_loop_slash_Step_0_gml_561_0")
            gml_Script_c_facenext("rouxls", 3)
            gml_Script_c_msgnextloc("\\E3* Ha ha^1, and Soone^1, THOU shalt tasteth Rejection --/", "obj_ch2_scene21_loop_slash_Step_0_gml_563_0")
            gml_Script_c_msgnextloc("\\E1* Firsthandeth^1, in the form of varieth Bulletst!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_564_0")
            gml_Script_c_talk_wait()
        }
        else
        {
            gml_Script_c_facenext("ralsei", 22)
            gml_Script_c_msgnextloc("\\EM* Um..^1. that's..^1. just a duck./", "obj_ch2_scene21_loop_slash_Step_0_gml_569_0")
            gml_Script_c_facenext("rouxls", 5)
            gml_Script_c_msgnextloc("\\E5* .../", "obj_ch2_scene21_loop_slash_Step_0_gml_571_0")
            gml_Script_c_msgnextloc("\\E6* I knoweth what it art^1, Ruffiane!!/", "obj_ch2_scene21_loop_slash_Step_0_gml_572_0")
            gml_Script_c_msgnextloc("\\E1* Go forth!^1! My Squeakie Duckie!!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_573_0")
            gml_Script_c_talk_wait()
        }
        gml_Script_c_mus("stop")
        gml_Script_c_soundplay(164)
        gml_Script_c_var_instance(rouxls, "sprite_index", 1165)
        gml_Script_c_var_instance(rouxls, "x", (rouxls.x - 34))
        gml_Script_c_var_instance(rouxls, "y", (rouxls.y - 126))
        gml_Script_c_var_instance(rouxls, "image_speed", 0.25)
        gml_Script_c_wait(15)
        gml_Script_c_var_instance(rouxls, "image_speed", 0)
        gml_Script_c_sel(kr)
        gml_Script_c_soundplay(139)
        gml_Script_c_sprite(1420)
        gml_Script_c_autowalk(0)
        gml_Script_c_imagespeed(0.5)
        gml_Script_c_wait(12)
        gml_Script_c_var_instance(id, "swan_swap", 1)
        gml_Script_c_wait(11)
        gml_Script_c_imagespeed(0)
        gml_Script_c_waitcustom()
    }
    if (swan_swap > 0)
    {
        if (swan_swap == 1)
        {
            swan_cover = gml_Script_scr_dark_marker(swanboat.x, swanboat.y, 1182)
            swan_cover.image_index = swanboat.image_index
            swan_cover.image_speed = swanboat.image_speed
            swan_cover.depth = (kr_actor.depth - 10)
            swan_depth = swanboat.depth
            swan_swap = 2
        }
        swanboat.depth = (kr_actor.depth + 10)
    }
    if (con == 35 && customcon == 1)
    {
        con = 39
        alarm[0] = 30
        gml_Script_snd_free_all()
        rouxls.visible = false
        thrash.visible = false
        puddle.visible = false
        global.batmusic[0] = gml_Script_snd_init("rouxls_battle.ogg")
        global.specialbattle = 1
        encounterflag = 546
        global.flag[54] = encounterflag
        global.encounterno = 63
        global.flag[9] = 1
        gml_Script_scr_encountersetup(63)
        battle = gml_Script_instance_create(0, 0, obj_battlecontroller)
        battlehey = gml_Script_instance_create(0, 0, obj_rouxlsbattle_hey)
        battle_swan = gml_Script_scr_dark_marker(swanboat.x, swanboat.y, 2377)
        battle_swan.image_index = swanboat.image_index
        battle_swan.image_speed = swanboat.image_speed
        battle_swan.depth = (obj_herokris.depth + 1)
        swan_swap = 0
        swan_cover.depth = (obj_heroralsei.depth - 10)
        swanboat.depth = swan_depth
        with (obj_actor)
            visible = false
    }
    if (con == 40 && gml_Script_i_ex(355))
    {
        var battle_end = 0
        with (obj_battlecontroller)
        {
            if (intro == 2)
                battle_end = 1
        }
        if battle_end
        {
            with (battlehey)
                instance_destroy()
            con = 41
            alarm[0] = 30
            gml_Script_snd_volume(global.batmusic[1], 0, 25)
        }
    }
    if (con == 42)
    {
        con = 43
        alarm[0] = 30
        customcon = 0
        obj_mainchara.x = obj_herokris.x
        obj_mainchara.y = obj_herokris.y
        kr_actor.x = obj_herokris.x
        kr_actor.y = obj_herokris.y
        kr_actor.sprite_index = obj_herokris.sprite_index
        rouxls.sprite_index = spr_rouxls_stone_origin
        rouxls.image_index = 0
        rouxls.x += 34
        rouxls.y += 126
        instance_destroy(battle_swan)
        instance_destroy(swan_cover)
        with (obj_actor)
            visible = true
        with (obj_thrashmachine)
        {
            if (visible == true)
                instance_destroy()
            else
                visible = true
        }
        with (obj_marker)
        {
            if (sprite_index == spr_rouxls_puddle && visible == true)
                instance_destroy()
        }
        rouxls.visible = true
        thrash.visible = true
        puddle.visible = true
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
        if gml_Script_i_ex(355)
            instance_destroy(obj_battlecontroller)
    }
    if rouxls_power_up
    {
        rouxls_power_up = 0
        if (!gml_Script_i_ex(40))
        {
            d = gml_Script_scr_following_afterimage(40, rouxls)
            d.depth -= 1
        }
    }
    if rouxls_power_up_cancel
    {
        rouxls_power_up_cancel = 0
        if gml_Script_i_ex(40)
            instance_destroy(obj_power_up_fx_rouxls)
    }
    if (con == 44 && (!gml_Script_i_ex(355)))
    {
        con = 49
        alarm[0] = 30
        customcon = 0
        gml_Script_c_waitcustom_end()
        if (global.flag[435] >= 2)
        {
            if (global.flag[435] == 2)
            {
                gml_Script_c_speaker("rouxls")
                gml_Script_c_msgsetloc(0, "\\E2* Ah...^1. Ahh^1, ha ha ha...!/", "obj_ch2_scene21_loop_slash_Step_0_gml_730_0")
                gml_Script_c_msgnextloc("\\E6* So thou hast triumphed.../", "obj_ch2_scene21_loop_slash_Step_0_gml_731_0")
            }
            else
            {
                gml_Script_c_speaker("rouxls")
                gml_Script_c_msgsetloc(0, "\\E2* Ah...^1. Ahh^1, ha ha ha...!/", "obj_ch2_scene21_loop_slash_Step_0_gml_749_0")
                gml_Script_c_msgnextloc("\\E0* So we hath an EQUAL number of houses!/", "obj_ch2_scene21_loop_slash_Step_0_gml_750_0")
                gml_Script_c_msgnextloc("\\E4* I suppose thou THINKETH^1, that MEANSETH.../", "obj_ch2_scene21_loop_slash_Step_0_gml_751_0")
                gml_Script_c_msgnextloc("\\E2* Thou have matched my Abilitiese!/", "obj_ch2_scene21_loop_slash_Step_0_gml_752_0")
                gml_Script_c_facenext("ralsei", 20)
                gml_Script_c_msgnextloc("\\EK* (What abilities?)/", "obj_ch2_scene21_loop_slash_Step_0_gml_754_0")
                gml_Script_c_facenext("rouxls", 5)
            }
            if (!duckmode)
            {
                gml_Script_c_msgnextloc("\\E5* NOT!^1! You have only seen but One-Percentile of my Weapon's Abilities!!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_736_0")
                gml_Script_c_talk_wait()
            }
            else
            {
                gml_Script_c_msgnextloc("\\E5* NOT!^1! That plump duck art not but The Appetizemente!/", "obj_ch2_scene21_loop_slash_Step_0_gml_740_0")
                gml_Script_c_msgnextloc("\\E1* Watch!^1! Watch your growing and huge Destructione!!!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_741_0")
                gml_Script_c_talk_wait()
            }
        }
        else
        {
            gml_Script_c_speaker("rouxls")
            gml_Script_c_msgsetloc(0, "\\E2* Finally^1, I've WON!^1! GEHAHAHAHA!!/", "obj_ch2_scene21_loop_slash_Step_0_gml_774_0")
            gml_Script_c_msgnextloc("\\E5* How doth it feeleth^1, WORMS!?/", "obj_ch2_scene21_loop_slash_Step_0_gml_775_0")
            gml_Script_c_msgnextloc("\\E3* To be bestedeth^1, by the Beste?/", "obj_ch2_scene21_loop_slash_Step_0_gml_776_0")
            gml_Script_c_msgnextloc("\\E4* To be laid LOWE^1, by the Duke of Puzzles?!/", "obj_ch2_scene21_loop_slash_Step_0_gml_777_0")
            gml_Script_c_msgnextloc("\\E5* Ahaha..^1. HAHAHAHAHA!!!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_778_0_b")
            gml_Script_c_talk_wait()
            gml_Script_c_wait(30)
            gml_Script_c_sel(ra)
            gml_Script_c_facing("d")
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\EK* Er^1, um.../", "obj_ch2_scene21_loop_slash_Step_0_gml_787_0")
            gml_Script_c_msgnextloc("\\EJ* So^1, um^1, what happens now?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_788_0")
            gml_Script_c_talk_wait()
            gml_Script_c_facing("r")
            gml_Script_c_mus("pause")
            gml_Script_c_wait(60)
            gml_Script_c_speaker("rouxls")
            gml_Script_c_msgsetloc(0, "\\E1* What?/", "obj_ch2_scene21_loop_slash_Step_0_gml_796_0")
            gml_Script_c_facenext("ralsei", 19)
            gml_Script_c_msgnextloc("\\EJ* Umm^1, you had more houses..^1. so.../", "obj_ch2_scene21_loop_slash_Step_0_gml_798_0")
            gml_Script_c_msgnextloc("\\EK* What..^1. does that even do?/", "obj_ch2_scene21_loop_slash_Step_0_gml_799_0_b")
            gml_Script_c_facenext("rouxls", 3)
            gml_Script_c_msgnextloc("\\E3* Hahaha^1! Gladeth thou asked!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_801_0")
            gml_Script_c_talk_wait()
            gml_Script_c_wait(60)
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\EX* You don't have any plan^1, do you./%", "obj_ch2_scene21_loop_slash_Step_0_gml_807_0")
            gml_Script_c_talk_wait()
            gml_Script_c_mus("resume")
            gml_Script_c_speaker("rouxls")
            gml_Script_c_msgsetloc(0, "\\E1* SHUTTETH YON UPPETH!/", "obj_ch2_scene21_loop_slash_Step_0_gml_813_0_b")
            gml_Script_c_msgnextloc("\\E5* And BEHOLD..^1. My TRUETH POWER!!!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_814_0")
            gml_Script_c_talk_wait()
        }
        gml_Script_c_sel(ra)
        gml_Script_c_sprite(1507)
        gml_Script_c_wait(10)
        gml_Script_c_var_instance(id, "rouxls_power_up", 1)
        gml_Script_c_mus2("loopsfx", 130, 0)
        gml_Script_c_mus2("loopsfxvolume", 0, 0)
        gml_Script_c_mus2("loopsfxvolume", 0.7, 30)
        gml_Script_c_mus2("loopsfxpitch", 0, 0)
        gml_Script_c_mus2("loopsfxpitchtime", 0.9, 30)
        gml_Script_c_wait(15)
        gml_Script_c_speaker("rouxls")
        gml_Script_c_msgsetloc(0, "\\E2* Geh ha ha ha ha!!!/", "obj_ch2_scene21_loop_slash_Step_0_gml_757_0")
        gml_Script_c_msgnextloc("\\E1* Beholde^1, Worms...!!/", "obj_ch2_scene21_loop_slash_Step_0_gml_758_0")
        gml_Script_c_msgnextloc("\\E5* The REALE Power of Rouxls Kaard...!!!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_759_0")
        gml_Script_c_wait(15)
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(rouxls, "fallnow", 1)
        gml_Script_c_wait(15)
        gml_Script_c_wait(30)
        gml_Script_c_mus("stop")
        gml_Script_c_mus("loopsfxstop")
        gml_Script_c_var_instance(id, "rouxls_power_up_cancel", 1)
        gml_Script_c_var_instance(rouxls, "con", 1)
        gml_Script_c_wait(45)
        gml_Script_c_msgside("bottom")
        gml_Script_c_speaker("rouxls")
        gml_Script_c_msgsetloc(0, "\\E5* GOD/%", "obj_ch2_scene21_loop_slash_Step_0_gml_778_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(rouxls, "con", 2)
        gml_Script_c_var_instance(rouxls, "timer", 0)
        gml_Script_c_wait(30)
        gml_Script_c_sel(ra)
        gml_Script_c_facing("r")
        gml_Script_c_wait(10)
        gml_Script_c_wait(40)
        gml_Script_c_soundplay(188)
        gml_Script_c_var_instance(id, "explosion", 1)
        gml_Script_c_var_instance(simcity, "flyaway", 1)
        gml_Script_c_wait(60)
        gml_Script_c_speaker("rouxls")
        gml_Script_c_msgsetloc(0, "\\E5* DAMMIT/%", "obj_ch2_scene21_loop_slash_Step_0_gml_799_0")
        gml_Script_c_talk_wait()
        gml_Script_c_panspeed(-5, 0, 20)
        gml_Script_c_wait(20)
        gml_Script_c_sel(kr)
        gml_Script_c_facing("l")
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\EK* Ah.../", "obj_ch2_scene21_loop_slash_Step_0_gml_811_0")
        gml_Script_c_msgnextloc("\\EM* That's right^1, Rouxls isn't compatible with this world^1, either./", "obj_ch2_scene21_loop_slash_Step_0_gml_812_0")
        gml_Script_c_msgnextloc("\\EJ* Well^1, let's go^1, Kris./%", "obj_ch2_scene21_loop_slash_Step_0_gml_813_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(thrash, "depth", 100)
        gml_Script_c_var_instance(puddle, "depth", 110)
        gml_Script_c_facing("r")
        gml_Script_c_panobj(kr_actor, 15)
        gml_Script_c_wait(16)
        gml_Script_c_pannable(0)
        gml_Script_c_actortokris()
        gml_Script_c_actortocaterpillar()
        gml_Script_c_terminatekillactors()
    }
    if (con == 50 && (!gml_Script_i_ex(895)))
    {
        con = 51
        alarm[0] = 20
        rouxls.depth = 10000
        adjust_actors = 0
        with (swanboat)
            gml_Script_scr_move_to_point_over_time(800, 100, 20)
    }
    if (con == 52)
    {
        con = 53
        alarm[0] = 30
        swanboat.pause_x_move = 0
    }
    if (con == 54 && swanboat.x >= 1244)
    {
        con = 55
        alarm[0] = 20
        swanboat.pause_x_move = 1
        with (swanboat)
            gml_Script_scr_move_to_point_over_time(1284, 140, 20)
    }
    if (con == 56)
    {
        con = 57
        swanboat.pause_x_move = 0
    }
    if (con == 57 && swanboat.x >= 1745)
    {
        con = 99
        take_photo = 1
        swanboat.pause_x_move = 1
        swanboat.pause_y_move = 1
        swanboat.con = 99
        swanboat.active = false
        with (obj_caterpillarchara)
            visible = false
        cutscene_master = gml_Script_scr_cutscene_make()
        gml_Script_scr_maincharacters_actors()
    }
    if take_photo
    {
        if (photocon == 0)
        {
            photocon = -1
            gml_Script_c_msc(1117)
            gml_Script_c_talk_wait()
        }
        if (photocon == 1)
        {
            photocon = 10
            global.flag[325] = 4
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\EQ* That's OK^1, Kris^1! Let's keep going./%", "obj_ch2_scene21_loop_slash_Step_0_gml_879_0")
            gml_Script_c_talk_wait()
        }
        if (photocon == 2)
        {
            photocon = 10
            global.flag[325] = 1
            gml_Script_c_sel(kr)
            gml_Script_c_facing("l")
            gml_Script_c_walk_wait("l", 3, 10)
            gml_Script_c_autowalk(0)
            gml_Script_c_sprite(873)
            gml_Script_c_imageindex(0)
            gml_Script_c_imagespeed(0.15)
            gml_Script_c_wait(20)
            gml_Script_c_imagespeed(0)
            gml_Script_c_sel(ra)
            gml_Script_c_autowalk(0)
            gml_Script_c_sprite(797)
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\ED* K..^1. Kris!?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_905_0")
            gml_Script_c_talk_wait()
            gml_Script_c_var_instance(whiteall, "x", gml_Script_camerax())
            gml_Script_c_var_instance(whiteall, "y", 0)
            gml_Script_c_var_lerp_instance(whiteall, "image_alpha", 0, 1, 5)
            gml_Script_c_soundplay(203)
            gml_Script_c_wait(10)
            gml_Script_c_var_lerp_instance(whiteall, "image_alpha", 1, 0, 5)
            gml_Script_c_wait(60)
            gml_Script_c_sel(kr)
            gml_Script_c_facing("l")
            gml_Script_c_wait(10)
            gml_Script_c_walk_wait("r", 3, 10)
            gml_Script_c_wait(30)
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\ED* D..^1. did it r-really take a picture of that!?/", "obj_ch2_scene21_loop_slash_Step_0_gml_927_0")
            gml_Script_c_msgnextloc("\\E1* Umm^1, l..^1. let's keep going!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_928_0")
            gml_Script_c_talk_wait()
            gml_Script_c_sel(ra)
            gml_Script_c_autowalk(1)
            gml_Script_c_facing("r")
        }
        if (photocon == 3)
        {
            photocon = 10
            global.flag[325] = 2
            gml_Script_c_sel(kr)
            gml_Script_c_sprite(874)
            gml_Script_c_sel(ra)
            gml_Script_c_autowalk(0)
            gml_Script_c_sprite(801)
            gml_Script_c_imageindex(2)
            gml_Script_c_imagespeed(0)
            gml_Script_c_wait(15)
            gml_Script_c_var_instance(whiteall, "x", gml_Script_camerax())
            gml_Script_c_var_instance(whiteall, "y", 0)
            gml_Script_c_var_lerp_instance(whiteall, "image_alpha", 0, 1, 5)
            gml_Script_c_soundplay(203)
            gml_Script_c_wait(10)
            gml_Script_c_var_lerp_instance(whiteall, "image_alpha", 1, 0, 5)
            gml_Script_c_wait(60)
            gml_Script_c_sel(kr)
            gml_Script_c_facing("r")
            gml_Script_c_sel(ra)
            gml_Script_c_autowalk(1)
            gml_Script_c_facing("r")
            gml_Script_c_wait(30)
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\E2* I bet it must have been a wonderful picture.../", "obj_ch2_scene21_loop_slash_Step_0_gml_975_0")
            gml_Script_c_msgnextloc("\\EU* What? ... We were facing the wrong way?!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_976_0")
            gml_Script_c_talk_wait()
        }
        if (photocon == 4)
        {
            photocon = 10
            global.flag[325] = 3
            gml_Script_c_sel(kr)
            gml_Script_c_facing("u")
            gml_Script_c_sel(ra)
            gml_Script_c_facing("u")
            gml_Script_c_wait(10)
            gml_Script_c_sel(kr)
            gml_Script_c_sprite(875)
            gml_Script_c_sel(ra)
            gml_Script_c_sprite(1507)
            gml_Script_c_shakeobj()
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\EL* K-Kris!?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_1005_0")
            gml_Script_c_talk_wait()
            gml_Script_c_wait(15)
            gml_Script_c_var_instance(whiteall, "x", gml_Script_camerax())
            gml_Script_c_var_instance(whiteall, "y", 0)
            gml_Script_c_var_lerp_instance(whiteall, "image_alpha", 0, 1, 5)
            gml_Script_c_soundplay(203)
            gml_Script_c_wait(10)
            gml_Script_c_var_lerp_instance(whiteall, "image_alpha", 1, 0, 5)
            gml_Script_c_wait(60)
            gml_Script_c_sel(kr)
            gml_Script_c_facing("u")
            gml_Script_c_wait(5)
            gml_Script_c_facing("r")
            gml_Script_c_wait(30)
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\EU* D..^1. did it r-really take a picture of that!?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_1029_0")
            gml_Script_c_talk_wait()
            gml_Script_c_sel(ra)
            gml_Script_c_facing("r")
            gml_Script_c_speaker("ralsei")
            gml_Script_c_msgsetloc(0, "\\EK* Umm^1, l..^1. let's keep going!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_1038_0")
            gml_Script_c_talk_wait()
        }
        if (photocon == 10 && (!gml_Script_d_ex()))
        {
            take_photo = 0
            photocon = -1
            con = 58
            gml_Script_c_actortokris()
            gml_Script_c_actortocaterpillar()
            gml_Script_c_terminatekillactors()
        }
    }
    if (con == 58 && (!gml_Script_i_ex(895)))
    {
        con = 59
        alarm[0] = 60
        swanboat.pause_x_move = 0
        swanboat.pause_y_move = 1
        swanboat.con = 1
    }
    if (con == 60)
    {
        con = 61
        alarm[0] = 30
        gml_Script_scr_speaker("rouxls")
        gml_Script_msgsetloc(0, "\\E1* ART THOU JUST GOING TO LEAVETH ME HERE!?/", "obj_ch2_scene21_loop_slash_Step_0_gml_1212_0")
        gml_Script_msgnextloc("\\E6* THOU AREN'T EVEN GOING TO SHOWETH ME THE PICTURE!?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_1213_0")
        d = gml_Script_d_make()
        d.zurasu = 1
    }
    if ((!swanboat.pause_x_move) && swanboat.x >= 2280)
    {
        swanboat.pause_x_move = 1
        swanboat.pause_y_move = 1
        with (swanboat)
            gml_Script_scr_move_to_point_over_time(2525, 175, 80)
    }
    if (con == 62 && swanboat.x >= 2525 && (!gml_Script_d_ex()))
    {
        con = 63
        alarm[0] = 30
        global.flag[326] = 0
        swanboat.con = 99
        swanboat.active = false
        swanboat.pause_x_move = 1
        cutscene_master = gml_Script_scr_cutscene_make()
        gml_Script_scr_maincharacters_actors()
        gml_Script_c_wait(10)
        gml_Script_c_sel(kr)
        gml_Script_c_autowalk(1)
        gml_Script_c_walk("r", 5, 40)
        gml_Script_c_sel(ra)
        gml_Script_c_autowalk(1)
        gml_Script_c_walk_wait("r", 5, 40)
        gml_Script_c_pannable(1)
        gml_Script_c_panobj(kr_actor, 30)
        gml_Script_c_wait(10)
        gml_Script_c_msgzurasu(1)
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\E2* ..^1. that was a nice boatride^1, wasn't it^1, Kris?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_1106_0")
        gml_Script_c_talk_wait()
        gml_Script_c_pannable(0)
        gml_Script_c_actortokris()
        gml_Script_c_actortocaterpillar()
        gml_Script_c_terminatekillactors()
    }
    if (con == 64 && (!gml_Script_i_ex(895)))
    {
        con = 65
        global.interact = 0
        global.facing = 0
        global.plot = 150
        swanboat.con = 99
        swanboat.active = false
        with (obj_mainchara)
            fun = false
        with (obj_caterpillarchara)
        {
            follow = 1
            fun = false
        }
        var swanboat_npc = gml_Script_instance_create(swanboat.x, swanboat.y, obj_npc_room_animated)
        swanboat_npc.sprite_index = spr_swanboat
        swanboat_npc.image_speed = 0.15
        with (swanboat_npc)
            gml_Script_scr_depth()
        with (swanboat)
            instance_destroy()
        var collider_right = gml_Script_instance_create(2670, 278, obj_solidblock)
        collider_right.image_yscale = 10
    }
    if (remove_island_obj && (!gml_Script_d_ex()))
    {
        remove_island_obj = 0
        set_flags_complete = 1
        with (obj_queencar_talktrigger)
            instance_destroy()
    }
    if explosion
    {
        explodetimer++
        if (explodetimer == 1)
        {
            explosion_marker = gml_Script_instance_create(1090, 170, obj_marker)
            explosion_marker.sprite_index = spr_realisticexplosion
            explosion_marker.image_xscale = 2
            explosion_marker.image_yscale = 2
            with (explosion_marker)
                gml_Script_scr_depth()
            finish_thrash = 1
            with (thrash)
            {
                direction = 90
                speed = 10
                gravity = 0.1
                launch = 1
                drawfeet = 1
            }
        }
        else
        {
            var finish = 0
            with (obj_marker)
            {
                if (sprite_index == spr_realisticexplosion && image_index >= 16)
                {
                    finish = 1
                    instance_destroy()
                }
            }
            if finish
            {
                explosion = 0
                explodetimer = 0
            }
        }
        if (explodetimer == 5)
        {
            layer_set_visible("TILES_Island_Path", 0)
            layer_set_visible("TILES_Island_Path_Animated", 0)
        }
    }
    if finish_thrash
    {
        with (thrash)
        {
            xx += 15
            launch = 1
        }
        with (puddle)
            x += 15
        if (thrash.xx > ((gml_Script_camerax() + view_wport[0]) + 200))
        {
            finish_thrash = 0
            with (thrash)
                instance_destroy()
            with (puddle)
                instance_destroy()
        }
    }
}
