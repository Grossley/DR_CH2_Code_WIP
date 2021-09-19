var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_10, _temp_local_var_11, _temp_local_var_12, _temp_local_var_18, _temp_local_var_19, _temp_local_var_20, _temp_local_var_38, _temp_local_var_39, _temp_local_var_40, _temp_local_var_41;
if (place_meeting(x, y, obj_mainchara) && pressed == 0 && global.plot < 72)
{
    pressed = 1
    gml_Script_snd_play(64)
    if (attempt >= 1)
    {
        if instance_exists(obj_holemouse_generator)
        {
            obj_holemouse_generator.mousecreate = 1
            obj_holemouse_generator.gentimer = 15
            global.interact = 1
        }
    }
    timer = 0
    attempt++
}
if (place_meeting(x, y, obj_mainchara) && pressed == 0 && global.plot >= 72)
{
    pressed = 1
    gml_Script_snd_play(64)
}
if (place_meeting(x, y, obj_caterpillarchara) && pressed == 0 && (!instance_exists(obj_npc_facing)) && (!instance_exists(obj_noelle_scared)) && obj_controller_dw_city_mice.con > 0)
{
    pressed = 1
    gml_Script_snd_play(64)
}
if (place_meeting(x, y, obj_actor) && pressed == 0 && global.plot < 72)
{
    pressed = 1
    gml_Script_snd_play(64)
    if instance_exists(obj_holemouse_generator)
    {
        obj_holemouse_generator.mousecreate = 1
        obj_holemouse_generator.gentimer = 15
        global.interact = 1
    }
    timer = 0
}
if (pressed == 1)
    timer++
if ((!place_meeting(x, y, obj_mainchara)) && (!place_meeting(x, y, obj_caterpillarchara)) && (!place_meeting(x, y, obj_actor)) && pressed == 1)
    pressed = 0
