if (global.monster[myself] == true)
{
    if (global.mnfight == 1 && talked == 0)
    {
        gml_Script_scr_randomtarget()
        if (!instance_exists(obj_darkener))
            gml_Script_instance_create(0, 0, obj_darkener)
        global.typer = 50
        rr = choose(0, 1, 2)
        text1 = gml_Script_stringsetloc("Nice mouth", "obj_clubsenemy_slash_Step_0_gml_13_0")
        text2 = gml_Script_stringsetloc("Anger mouth", "obj_clubsenemy_slash_Step_0_gml_14_0")
        text3 = gml_Script_stringsetloc("Smart Mouth", "obj_clubsenemy_slash_Step_0_gml_15_0")
        if (rr == 0)
        {
            text1 = gml_Script_stringsetloc("Nice to&see you&again!", "obj_clubsenemy_slash_Step_0_gml_19_0")
            text2 = gml_Script_stringsetloc("This&time you&die!", "obj_clubsenemy_slash_Step_0_gml_20_0")
            text3 = gml_Script_stringsetloc("Please&ignore&them.", "obj_clubsenemy_slash_Step_0_gml_21_0")
        }
        if (rr == 1)
        {
            text1 = gml_Script_stringsetloc("How well&do you&know us?", "obj_clubsenemy_slash_Step_0_gml_26_0")
            text2 = gml_Script_stringsetloc("YOU KNOW&NOTHING,&IDIOT!", "obj_clubsenemy_slash_Step_0_gml_27_0")
            text3 = gml_Script_stringsetloc("Sorry&about&this...", "obj_clubsenemy_slash_Step_0_gml_28_0")
        }
        if (rr == 2)
        {
            text1 = gml_Script_stringsetloc("Nice&dojo&today.", "obj_clubsenemy_slash_Step_0_gml_33_0")
            text2 = gml_Script_stringsetloc("What?&It's just&awful!", "obj_clubsenemy_slash_Step_0_gml_34_0")
            text3 = gml_Script_stringsetloc("Please&stop, you&two...", "obj_clubsenemy_slash_Step_0_gml_35_0")
        }
        global.msg[0] = text1
        gml_Script_scr_enemyblcon((x - 110), (y - 10), 4)
        global.msg[0] = text2
        gml_Script_scr_enemyblcon((x - 125), (y + 70), 5)
        global.msg[0] = text3
        gml_Script_scr_enemyblcon((x + 125), (y - 10), 6)
        with (obj_monsterparent)
            talkmax = 210
        talked = 1
        talktimer = 0
        manual = 0
    }
    if (talked == 1 && global.mnfight == 1)
    {
        rtimer = 0
        gml_Script_scr_blconskip(15)
        if (global.mnfight == 2)
        {
            if (!instance_exists(obj_moveheart))
                gml_Script_scr_moveheart()
            if (!instance_exists(obj_growtangle))
                gml_Script_instance_create((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), obj_growtangle)
        }
    }
    if (global.mnfight == 2 && attacked == false)
    {
        rtimer += 1
        if (rtimer == 12)
        {
            rr = choose(0, 1, 2)
            if (rr == 0)
            {
                dc = gml_Script_instance_create(x, y, obj_dbulletcontroller)
                dc.type = 30
                dc.target = mytarget
                dc.ratio = 0.7
                dc.grazepoints = 5
                dc.timepoints = 2
                dc.damage = (global.monsterat[myself] * 5)
            }
            else if (rr == 1)
            {
                dc = gml_Script_instance_create(x, y, obj_dbulletcontroller)
                dc.type = 31
                dc.ratio = 0.7
                dc.target = mytarget
                dc.grazepoints = 5
                dc.timepoints = 1
                dc.damage = (global.monsterat[myself] * 5)
            }
            else
            {
                dc = gml_Script_instance_create(x, y, obj_dbulletcontroller)
                dc.type = 33
                dc.target = mytarget
                dc.grazepoints = 5
                dc.timepoints = 2
                dc.damage = (global.monsterat[myself] * 5)
            }
            turns += 1
            global.turntimer = 240
            attacked = true
            global.typer = 6
            global.fc = 0
            rr = choose(0, 1, 2, 3, 4, 5)
            if (rr == 0)
                global.battlemsg[0] = gml_Script_stringsetloc("* Clover flashes a trio of terrible smiles.", "obj_clubsenemy_slash_Step_0_gml_139_0")
            if (rr == 1)
                global.battlemsg[0] = gml_Script_stringsetloc("* Clover is bickering with herselves.", "obj_clubsenemy_slash_Step_0_gml_140_0")
            if (rr == 2)
                global.battlemsg[0] = gml_Script_stringsetloc("* Clover is whispering about cute boys.", "obj_clubsenemy_slash_Step_0_gml_141_0")
            if (rr == 3)
                global.battlemsg[0] = gml_Script_stringsetloc("* Clover is arguing about whose toothbrush is whose.", "obj_clubsenemy_slash_Step_0_gml_142_0")
            if (rr == 4)
                global.battlemsg[0] = gml_Script_stringsetloc("* Clover hums like an out-of-tune choir.", "obj_clubsenemy_slash_Step_0_gml_143_0")
            if (rr == 5)
                global.battlemsg[0] = gml_Script_stringsetloc("* Smells like clover and dew.", "obj_clubsenemy_slash_Step_0_gml_144_0")
            if (global.monsterstatus[myself] == true)
                global.battlemsg[0] = gml_Script_stringsetloc("* Clover seems TIRED of discussing so much.", "obj_clubsenemy_slash_Step_0_gml_145_0")
            if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
                global.battlemsg[0] = gml_Script_stringsetloc("* Clover starts to look wilted.", "obj_clubsenemy_slash_Step_0_gml_146_0")
            if (global.mercymod[myself] >= global.mercymax[myself])
                global.msg[0] = gml_Script_stringsetloc("* Clover seems to be getting along with herselves.", "obj_clubsenemy_slash_Step_0_gml_147_0")
            if (betray == true)
                global.battlemsg[0] = gml_Script_stringsetloc("* Clover's harmony was shattered by violence.", "obj_clubsenemy_slash_Step_0_gml_148_0")
            betray = false
        }
        else
            global.turntimer = 150
    }
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        global.msg[0] = gml_Script_stringsetloc("* CLOVER - AT 8 DF 2&* Two heads are better than one^1!&* Three..^1. maybe not./%", "obj_clubsenemy_slash_Step_0_gml_168_0")
        gml_Script_scr_battletext_default()
    }
    if (acting == 2 && actcon == 0)
    {
        topic_con = 1
        topic_timer = 90
        topic_timer_total = topic_timer
        actcon = 15
    }
    if (topic_con == 1)
    {
        topic_con = 2
        topic_count++
        ds_list_shuffle(likes_list)
        ds_list_shuffle(dislikes_list)
        var choice_amount = 3
        for (var i = 0; i < choice_amount; i++)
        {
            var prepend = ((i == 2 || i == 3) ? "" : "#")
            global.choicemsg[i] = (prepend + ds_list_find_value(dislikes_list, i))
        }
        right_answer = floor(random(choice_amount))
        prepend = (string_pos("#", global.choicemsg[right_answer]) != 0 ? "#" : "")
        global.choicemsg[right_answer] = (prepend + ds_list_find_value(likes_list, 0))
        gml_Script_msgsetloc(0, "* Choose a topic that Clover likes!/%", "obj_clubsenemy_slash_Step_0_gml_233_0")
        gml_Script_scr_battletext_default()
    }
    if (topic_con == 2 && (!gml_Script_i_ex(62)))
    {
        topic_con = 3
        gml_Script_msgset(0, "\\C3 ")
        gml_Script_scr_battletext_default()
    }
    if (topic_con == 3)
    {
        if ((!gml_Script_i_ex(62)) && (!gml_Script_i_ex(57)))
            topic_con = 4
        else
        {
            topic_timer--
            if (topic_timer <= 0)
            {
                topic_con = 4
                topic_timeup = 1
                if gml_Script_i_ex(62)
                    instance_destroy(obj_writer)
                if gml_Script_i_ex(57)
                    instance_destroy(obj_choicer_neo)
            }
        }
    }
    if (topic_con == 4 && (!gml_Script_i_ex(62)) && (!gml_Script_i_ex(57)))
    {
        topic_start = 0
        topic_con = 0
        if topic_timeup
        {
            topic_timeup = 0
            gml_Script_snd_play(143)
            gml_Script_scr_miniface_init_clover()
            gml_Script_msgsetloc(0, "\\m1*        Time's up!&\\m2    TOO SLOW!&\\m3    (Sorry...)/%", "obj_clubsenemy_slash_Step_0_gml_286_0")
        }
        else if (global.choice == right_answer)
        {
            gml_Script_snd_play(57)
            if (global.mercymod[myself] < global.mercymax[myself])
            {
                var mercytotal = clamp((20 + (turns * 5)), 20, 50)
                gml_Script_scr_mercyadd(myself, mercytotal)
            }
            gml_Script_scr_miniface_init_clover()
            gml_Script_msgsetloc(0, "\\m1*        That's right^2!&\\m2    Not bad^2!&\\m3    (It's OK...^2)/%", "obj_clubsenemy_slash_Step_0_gml_293_0")
        }
        else
        {
            gml_Script_snd_play(143)
            gml_Script_scr_miniface_init_clover()
            gml_Script_msgsetloc(0, "\\m1*        No thanks!&\\m2    WRONG!&\\m3    (Is it that bad?)/%", "obj_clubsenemy_slash_Step_0_gml_296_0_b")
        }
        actcon = 1
        gml_Script_scr_battletext_default()
    }
    if (acting == 3 && actcon == 0)
    {
        topic_con = 1
        topic_timer = 300
        topic_timer_total = topic_timer
        actcon = 15
    }
    if (actcon == 1 && (!instance_exists(obj_writer)))
    {
        if (argue >= 3)
        {
            global.monstercomment[myself] = gml_Script_stringsetloc("(Tired)", "obj_clubsenemy_slash_Step_0_gml_256_0")
            global.monsterstatus[myself] = true
        }
        actcon = 0
        gml_Script_scr_act_charsprite_end()
        gml_Script_scr_nextact()
    }
    if (actingsus == 1 && actconsus == 1)
    {
        gml_Script_scr_mercyadd(myself, 5)
        gml_Script_msgsetloc(0, "* Susie stood there awkwardly!/%", "obj_clubsenemy_slash_Step_0_gml_459_0")
        gml_Script_scr_simultext("susie")
        actconsus = 20
    }
    if (actingral == 1 && actconral == 1)
    {
        gml_Script_scr_mercyadd(myself, 25)
        gml_Script_msgsetloc(0, "* Ralsei stood there cutely!/%", "obj_clubsenemy_slash_Step_0_gml_469_0")
        gml_Script_scr_simultext("ralsei")
        actconral = 20
    }
    if (actcon == 20 || actconsus == 20 || actconral == 20)
    {
        if gml_Script_scr_terminate_writer()
        {
            actconsus = -1
            actconral = -1
            actcon = 1
        }
    }
}
