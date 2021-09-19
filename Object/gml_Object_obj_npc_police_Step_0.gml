if gml_Script_i_ex(bars)
{
    if (bars.sprite_index == bg_lw_police_house_bars_open)
    {
        if (global.flag[317] == 0)
            bars.depth = 100000000
        else
            bars.depth = (obj_mainchara.y > 60 ? 100000000 : 0)
    }
    else
    {
        var _temp_local_var_184 = bars
        gml_Script_scr_depth()
    }
}
if gml_Script_i_ex(undynedesk)
{
    var _temp_local_var_1 = undynedesk
    gml_Script_scr_depth()
}
if gml_Script_i_ex(boombox)
{
    var _temp_local_var_2 = boombox
    gml_Script_scr_depth()
}
if (con < 5)
{
    if gml_Script_i_ex(keys)
        keys.depth = (undynedesk.depth - 10)
}
else if gml_Script_i_ex(keys)
    keys.depth = 0
if (con > -1)
    global.interact = 1
if (con == 1 && (!gml_Script_d_ex()))
{
    con = 2
    undynedesk.sprite_index = spr_undyne_police_table_laugh
    undynedesk.image_speed = 0.1
    undyne_slam = 1
    gml_Script_scr_speaker("undyne")
    gml_Script_msgsetloc(0, "\\E0* Haha..^1. DARK WORLD??/", "obj_npc_police_slash_Step_0_gml_60_0")
    gml_Script_msgnextloc("\\E7* Hahahaha..^1. seriously!? Hahahaha!!/", "obj_npc_police_slash_Step_0_gml_61_0")
    gml_Script_msgnextloc("\\E5* NGAAAHahahahahahahah!!!/%", "obj_npc_police_slash_Step_0_gml_62_0")
    gml_Script_d_make()
}
if undyne_slam
{
    undyne_slam_timer++
    if (undyne_slam_timer >= 20)
    {
        undyne_slam_timer = 0
        gml_Script_snd_play(61)
    }
}
if (con == 2)
{
    con = 3
    alarm[0] = 20
}
if (con == 4 && (!gml_Script_d_ex()))
{
    con = 5
    undyne_slam = 0
    undyne_slam_timer = 0
    undynedesk.sprite_index = spr_undyne_police_table_break
    undynedesk.image_speed = 0
    undynedesk.image_index = 0
    alarm[0] = 8
}
if (con == 6)
{
    con = 7
    gml_Script_snd_play(61)
    gml_Script_instance_create(0, 0, obj_shake)
    undynedesk.sprite_index = spr_undyne_police_table_break
    undynedesk.image_index = 1
    keycon = 1
    alarm[0] = 15
}
if (con == 8)
{
    con = 9
    undynedesk.sprite_index = spr_undyne_police_table_surprise
    undynedesk.image_index = 0
}
if (keycon == 1)
{
    if gml_Script_i_ex(keys)
    {
        keycon = 2
        var _temp_local_var_5 = keys
        gml_Script_scr_jump_to_point(250, 75, 10, 25)
    }
}
if (keycon == 2)
{
    key_turn_timer++
    if (key_turn_timer >= 25 && keys.image_index == 0)
    {
        gml_Script_snd_play(64)
        var _temp_local_var_7 = keys
        image_index = 1
    }
    if (key_turn_timer >= 65 && keys.image_index == 1)
    {
        gml_Script_snd_play(64)
        var _temp_local_var_9 = keys
        image_index = 2
    }
    if (key_turn_timer >= 90 && keys.image_index == 2)
        keycon = 3
}
if (keycon == 3)
{
    pausetimer++
    if (pausetimer >= 30)
    {
        keycon = 4
        instance_destroy(keys)
        instance_destroy(undyneinteract)
        instance_destroy(undynesideinteract)
        gml_Script_snd_play(63)
        bars.sprite_index = bg_lw_police_house_bars_open
        doorcollider = gml_Script_instance_create(223, 95, obj_solidblock)
        doorcollider.image_xscale = 0.35
        doorcollider.image_yscale = 0.95
    }
}
if (global.flag[317] == 0 && con == 9 && keycon == 3)
{
    con = 10
    alarm[0] = 90
    repeatalarm = 1
}
if (global.flag[317] == 0 && kriscon == 1)
{
    var stopcon = 0
    with (obj_mainchara)
    {
        var runspeed = 8
        if (x > 130)
        {
            global.facing = 2
            x -= runspeed
        }
        if (x <= 130)
        {
            global.facing = 0
            stopcon = 1
        }
    }
    if stopcon
        kriscon = -1
}
if (con >= 12 && gml_Script_i_ex(doge))
{
    runspeed = 8
    doge.image_speed = 0.5
    doge.depth = 0
    if (doge.y < 90)
    {
        _temp_local_var_9.y = (doge.y + runspeed)
        var _temp_local_var_14 = keys
        var _temp_local_var_15 = keys
        var _temp_local_var_16 = stacktop
        var _temp_local_var_17 = doge
    }
    else if (doge.x > 215)
    {
        _temp_local_var_9.x = (doge.x - runspeed)
        _temp_local_var_14 = keys
        _temp_local_var_15 = keys
        _temp_local_var_16 = stacktop
        _temp_local_var_17 = doge
    }
    else if (doge.y < 135)
    {
        _temp_local_var_9.y = (doge.y + runspeed)
        _temp_local_var_14 = keys
        _temp_local_var_15 = keys
        _temp_local_var_16 = stacktop
        _temp_local_var_17 = doge
    }
    else if (doge.x > 155)
    {
        _temp_local_var_9.x = (doge.x - runspeed)
        kriscon = 1
        _temp_local_var_14 = keys
        _temp_local_var_15 = keys
        _temp_local_var_16 = stacktop
        _temp_local_var_17 = doge
    }
    else if (doge.y < 250)
    {
        _temp_local_var_9.y = (doge.y + runspeed)
        _temp_local_var_14 = keys
        _temp_local_var_15 = keys
        _temp_local_var_16 = stacktop
        _temp_local_var_17 = doge
    }
    else
        instance_destroy(doge)
}
if (con >= 13 && gml_Script_i_ex(dogc))
{
    runspeed = 8
    dogc.image_speed = 0.5
    if (dogc.x < 220 && dogc.y < 65)
    {
        _temp_local_var_14.x = (dogc.x + runspeed)
        var _temp_local_var_20 = keys
        var _temp_local_var_21 = stacktop
        var _temp_local_var_22 = stacktop
        var _temp_local_var_23 = dogc
    }
    else
    {
        dogc.depth = 0
        if (dogc.y < 65)
        {
            _temp_local_var_14.y = (dogc.y + runspeed)
            _temp_local_var_20 = keys
            _temp_local_var_21 = stacktop
            _temp_local_var_22 = stacktop
            _temp_local_var_23 = dogc
        }
        else if (dogc.x > 195)
        {
            _temp_local_var_14.x = (dogc.x - runspeed)
            _temp_local_var_20 = keys
            _temp_local_var_21 = stacktop
            _temp_local_var_22 = stacktop
            _temp_local_var_23 = dogc
        }
        else if (dogc.y < 120)
        {
            _temp_local_var_14.y = (dogc.y + runspeed)
            _temp_local_var_20 = keys
            _temp_local_var_21 = stacktop
            _temp_local_var_22 = stacktop
            _temp_local_var_23 = dogc
        }
        else if (dogc.x > 145)
        {
            _temp_local_var_14.x = (dogc.x - runspeed)
            _temp_local_var_20 = keys
            _temp_local_var_21 = stacktop
            _temp_local_var_22 = stacktop
            _temp_local_var_23 = dogc
        }
        else if (dogc.y < 250)
        {
            _temp_local_var_14.y = (dogc.y + runspeed)
            _temp_local_var_20 = keys
            _temp_local_var_21 = stacktop
            _temp_local_var_22 = stacktop
            _temp_local_var_23 = dogc
        }
        else
            instance_destroy(dogc)
    }
}
if (con >= 14 && gml_Script_i_ex(dogd))
{
    runspeed = 8
    dogd.image_speed = 0.5
    if (dogd.x < 230 && dogd.y < 80)
    {
        _temp_local_var_20.x = (dogd.x + runspeed)
        var _temp_local_var_26 = stacktop
        var _temp_local_var_27 = stacktop
        var _temp_local_var_28 = stacktop
        var _temp_local_var_29 = dogd
    }
    else
    {
        dogd.depth = 0
        if (dogd.y < 80)
        {
            _temp_local_var_20.y = (dogd.y + runspeed)
            _temp_local_var_26 = stacktop
            _temp_local_var_27 = stacktop
            _temp_local_var_28 = stacktop
            _temp_local_var_29 = dogd
        }
        else
        {
            dogd.depth = 0
            if (dogd.x > 205)
            {
                _temp_local_var_20.x = (dogd.x - runspeed)
                _temp_local_var_26 = stacktop
                _temp_local_var_27 = stacktop
                _temp_local_var_28 = stacktop
                _temp_local_var_29 = dogd
            }
            else if (dogd.y < 130)
            {
                _temp_local_var_20.y = (dogd.y + runspeed)
                _temp_local_var_26 = stacktop
                _temp_local_var_27 = stacktop
                _temp_local_var_28 = stacktop
                _temp_local_var_29 = dogd
            }
            else if (dogd.x > 160)
            {
                _temp_local_var_20.x = (dogd.x - runspeed)
                _temp_local_var_26 = stacktop
                _temp_local_var_27 = stacktop
                _temp_local_var_28 = stacktop
                _temp_local_var_29 = dogd
            }
            else if (dogd.y < 250)
            {
                _temp_local_var_20.y = (dogd.y + runspeed)
                _temp_local_var_26 = stacktop
                _temp_local_var_27 = stacktop
                _temp_local_var_28 = stacktop
                _temp_local_var_29 = dogd
            }
            else
                instance_destroy(dogd)
        }
    }
}
if (con >= 15 && gml_Script_i_ex(dogb))
{
    runspeed = 8
    dogb.image_speed = 0.5
    if (dogb.x < 230 && dogb.y < 80)
    {
        _temp_local_var_26.x = (dogb.x + runspeed)
        var _temp_local_var_32 = stacktop
        var _temp_local_var_33 = stacktop
        var _temp_local_var_34 = -9
        var _temp_local_var_35 = dogb
    }
    else
    {
        dogb.depth = 0
        if (dogb.y < 80)
        {
            _temp_local_var_26.y = (dogb.y + runspeed)
            _temp_local_var_32 = stacktop
            _temp_local_var_33 = stacktop
            _temp_local_var_34 = -9
            _temp_local_var_35 = dogb
        }
        else if (dogb.x > 205)
        {
            _temp_local_var_26.x = (dogb.x - runspeed)
            _temp_local_var_32 = stacktop
            _temp_local_var_33 = stacktop
            _temp_local_var_34 = -9
            _temp_local_var_35 = dogb
        }
        else
        {
            dogb.depth = 0
            if (dogb.y < 130)
            {
                _temp_local_var_26.y = (dogb.y + runspeed)
                _temp_local_var_32 = stacktop
                _temp_local_var_33 = stacktop
                _temp_local_var_34 = -9
                _temp_local_var_35 = dogb
            }
            else if (dogb.x > 160)
            {
                _temp_local_var_26.x = (dogb.x - runspeed)
                _temp_local_var_32 = stacktop
                _temp_local_var_33 = stacktop
                _temp_local_var_34 = -9
                _temp_local_var_35 = dogb
            }
            else if (dogb.y < 250)
            {
                _temp_local_var_26.y = (dogb.y + runspeed)
                _temp_local_var_32 = stacktop
                _temp_local_var_33 = stacktop
                _temp_local_var_34 = -9
                _temp_local_var_35 = dogb
            }
            else
                instance_destroy(dogb)
        }
    }
}
if (con >= 16 && gml_Script_i_ex(doga))
{
    runspeed = 8
    doga.image_speed = 0.5
    if (doga.x < 230 && doga.y < 80)
    {
        _temp_local_var_32.x = (doga.x + runspeed)
        var _temp_local_var_38 = stacktop
        var _temp_local_var_39 = -9
        var _temp_local_var_40 = -9
        var _temp_local_var_41 = doga
    }
    else
    {
        doga.depth = 0
        if (doga.y < 80)
        {
            _temp_local_var_32.y = (doga.y + runspeed)
            _temp_local_var_38 = stacktop
            _temp_local_var_39 = -9
            _temp_local_var_40 = -9
            _temp_local_var_41 = doga
        }
        else if (doga.x > 205)
        {
            _temp_local_var_32.x = (doga.x - runspeed)
            _temp_local_var_38 = stacktop
            _temp_local_var_39 = -9
            _temp_local_var_40 = -9
            _temp_local_var_41 = doga
        }
        else
        {
            doga.depth = 0
            if (doga.y < 130)
            {
                _temp_local_var_32.y = (doga.y + runspeed)
                _temp_local_var_38 = stacktop
                _temp_local_var_39 = -9
                _temp_local_var_40 = -9
                _temp_local_var_41 = doga
            }
            else if (doga.x > 160)
            {
                _temp_local_var_32.x = (doga.x - runspeed)
                _temp_local_var_38 = stacktop
                _temp_local_var_39 = -9
                _temp_local_var_40 = -9
                _temp_local_var_41 = doga
            }
            else if (doga.y < 250)
            {
                _temp_local_var_32.y = (doga.y + runspeed)
                _temp_local_var_38 = stacktop
                _temp_local_var_39 = -9
                _temp_local_var_40 = -9
                _temp_local_var_41 = doga
            }
            else
                instance_destroy(doga)
        }
    }
}
if (con == 17)
{
    con = 18
    repeatalarm = 0
}
if (con == 19)
{
    if (undyne == self)
    {
        deskchairless.visible = true
        deskchairless.depth = (obj_mainchara.depth + 10)
        undyne = gml_Script_scr_marker(147, 91, 1114)
        undyne.image_speed = 0
        undyne.depthcancel = true
        undyne.depth = (deskchairless.depth + 100)
        undynedesk.sprite_index = spr_lw_police_table_broken
        undynedesk.depthcancel = true
        undynedesk.depth = (deskchairless.depth + 200)
        gml_Script_scr_speaker("undyne")
        gml_Script_msgsetloc(0, "\\E2* H-HEY^1, WAIT!!!!/%", "obj_npc_police_slash_Step_0_gml_430_0")
        gml_Script_d_make()
        global.facing = 0
    }
    con = 20
    alarm[0] = 10
}
if (con == 21)
{
    undyne.image_speed = 0.25
    if (undyne.x < 200 && undyne.y < 125)
    {
        undyne.sprite_index = spr_undyne_walk_right
        _temp_local_var_38.x = (undyne.x + 7)
        var _temp_local_var_43 = -9
        var _temp_local_var_44 = -9
        var _temp_local_var_45 = -9
        var _temp_local_var_46 = undyne
    }
    else if (undyne.y < 125)
    {
        undyne.depth = 0
        if (deskchairless.visible == true)
            deskchairless.visible = false
        undyne.sprite_index = spr_undyne_walk_down
        _temp_local_var_38.y = (undyne.y + 7)
        _temp_local_var_43 = -9
        _temp_local_var_44 = -9
        _temp_local_var_45 = -9
        _temp_local_var_46 = undyne
    }
    else if (undyne.x > 150)
    {
        undyne.sprite_index = spr_undyne_walk_left
        _temp_local_var_38.x = (undyne.x - 7)
        _temp_local_var_43 = -9
        _temp_local_var_44 = -9
        _temp_local_var_45 = -9
        _temp_local_var_46 = undyne
    }
    else if (undyne.y < 180)
    {
        undyne.sprite_index = spr_undyne_walk_down
        _temp_local_var_38.y = (undyne.y + 7)
        _temp_local_var_43 = -9
        _temp_local_var_44 = -9
        _temp_local_var_45 = -9
        _temp_local_var_46 = undyne
    }
    else
    {
        con = 22
        undyne.image_speed = 0
        undyne.image_index = 0
    }
}
if (con == 22 && (!gml_Script_d_ex()))
{
    con = 50
    undyne.visible = false
    gml_Script_scr_litemget(10)
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    un = 2
    un_actor = gml_Script_instance_create(undyne.x, undyne.y, obj_actor)
    gml_Script_scr_actor_setup(un, un_actor, "undyne")
    un_actor.sprite_index = spr_undyne_exasperated
    gml_Script_c_sel(un)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0)
    gml_Script_c_speaker("undyne")
    gml_Script_c_msgsetloc(0, "\\E2* NGAAHHHH!!^1! NOT AGAIN!!!/%", "obj_npc_police_slash_Step_0_gml_501_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sprite(1113)
    gml_Script_c_halt()
    gml_Script_c_speaker("undyne")
    gml_Script_c_msgsetloc(0, "\\E4* Looks like I gotta go recapture those criminals.../%", "obj_npc_police_slash_Step_0_gml_508_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sprite(1113)
    gml_Script_c_imageindex(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walk_wait("u", 3, 20)
    gml_Script_c_sprite(1115)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("undyne")
    gml_Script_c_msgsetloc(0, "\\E0* Hey^1, by the way^1, that yellow glasses lady./", "obj_npc_police_slash_Step_0_gml_522_0")
    gml_Script_c_msgnextloc("\\E2* Is she your teacher?/", "obj_npc_police_slash_Step_0_gml_523_0")
    gml_Script_c_msgnextloc("\\E7* She kinda had an accident earlier with her^1, uh^1, bike./", "obj_npc_police_slash_Step_0_gml_524_0")
    gml_Script_c_msgnextloc("\\E7* Just wanted to make sure she was feeling better./", "obj_npc_police_slash_Step_0_gml_525_0")
    gml_Script_c_msgnextloc("\\E1* So^1, uh..^1. give her this!/", "obj_npc_police_slash_Step_0_gml_526_0")
    gml_Script_c_facenext("none", 0)
    gml_Script_c_msgnextloc("* (You got a heart-shaped box of candies that says \"Get Well Soon\".)/", "obj_npc_police_slash_Step_0_gml_528_0")
    gml_Script_c_msgnextloc("* (It has \"to your bike\" hastily scrawled underneath the Get Well Soon.)/", "obj_npc_police_slash_Step_0_gml_529_0")
    gml_Script_c_facenext("undyne", "1")
    gml_Script_c_msgnextloc("\\E1* LOOK^1, \"GET WELL SOON\"S ALL THE STORE HAD!!/", "obj_npc_police_slash_Step_0_gml_531_0")
    gml_Script_c_msgnextloc("\\E2* OPEN IT AND I'LL ARREST YOU!^1! LOOK!!/", "obj_npc_police_slash_Step_0_gml_532_0")
    gml_Script_c_msgnextloc("\\E1* I'LL EVEN PUT A NOTE ON IT!!!/", "obj_npc_police_slash_Step_0_gml_533_0")
    gml_Script_c_msgnextloc("\\E2* NOW STOP INTERRUPTING ME!^1! I GOTTA GO!!/", "obj_npc_police_slash_Step_0_gml_534_0")
    gml_Script_c_facenext("none", 0)
    gml_Script_c_msgnextloc("* (You got the previously described box of candy with a note on it.)/%", "obj_npc_police_slash_Step_0_gml_536_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(un)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(1114)
    gml_Script_c_imageindex(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walk_wait("d", 8, 30)
    gml_Script_c_actortokris()
    gml_Script_c_terminatekillactors()
}
if (con == 50 && (!gml_Script_i_ex(895)))
{
    con = -1
    global.interact = 0
    global.facing = 0
    global.flag[317] = 1
    var _temp_local_var_49 = jail_collider
    instance_destroy()
}
if (napstacon == 10 && global.flag[317] == 1)
{
    global.interact = 1
    global.flag[317] = 2
    napstacon = 20
    alarm_sounded = 1
    with (obj_doorAny)
        doorFadeMusic = 1
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_c_var_instance(napstablook, "visible", 0)
    na = 1
    na_actor = gml_Script_instance_create(92, 84, obj_actor)
    gml_Script_scr_actor_setup(na, na_actor, "napstablook")
    na_actor.sprite_index = spr_npc_napstablook_police_up
    gml_Script_c_sel(na)
    gml_Script_c_autowalk(0)
    gml_Script_c_var_lerp("y", 84, 64, 15)
    gml_Script_c_wait(15)
    gml_Script_c_wait(5)
    gml_Script_c_mus("free_all")
    gml_Script_c_mus2("initloop", "napsta_alarm.ogg", 0)
    gml_Script_c_wait(5)
    gml_Script_c_var_lerp("y", 64, 84, 15)
    gml_Script_c_wait(15)
    gml_Script_c_sprite(1123)
    gml_Script_c_var_instance(napstablook, "visible", 1)
    gml_Script_c_wait(15)
    gml_Script_c_terminatekillactors()
}
if (napstacon == 20 && (!gml_Script_i_ex(895)))
{
    var _temp_local_var_52 = napstablook
    con = -1
}
