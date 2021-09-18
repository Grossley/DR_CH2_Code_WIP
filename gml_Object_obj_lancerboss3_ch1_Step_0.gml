var _temp_local_var_1, _temp_local_var_4, _temp_local_var_16;
if (defeated == 1 && global.mnfight == 1)
{
    global.mnfight = 99
    con = 1
}
if (global.monster[myself] == true && defeated == 0)
{
    global.flag[(51 + myself)] = 4
    if (global.mnfight == 1 && talked == 0)
    {
        if 1
        {
            susie_revive_count += 1
            if (susie_revive_count >= 3)
            {
                with (obj_susieandlancer_event_ch1)
                    s.visible = false
                global.monster[0] = true
                global.monsterinstance[0] = gml_Script_instance_create_ch1(global.monstermakex[0], global.monstermakey[0], global.monsterinstancetype[0])
                global.monsterinstance[0].myself = 0
                var _temp_local_var_4 = global.monsterinstance[0]
                event_user(12)
                event_user(1)
            }
        }
        attack_qual = true
        with (obj_susieenemy_ch1)
        {
            if (sleeping == false && global.monster[myself] == true)
                obj_lancerboss3_ch1.attack_qual = false
        }
        if (attack_qual == true)
            global.targeted[mytarget] = true
        if (!1522)
            gml_Script_instance_create_ch1(0, 0, 1522)
        global.typer = 50
        rrrr = choose(0, 1, 2, 3)
        global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_56_0"
        if (rrrr == 1)
            global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_57_0"
        if (rrrr == 2)
            global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_58_0"
        if (rrrr == 3)
            global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_59_0"
        if (lancer_hurt == 0 && global.monsterhp[myself] <= (global.monstermaxhp[myself] * 0.5))
        {
            lancer_hurt = 1
            global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_64_0"
        }
        if (susie_act == 3)
            global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_66_0"
        if (susie_act == 9)
            global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_67_0"
        if (acting == 2)
        {
            if (anythingcounter == 1)
                global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_70_0"
            if (anythingcounter == 2)
                global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_71_0"
            if (anythingcounter == 3)
                global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_72_0"
            if (anythingcounter >= 4)
                global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_73_0"
        }
        if (acting == 3)
        {
            if (anythingcounter == 1)
                global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_77_0"
            if (anythingcounter == 2)
                global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_78_0"
            if (anythingcounter == 3)
                global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_79_0"
            if (anythingcounter >= 4)
                global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_80_0"
        }
        susie_act = 0
        lancer_act = 0
        gml_Script_scr_enemyblcon_ch1((x - 235), (y - 65), 3)
        talked = 1
        talktimer = 0
    }
    if (talked == 1 && global.mnfight == 1)
    {
        if (talktimer > 17)
            talktimer = talkmax
        talktimer += 1
        if (talktimer >= talkmax)
        {
            if (!1536)
                // WARNING: Popz'd an empty stack.
            if (!1628)
                gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), 1628)
            with (obj_writer_ch1)
                // WARNING: Popz'd an empty stack.
            global.mnfight = 2
        }
    }
    if (global.mnfight == 2 && attacked == false)
    {
        attack_qual = false
        if 1
            attack_qual = true
        with (obj_susieenemy_ch1)
        {
            if (sleeping == true)
                obj_lancerboss3_ch1.attack_qual = true
        }
        if (attack_qual == true)
        {
            if (attacks == false)
            {
                bike = gml_Script_instance_create_ch1(x, y, 1528)
                visible = false
                bike.racecon = 1
                bike.target = mytarget
                bike.damage = (global.monsterat[myself] * 5)
                attacks = true
            }
            else
            {
                bike = gml_Script_instance_create_ch1(x, y, 1528)
                visible = false
                bike.lcon = 1
                bike.target = mytarget
                bike.damage = (global.monsterat[myself] * 5)
                attacks = false
            }
            global.turntimer = 999
        }
        turns += 1
        attacked = true
        rr = 5
        global.typer = 6
        global.fc = 0
        if (rr == 0)
            global.battlemsg[0] = "obj_lancerboss3_slash_Step_0_gml_145_0"
        if (rr == 1)
            global.battlemsg[0] = "obj_lancerboss3_slash_Step_0_gml_146_0"
        if (rr == 2)
            global.battlemsg[0] = "obj_lancerboss3_slash_Step_0_gml_147_0"
        if (rr == 3)
            global.battlemsg[0] = "obj_lancerboss3_slash_Step_0_gml_148_0"
        if (rr == 4)
            global.battlemsg[0] = "obj_lancerboss3_slash_Step_0_gml_149_0"
    }
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_167_0"
        // WARNING: Popz'd an empty stack.
    }
    if (acting == 2 && actcon == 0)
    {
        actcon = 1
        global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_176_0"
        global.msg[1] = "obj_lancerboss3_slash_Step_0_gml_177_0"
        if (anythingcounter == 1)
        {
            global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_181_0"
            global.msg[1] = "obj_lancerboss3_slash_Step_0_gml_182_0"
        }
        if (anythingcounter == 2)
        {
            global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_187_0"
            global.msg[1] = "obj_lancerboss3_slash_Step_0_gml_188_0"
        }
        if (anythingcounter >= 3)
        {
            global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_193_0"
            global.msg[1] = "obj_lancerboss3_slash_Step_0_gml_194_0"
            if (ears_blocked >= 2)
            {
                global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_197_0"
                global.msg[1] = "obj_lancerboss3_slash_Step_0_gml_198_0"
            }
            attack_qual = false
            if 1
                attack_qual = true
            with (obj_susieenemy_ch1)
            {
                if (sleeping == true)
                    obj_lancerboss3_ch1.attack_qual = true
            }
            if (attack_qual == false)
            {
                actcon = 20
                with (obj_monsterparent_ch1)
                    ears_blocked += 1
            }
            else
                anythingcounter = 10
            if (ears_blocked >= 3)
            {
                anythingcounter = 10
                actcon = 1
                attack_qual = true
            }
        }
        if (anythingcounter < 4)
            anythingcounter += 1
        // WARNING: Popz'd an empty stack.
    }
    if (acting == 3 && actcon == 0)
    {
        actcon = 1
        global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_222_0"
        gml_Script_scr_ralface_ch1(1, 8)
        global.msg[2] = "obj_lancerboss3_slash_Step_0_gml_224_0"
        3
        global.msg[4] = "obj_lancerboss3_slash_Step_0_gml_226_0"
        if (anythingcounter == 1)
        {
            global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_230_0"
            gml_Script_scr_ralface_ch1(1, 1)
            global.msg[2] = "obj_lancerboss3_slash_Step_0_gml_232_0"
            global.msg[3] = "obj_lancerboss3_slash_Step_0_gml_233_0"
            4
            global.msg[5] = "obj_lancerboss3_slash_Step_0_gml_235_0"
        }
        if (anythingcounter == 2)
        {
            global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_240_0"
            gml_Script_scr_ralface_ch1(1, 1)
            global.msg[2] = "obj_lancerboss3_slash_Step_0_gml_242_0"
            global.msg[3] = "obj_lancerboss3_slash_Step_0_gml_243_0"
            4
            global.msg[5] = "obj_lancerboss3_slash_Step_0_gml_245_0"
        }
        if (anythingcounter >= 3)
        {
            global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_250_0"
            gml_Script_scr_ralface_ch1(1, 6)
            global.msg[2] = "obj_lancerboss3_slash_Step_0_gml_252_0"
            global.msg[3] = "obj_lancerboss3_slash_Step_0_gml_253_0"
            if (ears_blocked >= 2)
            {
                global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_256_0"
                gml_Script_scr_ralface_ch1(1, 0)
                global.msg[2] = "obj_lancerboss3_slash_Step_0_gml_258_0"
                3
                global.msg[4] = "obj_lancerboss3_slash_Step_0_gml_260_0"
            }
            attack_qual = false
            if 1
                attack_qual = true
            with (obj_susieenemy_ch1)
            {
                if (sleeping == true)
                    obj_lancerboss3_ch1.attack_qual = true
            }
            if (attack_qual == false)
            {
                actcon = 20
                with (obj_monsterparent_ch1)
                    ears_blocked += 1
            }
            else
                anythingcounter = 10
            if (ears_blocked >= 3)
            {
                anythingcounter = 10
                actcon = 1
                attack_qual = true
            }
        }
        if (anythingcounter < 4)
            anythingcounter += 1
        if 1606
        {
            obj_susieenemy_ch1.anythingxcounter = anythingcounter
            obj_susieenemy_ch1.lancer_act = 3
        }
        // WARNING: Popz'd an empty stack.
    }
    if (actcon == 1 && (!1327))
    {
        actcon = 0
        if (anythingcounter < 10)
            // WARNING: Popz'd an empty stack.
        else
        {
            defeated = 1
            global.mnfight = 99
            global.myfight = 99
            con = 1
            global.flag[249] = 1
        }
    }
    if (actcon == 20 && (!1327))
    {
        visible = false
        with (obj_susieenemy_ch1)
            visible = false
        if 1
        {
            with (obj_susieandlancer_event_ch1)
                s.visible = false
        }
        blocklan = gml_Script_scr_dark_marker_ch1(x, y, 3791)
        blocklan.depth = depth
        357
        global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_314_0"
        gml_Script_scr_susface_ch1(1, 2)
        global.msg[2] = "obj_lancerboss3_slash_Step_0_gml_316_0"
        // WARNING: Popz'd an empty stack.
        actcon = 21
    }
    if (actcon == 21 && (!1327))
        var _temp_local_var_16 = blocklan
}
if (con == 1)
{
    alarm[4] = 5
    con = 2
}
if (con == 3)
{
    with (obj_susieenemy_ch1)
        idlesprite = spr_susie_enemy_ch1
    global.typer = 46
    global.fe = 4
    global.fc = 5
    global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_348_0"
    gml_Script_scr_susface_ch1(1, 9)
    global.msg[2] = "obj_lancerboss3_slash_Step_0_gml_350_0"
    global.msg[3] = "obj_lancerboss3_slash_Step_0_gml_351_0"
    global.msg[4] = "obj_lancerboss3_slash_Step_0_gml_352_0"
    gml_Script_scr_lanface_ch1(5, 2)
    global.msg[6] = "obj_lancerboss3_slash_Step_0_gml_354_0"
    global.msg[7] = "obj_lancerboss3_slash_Step_0_gml_355_0"
    gml_Script_scr_susface_ch1(8, 0)
    global.msg[9] = "obj_lancerboss3_slash_Step_0_gml_357_0"
    gml_Script_scr_ralface_ch1(10, 6)
    global.msg[11] = "obj_lancerboss3_slash_Step_0_gml_359_0"
    if (global.flag[249] == 1)
    {
        global.msg[0] = "obj_lancerboss3_slash_Step_0_gml_363_0"
        gml_Script_scr_susface_ch1(1, 0)
        global.msg[2] = "obj_lancerboss3_slash_Step_0_gml_365_0"
        gml_Script_scr_lanface_ch1(3, 4)
        global.msg[4] = "obj_lancerboss3_slash_Step_0_gml_367_0"
        global.msg[5] = "obj_lancerboss3_slash_Step_0_gml_368_0"
        global.msg[6] = "obj_lancerboss3_slash_Step_0_gml_369_0"
        gml_Script_scr_susface_ch1(7, 0)
        global.msg[8] = "obj_lancerboss3_slash_Step_0_gml_371_0"
        global.msg[9] = "obj_lancerboss3_slash_Step_0_gml_372_0"
        global.msg[10] = "obj_lancerboss3_slash_Step_0_gml_373_0"
        global.msg[11] = "obj_lancerboss3_slash_Step_0_gml_374_0"
    }
    con = 4
    // WARNING: Popz'd an empty stack.
}
if (con == 4 && (!1327))
{
    con = 5
    alarm[4] = 2
    with (obj_battlecontroller_ch1)
    {
        noreturn = false
        alarm[2] = 4
    }
}
if (con == 6)
{
    with (obj_susieandlancer_event_ch1)
        l.visible = true
    with (obj_monsterparent_ch1)
        // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    con = 7
}
