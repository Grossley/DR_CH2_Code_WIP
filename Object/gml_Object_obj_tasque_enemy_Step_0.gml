if (global.monster[myself] == true)
{
    if (gml_Script_scr_isphase("enemytalk") && talked == false)
    {
        gml_Script_scr_randomtarget()
        if (!instance_exists(obj_darkener))
            gml_Script_instance_create(0, 0, obj_darkener)
        global.typer = 50
        rr = choose(0, 1, 2, 3)
        if (rr == 0)
            gml_Script_msgsetloc(0, "meowowme&owowmeow", "obj_tasque_enemy_slash_Step_0_gml_16_0")
        if (rr == 1)
            gml_Script_msgsetloc(0, "meowowme&meowmeow", "obj_tasque_enemy_slash_Step_0_gml_17_0")
        if (rr == 2)
            gml_Script_msgsetloc(0, "meowowme&owowowow", "obj_tasque_enemy_slash_Step_0_gml_18_0")
        if (rr == 3)
            gml_Script_msgsetloc(0, "meowowow&meowowow", "obj_tasque_enemy_slash_Step_0_gml_19_0")
        if petted
        {
            petted = 0
            gml_Script_msgsetloc(0, "owowowmememeowme&owmemeowowmemeow&owmeowmemeowmeow", "obj_tasque_enemy_slash_Step_0_gml_24_0")
        }
        gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
        talked = true
        talktimer = 0
    }
    if (talked == true && gml_Script_scr_isphase("enemytalk"))
    {
        rtimer = 0
        gml_Script_scr_blconskip(15)
        if gml_Script_scr_isphase("bullets")
        {
            if (!instance_exists(obj_moveheart))
                gml_Script_scr_moveheart()
            if (!instance_exists(obj_growtangle))
                gml_Script_instance_create((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), obj_growtangle)
        }
    }
    if (gml_Script_scr_isphase("bullets") && attacked == false)
    {
        if (rtimer == 0)
            rr = choose(0, 1)
        rtimer += 1
        if (rtimer == 15)
        {
            if (rr == 0)
            {
                global.monsterattackname[myself] = "YarnBalls"
                dc = gml_Script_scr_bulletspawner(x, y, obj_dbulletcontroller)
                dc.type = 2
                dc.element = 6
            }
            else if (rr > 0)
            {
                global.monsterattackname[myself] = "MeowWow"
                dc = gml_Script_scr_bulletspawner(x, y, obj_dbulletcontroller)
                dc.type = 3
                dc.element = 6
                if (rr == 2)
                    dc.difficulty = 1
            }
            gml_Script_scr_turntimer(140)
            turns += 1
            global.typer = 6
            global.fc = 0
            if (global.monsterstatus[myself] == true)
                global.battlemsg[0] = gml_Script_stringsetloc("* Tasque is beeping dangerously.", "obj_tasque_enemy_slash_Step_0_gml_89_0")
            else if (global.mercymod[myself] >= global.mercymax[myself])
                global.battlemsg[0] = gml_Script_stringsetloc("* Tasque is emitting an 8-bit purr.", "obj_tasque_enemy_slash_Step_0_gml_92_0")
            else
            {
                rr = choose(0, 1, 2, 3, 4)
                if (rr == 0)
                    global.battlemsg[0] = gml_Script_stringsetloc("* Tasque is batting a ball of low-poly yarn.", "obj_tasque_enemy_slash_Step_0_gml_96_0")
                if (rr == 1)
                {
                    var maxmin = (choose(0, 1) == 0 ? gml_Script_stringsetloc("minimized", "obj_tasque_enemy_slash_Step_0_gml_99_0") : gml_Script_stringsetloc("maximized", "obj_tasque_enemy_slash_Step_0_gml_99_1"))
                    global.battlemsg[0] = gml_Script_stringsetsubloc("* Tasque is meowing to be ~1.", maxmin, "obj_tasque_enemy_slash_Step_0_gml_100_0")
                }
                if (rr == 2)
                    global.battlemsg[0] = gml_Script_stringsetloc("* Tasque cleans with a sawtooth tongue.", "obj_tasque_enemy_slash_Step_0_gml_102_0")
                if (rr == 3)
                    global.battlemsg[0] = gml_Script_stringsetloc("* Tasque wags its tail in a sine wave.", "obj_tasque_enemy_slash_Step_0_gml_103_0")
                if (rr == 4)
                    global.battlemsg[0] = gml_Script_stringsetloc("* Smells like plastic cartridge.", "obj_tasque_enemy_slash_Step_0_gml_104_0")
            }
            attacked = true
        }
        else
            gml_Script_scr_turntimer(120)
    }
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == true && actcon == 0)
    {
        actcon = 1
        gml_Script_msgsetloc(0, "* TASQUE - This stray cat is in need of some management./%", "obj_tasque_enemy_slash_Step_0_gml_126_0")
        gml_Script_scr_battletext_default()
    }
    if (acting == 2 && actcon == 0)
    {
        petted = 1
        var simultext = (simultotal == 1 ? gml_Script_stringsetloc("* You pet Tasque. It liked that./%", "obj_tasque_enemy_slash_Step_0_gml_133_0") : gml_Script_stringsetloc("* You pet Tasque!/%", "obj_tasque_enemy_slash_Step_0_gml_133_1"))
        gml_Script_msgset(0, simultext)
        if (global.mercymod[myself] < global.mercymax[myself])
            gml_Script_scr_mercyadd(myself, 100)
        gml_Script_scr_simultext("kris")
        actcon = (simulorderkri == 0 ? 20 : -1)
    }
    if (acting == 3 && actcon == 0)
    {
        if (!gml_Script_scr_havechar(4))
        {
            sact_count++
            if (sact_count == 1)
                gml_Script_scr_smallface(0, "ralsei", 20, "right", "middle", gml_Script_stringsetloc("It's just a cat...", "obj_tasque_enemy_slash_Step_0_gml_150_0"))
            var sentenceEnd = (sact_count == 1 ? "/" : "/%")
            gml_Script_msgsetsubloc(0, "* Susie roared!! The enemies became TIRED.~1", sentenceEnd, "obj_tasque_enemy_slash_Step_0_gml_155_0")
            gml_Script_snd_play(snd_sussurprise)
            if (sact_count == 1)
            {
                gml_Script_scr_anyface_next("susie", 2)
                gml_Script_msgnextloc("\\E2* Who's king of the jungle now!?\\f0/%", "obj_tasque_enemy_slash_Step_0_gml_160_0")
            }
            with (obj_monsterparent)
            {
                if (global.monsterstatus[myself] != true)
                    gml_Script_scr_monster_make_tired(myself)
            }
            gml_Script_scr_battletext_default()
            actcon = 1
        }
        else
        {
            nact_count++
            sentenceEnd = (nact_count == 1 ? "/" : "/%")
            gml_Script_msgsetsubloc(0, "* You and Noelle pet the enemies!~1", sentenceEnd, "obj_tasque_enemy_slash_Step_0_gml_177_0")
            if (nact_count == 1)
            {
                gml_Script_scr_anyface_next("noelle", 4)
                gml_Script_msgnextloc("\\E4* Th-there^1, there..^1. (It's not too different from Catti...)/%", "obj_tasque_enemy_slash_Step_0_gml_182_0")
            }
            with (obj_monsterparent)
            {
                if (global.mercymod[myself] < global.mercymax[myself])
                    gml_Script_scr_mercyadd(myself, 100)
            }
            gml_Script_scr_battletext_default()
            actcon = 1
        }
    }
    if (acting == 4 && actcon == 0)
    {
        ract_count++
        if (ract_count == 1)
            gml_Script_scr_smallface(0, "susie", 12, "middle", "bottom", gml_Script_stringsetloc("Isn't that just how he normally talks?", "obj_tasque_enemy_slash_Step_0_gml_203_0"))
        sentenceEnd = (ract_count == 1 ? "/" : "/%")
        gml_Script_msgsetsubloc(0, "* Ralsei talked in a soft voice to the enemies!~1", sentenceEnd, "obj_tasque_enemy_slash_Step_0_gml_207_0")
        if (ract_count == 1)
        {
            gml_Script_scr_anyface_next("ralsei", 2)
            gml_Script_msgnextloc("\\E2* There^1, there^1, it's okay^1, little kitty...\\f0/%", "obj_tasque_enemy_slash_Step_0_gml_212_0")
        }
        with (obj_monsterparent)
        {
            if (global.mercymod[myself] < global.mercymax[myself])
            {
                if (global.monstertype[myself] == 32)
                    gml_Script_scr_mercyadd(myself, 100)
                else if (global.monstertype[myself] == 42)
                    gml_Script_scr_mercyadd(myself, 5)
                else
                    gml_Script_scr_mercyadd(myself, 50)
            }
        }
        gml_Script_scr_battletext_default()
        actcon = 1
    }
    if (actingsus == true && actconsus == 1)
    {
        simultext = (simultotal == 1 ? gml_Script_stringsetloc("* Susie yelled at Tasque to get off her lawn./%", "obj_tasque_enemy_slash_Step_0_gml_228_0") : gml_Script_stringsetloc("* Susie roared like a lion!/%", "obj_tasque_enemy_slash_Step_0_gml_228_1"))
        gml_Script_msgset(0, simultext)
        if (global.mercymod[myself] < global.mercymax[myself])
            gml_Script_scr_mercyadd(myself, 50)
        gml_Script_scr_simultext("susie")
        actconsus = (simulordersus == 0 ? 20 : 0)
    }
    if (actingral == true && actconral == 1)
    {
        simultext = (simultotal == 1 ? gml_Script_stringsetloc("* Ralsei cooed gently at Tasque!/%", "obj_tasque_enemy_slash_Step_0_gml_240_0") : gml_Script_stringsetloc("* Ralsei blinks at Tasque!/%", "obj_tasque_enemy_slash_Step_0_gml_240_1"))
        gml_Script_msgset(0, simultext)
        if (global.mercymod[myself] < global.mercymax[myself])
            gml_Script_scr_mercyadd(myself, 50)
        gml_Script_scr_simultext("ralsei")
        actconral = (simulorderral == 0 ? 20 : 0)
    }
    if (actingnoe == true && actconnoe == 1)
    {
        var nact_text = (choose(0, 1) == 0 ? gml_Script_stringsetloc("* Noelle got rubbed on by Tasque!/%", "obj_tasque_enemy_slash_Step_0_gml_252_0") : gml_Script_stringsetloc("* Tasque showed its belly to Noelle!/%", "obj_tasque_enemy_slash_Step_0_gml_252_1"))
        gml_Script_msgset(0, nact_text)
        if (global.mercymod[myself] < global.mercymax[myself])
            gml_Script_scr_mercyadd(myself, 50)
        gml_Script_scr_simultext("noelle")
        actconnoe = (simulordernoe == 0 ? 20 : 0)
    }
    if (actcon == 1 && (!instance_exists(obj_writer)))
        gml_Script_scr_nextact()
    if (actcon == 20 || actconsus == 20 || actconral == 20 || actconnoe == 20)
    {
        if gml_Script_scr_terminate_writer()
        {
            actconsus = -1
            actconral = -1
            actconnoe = -1
            actcon = 1
        }
    }
}
