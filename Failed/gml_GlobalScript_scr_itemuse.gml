w = argument0
usable = false
replaceable = 0
if (global.charselect < 3)
    _gc = global.char[global.charselect]
suspos = -1
ralpos = -1
noepos = -1
for (i = 0; i < 3; i += 1)
{
    if (global.char[i] == 2)
        suspos = i
    if (global.char[i] == 3)
        ralpos = i
    if (global.char[i] == 4)
        noepos = i
}
switch argument0
{
    case obj_sneo_friedpipis:
        itemnameb = " "
        itemdescb = "---"
        break
    case obj_pipis_bullet_cone:
        gml_Script_scr_healitem(global.charselect, 40)
        usable = true
        if (_gc == 2)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Yeahh!! That's good!", "scr_itemuse_slash_scr_itemuse_gml_31_0"))
        if (_gc == 3)
        {
            if gml_Script_scr_havechar(2)
                gml_Script_scr_itemcomment(suspos, gml_Script_stringsetloc("Hey, feed ME!!!", "scr_itemuse_slash_scr_itemuse_gml_36_0"))
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Yummy!!! Marshmallows!!", "scr_itemuse_slash_scr_itemuse_gml_38_0"))
        }
        if (_gc == 4)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Oh, it's... sticky?", "scr_itemuse_slash_scr_itemuse_gml_42_0"))
        break
    case obj_84_lang_helper:
        reviveamt = ceil((global.maxhp[global.char[global.charselect]] / 2))
        gml_Script_scr_healitem(global.charselect, reviveamt)
        usable = true
        if (_gc == 2)
        {
            if gml_Script_scr_havechar("susie")
                gml_Script_scr_itemcomment(suspos, gml_Script_stringsetloc("I'm ALIVE!!!", "scr_itemuse_slash_scr_itemuse_gml_54_0"))
            if gml_Script_scr_havechar("ralsei")
                gml_Script_scr_itemcomment(ralpos, gml_Script_stringsetloc("(You weren't dead)", "scr_itemuse_slash_scr_itemuse_gml_55_0"))
        }
        if (_gc == 3)
        {
            if gml_Script_scr_havechar("susie")
                gml_Script_scr_itemcomment(suspos, gml_Script_stringsetloc("(Don't look it)", "scr_itemuse_slash_scr_itemuse_gml_60_0"))
            if gml_Script_scr_havechar("ralsei")
                gml_Script_scr_itemcomment(ralpos, gml_Script_stringsetloc("Ah, I'm refreshed!", "scr_itemuse_slash_scr_itemuse_gml_61_0"))
        }
        if (_gc == 4)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Mints? I love mints!", "scr_itemuse_slash_scr_itemuse_gml_65_0"))
        break
    case obj_afterimage_anim:
        global.interact = 6
        with (obj_darkcontroller)
            charcon = 0
        global.menuno = -1
        charcon = 0
        global.fc = 0
        global.fe = 0
        global.typer = 6
        global.msg[0] = gml_Script_stringsetloc("* (You tried to read the manual^1, but it was so dense it made your head spin...)/%", "scr_itemuse_slash_scr_itemuse_gml_82_0")
        gml_Script_instance_create(0, 0, obj_dialoguer)
        break
    case obj_ch2_scene26_henshin_flash:
        gml_Script_scr_healitem(global.charselect, 20)
        usable = true
        break
    case obj_spamtonpainting:
        gml_Script_scr_healitem_all(160)
        if gml_Script_scr_havechar(2)
            gml_Script_scr_itemcomment(suspos, gml_Script_stringsetloc("Mmm, seconds!", "scr_itemuse_slash_scr_itemuse_gml_94_0"))
        if gml_Script_scr_havechar(3)
            gml_Script_scr_itemcomment(ralpos, gml_Script_stringsetloc("Whoops.", "scr_itemuse_slash_scr_itemuse_gml_95_0"))
        if gml_Script_scr_havechar(4)
            gml_Script_scr_itemcomment(noepos, gml_Script_stringsetloc("Happy birthday! Haha!", "scr_itemuse_slash_scr_itemuse_gml_96_0"))
        usable = true
        break
    case obj_growtangle_spark:
        if (global.chapter == 1)
            gml_Script_scr_healitem_all(80)
        if (global.chapter == 2)
            gml_Script_scr_healitem_all(140)
        if gml_Script_scr_havechar(2)
            gml_Script_scr_itemcomment(suspos, gml_Script_stringsetloc("I'm dizzy.", "scr_itemuse_slash_scr_itemuse_gml_110_0"))
        if gml_Script_scr_havechar(3)
            gml_Script_scr_itemcomment(ralpos, gml_Script_stringsetloc("Mmm, thank you!", "scr_itemuse_slash_scr_itemuse_gml_111_0"))
        if gml_Script_scr_havechar(4)
            gml_Script_scr_itemcomment(noepos, gml_Script_stringsetloc("My eyes are spinning...", "scr_itemuse_slash_scr_itemuse_gml_112_0"))
        usable = true
        break
    case obj_mettaton_bomb_hitbox:
        _healchoice = 70
        usable = true
        if (global.char[global.charselect] == 2)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Cooked to perfection!", "scr_itemuse_slash_scr_itemuse_gml_123_0"))
        if (global.char[global.charselect] == 3)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("A bit burnt...?", "scr_itemuse_slash_scr_itemuse_gml_127_0"))
        if (global.char[global.charselect] == 4)
        {
            _healchoice = 20
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("I-is this real meat...?", "scr_itemuse_slash_scr_itemuse_gml_132_0"))
        }
        gml_Script_scr_healitem(global.charselect, _healchoice)
        break
    case obj_dw_city_mice3Fence:
        gml_Script_scr_healitem(global.charselect, 1)
        usable = true
        if (global.char[global.charselect] == 2)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Mmm... face", "scr_itemuse_slash_scr_itemuse_gml_143_0"))
        if (global.char[global.charselect] == 3)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("(uncomfortable)", "scr_itemuse_slash_scr_itemuse_gml_147_0"))
        if (global.char[global.charselect] == 4)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Umm, what is this? It's cute...", "scr_itemuse_slash_scr_itemuse_gml_151_0"))
        break
    case obj_gigaqueen_intro_fight:
        _healchoice = 4
        usable = true
        if (global.char[global.charselect] == 2)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Why this!?", "scr_itemuse_slash_scr_itemuse_gml_161_0"))
        if (global.char[global.charselect] == 3)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Let's be healthy!", "scr_itemuse_slash_scr_itemuse_gml_165_0"))
        if (global.char[global.charselect] == 4)
        {
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Something to graze on!", "scr_itemuse_slash_scr_itemuse_gml_169_0"))
            _healchoice = 90
        }
        gml_Script_scr_healitem(global.charselect, _healchoice)
        break
    case obj_berdlyb_tornado_old:
        gml_Script_scr_healitem_all(70)
        if gml_Script_scr_havechar(2)
            gml_Script_scr_itemcomment(suspos, gml_Script_stringsetloc("Quit hogging!", "scr_itemuse_slash_scr_itemuse_gml_177_0"))
        if gml_Script_scr_havechar(3)
            gml_Script_scr_itemcomment(ralpos, gml_Script_stringsetloc("(It's cut evenly...)", "scr_itemuse_slash_scr_itemuse_gml_178_0"))
        if gml_Script_scr_havechar(4)
            gml_Script_scr_itemcomment(noepos, gml_Script_stringsetloc("(Kris took two thirds of it...)", "scr_itemuse_slash_scr_itemuse_gml_179_0"))
        usable = true
        break
    case obj_magicalglass:
        usable = true
        if (global.char[global.charselect] == 1)
            gml_Script_scr_healitem(global.charselect, 20)
        if (global.char[global.charselect] == 2)
        {
            gml_Script_scr_healitem(global.charselect, 80)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Mmm, blood!", "scr_itemuse_slash_scr_itemuse_gml_193_0"))
        }
        if (global.char[global.charselect] == 3)
        {
            gml_Script_scr_healitem(global.charselect, 50)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Aah, sticky...", "scr_itemuse_slash_scr_itemuse_gml_198_0"))
        }
        if (global.char[global.charselect] == 4)
        {
            gml_Script_scr_healitem(global.charselect, 30)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Mmm... what!? It's blood!?", "scr_itemuse_slash_scr_itemuse_gml_203_0"))
        }
        break
    case obj_intro_ch2:
        usable = true
        if (global.char[global.charselect] == 1)
            gml_Script_scr_healitem(global.charselect, 80)
        if (global.char[global.charselect] == 2)
        {
            gml_Script_scr_healitem(global.charselect, 20)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("THAT'S it?", "scr_itemuse_slash_scr_itemuse_gml_217_0"))
        }
        if (global.char[global.charselect] == 3)
        {
            gml_Script_scr_healitem(global.charselect, 50)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Aww, thanks, Kris!", "scr_itemuse_slash_scr_itemuse_gml_222_0"))
        }
        if (global.char[global.charselect] == 4)
        {
            gml_Script_scr_healitem(0, 35)
            gml_Script_scr_healitem(global.charselect, 35)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Umm, it's ok, Kris, I'll share...", "scr_itemuse_slash_scr_itemuse_gml_229_0"))
        }
        break
    case obj_sneo_wireheart_old:
        usable = true
        gml_Script_scr_healitem(global.charselect, 500)
        if (global.char[global.charselect] == 2)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("(It's SO good!)", "scr_itemuse_slash_scr_itemuse_gml_239_0"))
        if (global.char[global.charselect] == 3)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("K-Kris!? I...", "scr_itemuse_slash_scr_itemuse_gml_243_0"))
        if (global.char[global.charselect] == 4)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("(Huh? I didn't know Kris liked this flavor.)", "scr_itemuse_slash_scr_itemuse_gml_247_0"))
        break
    case obj_flowerking:
        gml_Script_scr_healitem(global.charselect, 50)
        usable = true
        if (global.char[global.charselect] == 2)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Cool, it's wriggling.", "scr_itemuse_slash_scr_itemuse_gml_257_0"))
        if (global.char[global.charselect] == 3)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Yum, is this spaghetti?", "scr_itemuse_slash_scr_itemuse_gml_261_0"))
        if (global.char[global.charselect] == 4)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Tastes like... jumprope?", "scr_itemuse_slash_scr_itemuse_gml_265_0"))
        break
    case obj_sprite_hunter:
        gml_Script_scr_healitem(global.charselect, 80)
        usable = true
        if (_gc == 1)
            gml_Script_snd_play(87)
        if (_gc == 2)
        {
            gml_Script_snd_play(90)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("It's got crunch.", "scr_itemuse_slash_scr_itemuse_gml_275_0"))
        }
        if (_gc == 3)
        {
            gml_Script_snd_play(89)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("How elegant!", "scr_itemuse_slash_scr_itemuse_gml_279_0"))
        }
        if (_gc == 4)
        {
            gml_Script_snd_play(88)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("What a nice song...", "scr_itemuse_slash_scr_itemuse_gml_283_0"))
        }
        break
    case obj_mazepipis:
        gml_Script_scr_speaker("noone")
        gml_Script_msgsetloc(0, "* (The clothes are stuck to the doll...)/", "scr_itemuse_slash_scr_itemuse_gml_290_0")
        gml_Script_msgnextloc("* (There's no way you can use this.)/%", "scr_itemuse_slash_scr_itemuse_gml_291_0")
        gml_Script_scr_itemdialoguer()
        break
    case obj_sneo_wireheart_edit:
        usable = true
        _healamount = gml_Script_scr_teaamount(1, global.char[global.charselect])
        if (global.char[global.charselect] == 1)
        {
            if gml_Script_scr_havechar(2)
                gml_Script_scr_itemcomment(suspos, gml_Script_stringsetloc("(No reaction?)", "scr_itemuse_slash_scr_itemuse_gml_303_0"))
            if gml_Script_scr_havechar(4)
                gml_Script_scr_itemcomment(noepos, gml_Script_stringsetloc("(... no reaction?)", "scr_itemuse_slash_scr_itemuse_gml_304_0"))
        }
        if (global.char[global.charselect] == 2)
        {
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Hell yeah, apple juice!!", "scr_itemuse_slash_scr_itemuse_gml_309_0"))
            if gml_Script_scr_havechar(3)
                gml_Script_scr_itemcomment(ralpos, gml_Script_stringsetloc("Don't drink so fast!!", "scr_itemuse_slash_scr_itemuse_gml_310_0"))
        }
        if (global.char[global.charselect] == 3)
        {
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Tastes like blueberries!", "scr_itemuse_slash_scr_itemuse_gml_315_0"))
            if gml_Script_scr_havechar(2)
                gml_Script_scr_itemcomment(suspos, gml_Script_stringsetloc("Huh? Really?", "scr_itemuse_slash_scr_itemuse_gml_316_0"))
        }
        if (global.char[global.charselect] == 4)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Tastes like cinnamon! (What is this aftertaste...?)", "scr_itemuse_slash_scr_itemuse_gml_320_0"))
        gml_Script_scr_healitem(global.charselect, _healamount)
        break
    case obj_tutorial_puzboy:
        usable = true
        _healamount = gml_Script_scr_teaamount(4, global.char[global.charselect])
        if (global.char[global.charselect] == 1)
        {
            if gml_Script_scr_havechar(2)
                gml_Script_scr_itemcomment(suspos, gml_Script_stringsetloc("(... do they like it?)", "scr_itemuse_slash_scr_itemuse_gml_332_0"))
            if gml_Script_scr_havechar(3)
                gml_Script_scr_itemcomment(ralpos, gml_Script_stringsetloc("(They're drinking it...)", "scr_itemuse_slash_scr_itemuse_gml_333_0"))
            if gml_Script_scr_havechar(4)
                gml_Script_scr_itemcomment(noepos, gml_Script_stringsetloc("(Umm, do they like it or not...?)", "scr_itemuse_slash_scr_itemuse_gml_334_0"))
        }
        if (global.char[global.charselect] == 2)
        {
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Hell yeah, eggnog!!", "scr_itemuse_slash_scr_itemuse_gml_339_0"))
            if gml_Script_scr_havechar(3)
                gml_Script_scr_itemcomment(ralpos, gml_Script_stringsetloc("D-don't drink so fast!", "scr_itemuse_slash_scr_itemuse_gml_340_0"))
        }
        if (global.char[global.charselect] == 3)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("It's soft and sweet.", "scr_itemuse_slash_scr_itemuse_gml_345_0"))
        if (global.char[global.charselect] == 4)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("... this is just water! You're pranking me, right?!", "scr_itemuse_slash_scr_itemuse_gml_349_0"))
        gml_Script_scr_healitem(global.charselect, _healamount)
        break
    case obj_fountainkris_ch2_sideb:
        usable = true
        _healamount = gml_Script_scr_teaamount(3, global.char[global.charselect])
        if (global.char[global.charselect] == 1)
        {
            if gml_Script_scr_havechar(2)
                gml_Script_scr_itemcomment(suspos, gml_Script_stringsetloc("(No reaction?)", "scr_itemuse_slash_scr_itemuse_gml_361_0"))
            if gml_Script_scr_havechar(3)
                gml_Script_scr_itemcomment(ralpos, gml_Script_stringsetloc("(I'm happy!)", "scr_itemuse_slash_scr_itemuse_gml_362_0"))
        }
        if (global.char[global.charselect] == 2)
        {
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Hey, it's like marshmallows!!", "scr_itemuse_slash_scr_itemuse_gml_367_0"))
            if gml_Script_scr_havechar(3)
                gml_Script_scr_itemcomment(ralpos, gml_Script_stringsetloc("D-don't drink so fast!", "scr_itemuse_slash_scr_itemuse_gml_368_0"))
        }
        if (global.char[global.charselect] == 3)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Um... isn't this water?", "scr_itemuse_slash_scr_itemuse_gml_373_0"))
        if (global.char[global.charselect] == 4)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("There's nothing in here!", "scr_itemuse_slash_scr_itemuse_gml_377_0"))
        gml_Script_scr_healitem(global.charselect, _healamount)
        break
    case obj_debug_ballooner:
        usable = true
        _healamount = gml_Script_scr_teaamount(2, global.char[global.charselect])
        if (global.char[global.charselect] == 1)
        {
            if gml_Script_scr_havechar("susie")
                gml_Script_scr_itemcomment(suspos, gml_Script_stringsetloc("STOP LOOKING AT ME!", "scr_itemuse_slash_scr_itemuse_gml_389_0"))
            if gml_Script_scr_havechar("ralsei")
                gml_Script_scr_itemcomment(ralpos, gml_Script_stringsetloc("(They seem into it)", "scr_itemuse_slash_scr_itemuse_gml_390_0"))
        }
        if (global.char[global.charselect] == 2)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("... this is tea?", "scr_itemuse_slash_scr_itemuse_gml_395_0"))
        if (global.char[global.charselect] == 3)
        {
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("It's grape juice!", "scr_itemuse_slash_scr_itemuse_gml_400_0"))
            if gml_Script_scr_havechar("susie")
                gml_Script_scr_itemcomment(suspos, gml_Script_stringsetloc("Huh, really?", "scr_itemuse_slash_scr_itemuse_gml_401_0"))
        }
        if (global.char[global.charselect] == 4)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("(Wonder if they sell this in gallons?)", "scr_itemuse_slash_scr_itemuse_gml_405_0"))
        gml_Script_scr_healitem(global.charselect, _healamount)
        break
    case obj_sneo_rotatingwall_pipis:
        _healchoice = 60
        usable = true
        replaceable = 8
        if (global.char[global.charselect] == 2)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("C'mon, gimme the rest!", "scr_itemuse_slash_scr_itemuse_gml_418_0"))
        if (global.char[global.charselect] == 3)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("M-maybe give Susie the rest?", "scr_itemuse_slash_scr_itemuse_gml_422_0"))
        if (global.char[global.charselect] == 4)
        {
            _healchoice = 20
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Th... there's MORE!?", "scr_itemuse_slash_scr_itemuse_gml_427_0"))
        }
        gml_Script_scr_healitem(global.charselect, _healchoice)
        break
    case obj_tasque_manager_tempsave:
        gml_Script_scr_healitem(global.charselect, 120)
        usable = true
        if (global.char[global.charselect] == 2)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Hey, this rules!", "scr_itemuse_slash_scr_itemuse_gml_438_0"))
        if (global.char[global.charselect] == 3)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Nice and chalky.", "scr_itemuse_slash_scr_itemuse_gml_442_0"))
        if (global.char[global.charselect] == 4)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("(I-isn't this the chalk I gave her?)", "scr_itemuse_slash_scr_itemuse_gml_446_0"))
        break
    case obj_tm_quiz_result:
        gml_Script_scr_healitem(global.charselect, 100)
        usable = true
        if (global.char[global.charselect] == 2)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Hell'd you call this!?", "scr_itemuse_slash_scr_itemuse_gml_456_0"))
        if (global.char[global.charselect] == 3)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("I made this.", "scr_itemuse_slash_scr_itemuse_gml_460_0"))
        if (global.char[global.charselect] == 4)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("B-Brainfreeze! ... kidding!", "scr_itemuse_slash_scr_itemuse_gml_464_0"))
        break
    case obj_power_up_fx_rouxls_backup:
        gml_Script_scr_healitem_all(30)
        usable = true
        if gml_Script_scr_havechar(2)
            gml_Script_scr_itemcomment(suspos, gml_Script_stringsetloc("I'm NOT wearing it.", "scr_itemuse_slash_scr_itemuse_gml_472_0"))
        if gml_Script_scr_havechar(3)
            gml_Script_scr_itemcomment(ralpos, gml_Script_stringsetloc("How sweet!", "scr_itemuse_slash_scr_itemuse_gml_473_0"))
        if gml_Script_scr_havechar(4)
            gml_Script_scr_itemcomment(noepos, gml_Script_stringsetloc("Reminds me of one of my sweaters.", "scr_itemuse_slash_scr_itemuse_gml_474_0"))
        break
    case obj_ch2_scene11a_fountain:
        usable = true
        var heal_amount = 90
        if (global.char[global.charselect] == 1)
            heal_amount = 100
        if (global.char[global.charselect] == 2)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("It says GUTS!", "scr_itemuse_slash_scr_itemuse_gml_487_0"))
        if (global.char[global.charselect] == 3)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("It says Fluffy...", "scr_itemuse_slash_scr_itemuse_gml_491_0"))
        if (global.char[global.charselect] == 4)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("I... I can't read these symbols...", "scr_itemuse_slash_scr_itemuse_gml_495_0"))
        gml_Script_scr_healitem(global.charselect, heal_amount)
        break
    case obj_debug_drawInput:
        usable = false
        gml_Script_scr_speaker("noone")
        global.msg[0] = gml_Script_stringsetloc("* (You felt tense.)/", "scr_itemuse_slash_scr_itemuse_gml_504_0")
        global.msg[1] = gml_Script_stringsetloc("* (... try using it in battle.)/%", "scr_itemuse_slash_scr_itemuse_gml_505_0")
        gml_Script_scr_itemdialoguer()
        break
    case obj_sneo_weird_end_pipis_bullet:
        usable = false
        gml_Script_scr_speaker("noone")
        global.msg[0] = gml_Script_stringsetloc("* (You felt tense.)/", "scr_itemuse_slash_scr_itemuse_gml_512_0")
        global.msg[1] = gml_Script_stringsetloc("* (... try using it in battle.)/%", "scr_itemuse_slash_scr_itemuse_gml_513_0")
        gml_Script_scr_itemdialoguer()
        break
    case obj_debug_smallfacetester:
        usable = false
        gml_Script_scr_speaker("noone")
        global.msg[0] = gml_Script_stringsetloc("* (You felt tense.)/", "scr_itemuse_slash_scr_itemuse_gml_520_0")
        global.msg[1] = gml_Script_stringsetloc("* (... try using it in battle.)/%", "scr_itemuse_slash_scr_itemuse_gml_521_0")
        gml_Script_scr_itemdialoguer()
        break
    case obj_sneo_heart_biter_bullet:
        usable = true
        gml_Script_scr_healitem_all(10)
        if gml_Script_scr_havechar(2)
            gml_Script_scr_itemcomment(suspos, gml_Script_stringsetloc("Don't throw dust at me!", "scr_itemuse_slash_scr_itemuse_gml_529_0"))
        if gml_Script_scr_havechar(3)
            gml_Script_scr_itemcomment(ralpos, gml_Script_stringsetloc("It's minty!", "scr_itemuse_slash_scr_itemuse_gml_530_0"))
        if gml_Script_scr_havechar(4)
            gml_Script_scr_itemcomment(noepos, gml_Script_stringsetloc("What are you sprinkling?", "scr_itemuse_slash_scr_itemuse_gml_531_0"))
        break
    case obj_sneo_weird_end_pipis:
        usable = true
        gml_Script_scr_healitem_all(50)
        if gml_Script_scr_havechar(2)
            gml_Script_scr_itemcomment(suspos, gml_Script_stringsetloc("Don't throw mints at me!", "scr_itemuse_slash_scr_itemuse_gml_538_0"))
        if gml_Script_scr_havechar(3)
            gml_Script_scr_itemcomment(ralpos, gml_Script_stringsetloc("It's minty!", "scr_itemuse_slash_scr_itemuse_gml_539_0"))
        if gml_Script_scr_havechar(4)
            gml_Script_scr_itemcomment(noepos, gml_Script_stringsetloc("What are you throwing?", "scr_itemuse_slash_scr_itemuse_gml_540_0"))
        break
    case obj_CHAPTER_SELECT:
        if (global.char[global.charselect] != 4)
        {
            global.hp[_gc] = max((global.hp[_gc] - 20), 1)
            gml_Script_snd_play(170)
        }
        usable = true
        if (global.char[global.charselect] == 2)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Ugh! ...tastes good?", "scr_itemuse_slash_scr_itemuse_gml_553_0"))
        if (global.char[global.charselect] == 3)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("Ow... er, thanks, Kris!", "scr_itemuse_slash_scr_itemuse_gml_557_0"))
        if (global.char[global.charselect] == 4)
            gml_Script_scr_itemcomment(global.charselect, gml_Script_stringsetloc("(I'll... just pretend to drink it...)", "scr_itemuse_slash_scr_itemuse_gml_561_0"))
        break
    case obj_viroarrow:
        usable = false
        gml_Script_scr_speaker("noone")
        global.msg[0] = gml_Script_stringsetloc("* (Where'd this come from?)/%", "scr_itemuse_slash_scr_itemuse_gml_575_0")
        gml_Script_scr_itemdialoguer()
        break
    case obj_queenmansion_bg:
        break
    case obj_caradventure_car:
        with (obj_darkcontroller)
            charcon = 0
        global.menuno = -1
        charcon = 0
        global.fc = 0
        global.fe = 0
        global.typer = 6
        gml_Script_snd_play_x(53, 0.7, 1)
        global.msg[0] = gml_Script_stringsetloc("* (You tried to call on the Cell Phone.)", "scr_itemuse_slash_scr_itemuse_gml_426_0")
        gml_Script_instance_create(0, 0, obj_dialoguer)
        gml_Script_instance_create(0, 0, obj_darkphone_event)
        global.interact = 1
        break
    case obj_caradventure_car_enemy:
        gml_Script_snd_play(55)
        gml_Script_scr_speaker("noone")
        global.msg[0] = gml_Script_stringsetloc("* (You used the Egg.)/%", "scr_itemuse_slash_scr_itemuse_gml_441_0")
        gml_Script_scr_itemdialoguer()
        break
    case obj_sprite_part_parallax_inverted:
        if (null.room == room_dw_mansion_krisroom)
        {
            if instance_exists(obj_ch2_scene17b)
            {
                with (obj_darkcontroller)
                    charcon = 0
                global.menuno = -1
                with (obj_ch2_scene17b)
                    con = 10
            }
        }
        else if (gml_Script_scr_sideb_get_phase() < 3 || global.plot >= 200)
        {
            if (global.plot >= 90 && global.plot < 99)
            {
                with (obj_lancer_mixtape)
                    instance_destroy()
                gml_Script_instance_create(0, 0, obj_lancer_mixtape)
            }
            else
            {
                gml_Script_snd_stop(40)
                gml_Script_snd_play(40)
            }
        }
        else
        {
            gml_Script_snd_stop(201)
            gml_Script_snd_play(201)
        }
        break
    case 313:
        if (global.flag[952] == 0)
        {
            global.flag[952] = 1
            gml_Script_scr_speaker("no_name")
            gml_Script_msgsetloc(0, "* You held the crystal up to your eye./", "scr_itemuse_slash_scr_itemuse_gml_616_0")
            gml_Script_msgnextloc("* For some strange reason^1, for just a brief moment.../", "scr_itemuse_slash_scr_itemuse_gml_617_0")
            gml_Script_msgnextloc("* You thought you saw the computer lab./", "scr_itemuse_slash_scr_itemuse_gml_618_0")
            gml_Script_msgnextloc("* ...but^1, it must've just been your imagination./%", "scr_itemuse_slash_scr_itemuse_gml_619_0")
        }
        else if (global.flag[950] == 0)
        {
            global.flag[950] = 1
            gml_Script_scr_speaker("no_name")
            gml_Script_msgsetloc(0, "* You held the crystal up to your eye./", "scr_itemuse_slash_scr_itemuse_gml_624_0")
            gml_Script_msgnextloc("* ..^1. but nothing happened./%", "scr_itemuse_slash_scr_itemuse_gml_625_0")
        }
        else
        {
            gml_Script_scr_speaker("no_name")
            gml_Script_msgsetloc(0, "* It doesn't seem very useful./%", "scr_itemuse_slash_scr_itemuse_gml_629_0")
        }
        gml_Script_scr_itemdialoguer()
        break
}

return;