image_index = pressed
if (room == room_dw_city_mice && attempt == 1 && instance_exists(obj_controller_dw_city_mice) && obj_controller_dw_city_mice.victory == false)
{
    tIntroCon = 1
    global.interact = 1
    attempt++
}
if (introCon == 0 || introCon == 1 || introCon == 2 || introCon == 3 || introCon == 4)
{
    timer = 0
    global.interact = 1
}
if (tIntroCon == 1)
{
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    tIntroCon = 2
    fakemouse = gml_Script_scr_dark_marker(220, 180, 2687)
    fakemouse.visible = false
    fakedoor = gml_Script_scr_dark_marker(obj_holemouse_generator.x, obj_holemouse_generator.y, 2681)
    fakedoor.image_index = 5
    realdoor = instance_find(obj_holemouse_generator, 0)
    save_object[0] = cutscene_master
    save_object[1] = cutscene_master
    save_object[2] = cutscene_master
    var _temp_local_var_10 = realdoor
    var _temp_local_var_11 = fakedoor
    var _temp_local_var_12 = fakemouse
}
if (tIntroCon == 2)
{
    tIntroCon = 999
    gml_Script_c_sel(kr)
    gml_Script_c_walkdirect(160, 270, 15)
    gml_Script_c_sel(no)
    gml_Script_c_walkdirect(196, 260, 15)
    gml_Script_c_wait(30)
    gml_Script_c_sel(no)
    gml_Script_c_facing("u")
    gml_Script_c_var_instance(fakedoor, "image_index", 0)
    gml_Script_c_soundplay(59)
    gml_Script_c_wait(30)
    gml_Script_c_var_instance(fakemouse, "visible", 1)
    gml_Script_c_soundplay(176)
    gml_Script_c_wait(30)
    gml_Script_c_sel(no)
    gml_Script_c_sprite(716)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E2* A m-m-m-m-m.../", "obj_mouseSpawnSwitch_slash_Step_0_gml_123_0")
    gml_Script_c_msgnextloc("\\EE* Mouse!?/%", "obj_mouseSpawnSwitch_slash_Step_0_gml_124_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(realdoor, "desIndex", 0)
    gml_Script_c_var_instance(realdoor, "mousecreate", 1)
    gml_Script_c_var_instance(realdoor, "gentimer", 15)
    gml_Script_c_var_instance(fakemouse, "visible", 0)
    gml_Script_c_var_instance(fakedoor, "visible", 0)
    gml_Script_c_var_instance(id, "tIntroCon", 5)
    gml_Script_c_waitcustom()
    gml_Script_c_wait(1)
}
if (tIntroCon == 5)
{
    if (instance_exists(obj_caterpillarchara) && (!instance_exists(obj_noelle_scared)))
    {
        no_actor.visible = false
        obj_caterpillarchara.x = no_actor.x
        obj_caterpillarchara.y = no_actor.y
        with (obj_caterpillarchara)
        {
            visible = true
            fun = true
            sprite_index = spr_noelle_shocked_dw
        }
        tIntroCon = 6
        mousetimer = 0
    }
}
if (tIntroCon == 6)
{
    mousetimer++
    if (obj_controller_dw_city_mice.victory == true && (!instance_exists(obj_holemouse)))
        mousetimer = 90
    if (mousetimer >= 90)
    {
        tIntroCon = 10
        if instance_exists(obj_noelle_scared)
        {
            if (obj_controller_dw_city_mice.victory == false)
            {
                gml_Script_c_waitcustom_end()
                gml_Script_scr_speaker("noelle")
                gml_Script_c_msgsetloc(0, "\\E3* S..^1. sorry^1, Kris^1, could you..^1. d-deal with them somehow?/", "obj_mouseSpawnSwitch_slash_Step_0_gml_171_0")
                gml_Script_c_msgnextloc("\\E4* Maybe if you can get them in the other mouse hole?/%", "obj_mouseSpawnSwitch_slash_Step_0_gml_172_0")
                gml_Script_c_talk_wait()
                gml_Script_c_var_instance(id, "introCon", 4)
                gml_Script_c_var_instance(id, "introFinished", 1)
                gml_Script_c_actortokris()
                gml_Script_c_terminatekillactors()
            }
            else
            {
                earlywin = 1
                gml_Script_c_waitcustom_end()
                gml_Script_c_var_instance(id, "introCon", 4)
                gml_Script_c_var_instance(id, "introFinished", 1)
                gml_Script_c_actortokris()
                gml_Script_c_terminatekillactors()
            }
        }
        else
        {
            gml_Script_c_waitcustom_end()
            gml_Script_c_sel(no)
            gml_Script_c_facing("u")
            gml_Script_c_speaker("noelle")
            gml_Script_c_msgsetloc(0, "\\E2* H-huh^1?&* Nothing happened.../%", "obj_mouseSpawnSwitch_slash_Step_0_gml_189_0")
            gml_Script_c_talk_wait()
            gml_Script_c_actortokris()
            gml_Script_c_actortocaterpillar()
            gml_Script_c_terminatekillactors()
            tIntroCon = 200
        }
        with (obj_caterpillarchara)
        {
            fun = false
            sprite_index = spr_noelle_walk_left_dw
        }
    }
}
if (introCon == 0)
{
    if instance_exists(obj_caterpillarchara)
    {
        with (obj_caterpillarchara)
        {
            fun = true
            sprite_index = spr_noelle_shocked_dw
        }
    }
    if instance_exists(obj_noelle_scared)
    {
        if (obj_noelle_scared.x == obj_noelle_scared.targetx && obj_noelle_scared.y == obj_noelle_scared.targety)
            introCon++
    }
}
if (introCon == 1)
{
    obj_noelle_scared.sprite_index = spr_noelleb_battleintro_l
    obj_noelle_scared.image_index = 3
    introconTimer++
    if (introconTimer == 30)
        introCon++
}
if (introCon == 2)
{
    fakenoelle = gml_Script_scr_dark_marker(obj_noelle_scared.x, obj_noelle_scared.y, 2719)
    with (obj_noelle_scared)
        instance_destroy()
    noelleWaitTimer = 0
    introCon++
}
if (introCon == 3)
{
    if (fakenoelle.image_index >= 11 || tIntroCon >= 10)
    {
        noelleWaitTimer++
        if (noelleWaitTimer >= 5)
        {
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\EE* M-m-m-m-mouse!!/", "obj_mouseSpawnSwitch_slash_Step_0_gml_275_0")
            gml_Script_msgnextloc("\\E2* S..^1. sorry^1, Kris^1, could you..^1. d-deal with them somehow?/", "obj_mouseSpawnSwitch_slash_Step_0_gml_276_0")
            gml_Script_msgnextloc("\\E4* Maybe^1, make a mouseless path I can walk through...?/%", "obj_mouseSpawnSwitch_slash_Step_0_gml_277_0")
            gml_Script_d_make()
            introCon = 4
        }
    }
    else
    {
        _temp_local_var_10.image_index = (fakenoelle.image_index + 0.5)
        var _temp_local_var_38 = fakedoor
        var _temp_local_var_39 = fakemouse
        var _temp_local_var_40 = -9
        var _temp_local_var_41 = fakenoelle
    }
}
if (introCon == 4 && (!gml_Script_d_ex()) && (!instance_exists(obj_cutscene_master)))
{
    if instance_exists(obj_noelle_scared)
    {
        noelleFacing = gml_Script_instance_create(obj_noelle_scared.x, obj_noelle_scared.y, obj_npc_facing)
        noelleFacing.sprite_index = spr_noelle_walk_down_dw
        noelleFacing.image_xscale = 2
        noelleFacing.image_yscale = 2
        noelleFacing.y = noelleFacing.ystart
        var _temp_local_var_18 = noelleFacing
        gml_Script_scr_set_facing_sprites("noelledark")
    }
    if gml_Script_i_ex(317)
    {
        with (obj_cybercity_mousesign)
        {
            start = 1
            fade_in = 1
        }
    }
    timer = 29
    global.interact = 0
    introCon++
}
if (introCon == 4)
{
    if gml_Script_i_ex(noelleFacing)
    {
        noelleFacing = gml_Script_instance_create(noelleFacing.x, noelleFacing.y, noelleFacing)
        noelleFacing.sprite_index = obj_noelle_scared.sprite_index
        noelleFacing.image_xscale = 2
        noelleFacing.image_yscale = 2
        var _temp_local_var_19 = noelleFacing
        gml_Script_scr_set_facing_sprites("noelledark")
    }
    var _temp_local_var_20 = noelleFacing
    instance_destroy()
}
if (introCon == 5)
{
    timer = 29
    global.interact = 0
    introCon++
}
if (introCon == 6)
{
    if (global.plot >= 72)
        introCon = 99
    else if (obj_mainchara.y >= leaveTrigger)
        introCon = 7
    else if (obj_mainchara.y < 80)
        introCon = 9
    if (global.interact == 1 && timer > 60)
    {
        if ((!gml_Script_d_ex()) && (!gml_Script_i_ex(1165)))
        {
            if (obj_controller_dw_city_mice.scaredAgain == 99 || obj_controller_dw_city_mice.scaredAgain == 3)
                global.interact = 0
        }
    }
}
if (introCon == 7)
{
    global.interact = 1
    gml_Script_scr_speaker("noelle")
    if (leaveAttempt == 0)
    {
        gml_Script_msgsetloc(0, "\\E4* H-hey^1, Kris? You can't leave yet^1, y'know!/", "obj_mouseSpawnSwitch_slash_Step_0_gml_352_0")
        gml_Script_msgnextloc("\\E3* You need to deal with the mice^1, first./", "obj_mouseSpawnSwitch_slash_Step_0_gml_353_0")
        gml_Script_msgnextloc("\\E4* You can do it^1, Kris^1! I believe in you!/%", "obj_mouseSpawnSwitch_slash_Step_0_gml_354_0")
    }
    if (leaveAttempt == 1)
    {
        gml_Script_msgsetloc(0, "\\E3* Kris^1, you^1, um..^1. aren't gonna leave me here^1, are you?/", "obj_mouseSpawnSwitch_slash_Step_0_gml_358_0")
        gml_Script_msgnextloc("\\E2* Th-think about all the p-pencils I gave you!/", "obj_mouseSpawnSwitch_slash_Step_0_gml_359_0")
        gml_Script_msgnextloc("\\E2* The..^1. the peppermint cookies I shared with you!/%", "obj_mouseSpawnSwitch_slash_Step_0_gml_360_0")
    }
    if (leaveAttempt == 2)
    {
        gml_Script_msgsetloc(0, "\\E8* .../", "obj_mouseSpawnSwitch_slash_Step_0_gml_364_0")
        gml_Script_msgnextloc("\\E8* I'll do your homework for you./%", "obj_mouseSpawnSwitch_slash_Step_0_gml_365_0")
    }
    if (leaveAttempt == 3)
        introCon = 127
    if (leaveAttempt != 3)
        d = gml_Script_d_make()
    leaveAttempt++
    introCon++
}
if (introCon == 8 && (!gml_Script_d_ex()))
{
    global.facing = 2
    obj_mainchara.y = (leaveTrigger - 1)
    leaveTrigger += 8
    if (backeddown == 1)
    {
        leaveTrigger = 392
        leaveAttempt = 3
        backeddown = 0
    }
    global.interact = 0
    introCon = 6
}
if (introCon == 9)
{
    global.interact = 1
    with (obj_npc_facing)
        dfacing = 2
    gml_Script_scr_speaker("noelle")
    if (leaveUpAttempt == 0)
    {
        gml_Script_msgsetloc(0, "\\E4* Oh^1, merry Krismaaaas--!/", "obj_mouseSpawnSwitch_slash_Step_0_gml_395_0")
        gml_Script_msgnextloc("\\E8* That's where we came from!/%", "obj_mouseSpawnSwitch_slash_Step_0_gml_396_0")
    }
    else
        gml_Script_msgsetloc(0, "\\E4* Kris^1, are you afraid of mice^1, too? Fahahaha!/%", "obj_mouseSpawnSwitch_slash_Step_0_gml_400_0")
    d = gml_Script_d_make()
    leaveUpAttempt++
    introCon++
}
if (introCon == 10 && (!gml_Script_d_ex()))
{
    obj_mainchara.y = 81
    with (obj_npc_facing)
        dfacing = 0
    global.facing = 0
    global.interact = 0
    introCon = 6
}
if (introCon == 128)
{
    global.msc = 1202
    gml_Script_scr_text(global.msc)
    gml_Script_d_make()
    introCon++
}
if (introCon == 131 && (!gml_Script_d_ex()))
{
    global.interact = 1
    obj_caterpillarchara.x = obj_npc_facing.x
    obj_caterpillarchara.y = obj_npc_facing.y
    with (obj_npc_facing)
        instance_destroy()
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    hole = instance_find(obj_controller_dw_city_mice, 0)
    introCon++
}
if (introCon == 132)
{
    global.interact = 1
    gml_Script_c_sel(no)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(717)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect(485, 250, 15)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("d")
    gml_Script_c_wait(15)
    gml_Script_c_wait(30)
    gml_Script_c_sprite(1540)
    gml_Script_c_setxy(483, 256)
    gml_Script_c_halt()
    gml_Script_c_wait(15)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect_wait(150, 256, 25)
    gml_Script_c_halt()
    gml_Script_c_wait(65)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E4* Ph..^1. phew.../", "obj_mouseSpawnSwitch_slash_Step_0_gml_454_0")
    gml_Script_c_msgnextloc("\\E8* (We'd better not have to do something like that again...)/%", "obj_mouseSpawnSwitch_slash_Step_0_gml_455_0")
    gml_Script_c_talk_wait()
    gml_Script_c_autowalk(1)
    gml_Script_c_walkdirect_wait(150, 330, 20)
    gml_Script_c_halt()
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E3* (Seriously, when did Kris get so bossy?)/%", "obj_mouseSpawnSwitch_slash_Step_0_gml_506_0")
    gml_Script_c_talk_wait()
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
    introCon = 133
}
if (introCon == 133 && (!gml_Script_d_ex()) && (!gml_Script_i_ex(cutscene_master)))
{
    if (global.plot < 72)
        global.plot = 72
    global.interact = 0
    introCon++
}
if (tIntroCon == 200 && (!instance_exists(obj_cutscene_master)))
{
    with (obj_caterpillarchara)
        gml_Script_scr_caterpillar_interpolate()
    global.interact = 0
    if (global.plot < 72)
        global.plot = 72
    tIntroCon = 201
}
