if (_c == "delaycmd")
{
    delaycmd = gml_Script_instance_create(0, 0, obj_cutscene_delaycmd)
    delaycmd.master_object = master_object
    command_actor[0] = delaycmd
    alarm[0] = delaycmd
    delaycmd._c = command_arg2[i]
    command_arg1[0] = delaycmd
    command_arg2[0] = delaycmd
    command_arg3[0] = delaycmd
    command_arg4[0] = delaycmd
    var _temp_local_var_1 = command_arg6[i]
    var _temp_local_var_2 = command_arg5[i]
    var _temp_local_var_3 = command_arg4[i]
    var _temp_local_var_4 = command_arg3[i]
    var _temp_local_var_5 = command_arg1[i]
    var _temp_local_var_6 = command_actor[i]
    if instant
    {
        alarm[0] = delaycmd
        delaycmd.instant = 1
        var _temp_local_var_7 = delaycmd
        var _temp_local_var_8 = obj_sneo_friedpipis
        event_user(0)
    }
}
if (_c == "walk")
{
    if (!instant)
    {
        actor_move = gml_Script_instance_create(0, 0, obj_move_actor)
        actor_move.target = command_actor[i]
        actor_move.direction_word = command_arg1[i]
        actor_move.speed = command_arg2[i]
        actor_move.time = command_arg3[i]
        var _temp_local_var_9 = actor_move
        event_user(8)
    }
    else
    {
        _temp_local_var_7.x = (command_actor[i].x + lengthdir_x((command_arg2[i] * command_arg3[i]), ((gml_Script_scr_facing_letter_to_number(command_arg1[i]) * 90) - 90)))
        _temp_local_var_8.y = (command_actor[i].y + lengthdir_y((command_arg2[i] * command_arg3[i]), ((gml_Script_scr_facing_letter_to_number(command_arg1[i]) * 90) - 90)))
        var _temp_local_var_52 = command_arg6[i]
        var _temp_local_var_53 = -9
        var _temp_local_var_54 = -9
        var _temp_local_var_55 = command_actor[i]
        var _temp_local_var_56 = obj_sneo_friedpipis
        var _temp_local_var_57 = command_arg6[i]
        var _temp_local_var_58 = -9
        var _temp_local_var_59 = command_actor[i]
    }
}
if (_c == "walkdirect")
{
    if (!instant)
    {
        actor_move = gml_Script_instance_create(0, 0, obj_move_to_point)
        actor_move.target = command_actor[i]
        actor_move.movex = command_arg1[i]
        actor_move.movey = command_arg2[i]
        actor_move.movemax = command_arg3[i]
        if (command_arg1[i] == obj_sneo_friedpipis)
            actor_move.movex = command_actor[i].x
        if (command_arg2[i] == c_black)
            actor_move.movey = command_actor[i].y
    }
    else
    {
        command_actor[i].x = command_arg1[i]
        command_actor[i].y = command_arg2[i]
    }
}
if (_c == "msgset")
    gml_Script_msgset(command_arg1[i], command_arg2[i])
if (_c == "msgnext")
    gml_Script_msgnext(command_arg1[i])
if (_c == "talk")
{
    if (!instant)
    {
        mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
        if (msgside >= 0)
            mydialoguer.side = msgside
        mydialoguer.zurasu = zurasu
    }
}
if (_c == "msgface")
    gml_Script_scr_anyface(command_arg1[i], command_arg2[i], command_arg3[i])
if (_c == "msgfacenext")
    gml_Script_scr_anyface_next(command_arg1[i], command_arg2[i])
if (_c == "msgside")
{
    if (command_arg1[i] == "any")
        msgside = -1
    if (command_arg1[i] == "top")
        msgside = 0
    if (command_arg1[i] == "bottom")
        msgside = 1
    if (command_arg1[i] == "zurasuon")
        zurasu = 1
    if (command_arg1[i] == "zurasuoff")
        zurasu = 0
}
if (_c == "emote")
{
    if (!instant)
    {
        command_actor[i].__arg0 = command_arg1[i]
        command_actor[i].__arg1 = command_arg2[i]
        command_actor[i].__arg2 = command_arg3[i]
        if (command_arg3[i] == obj_sneo_friedpipis)
        {
            var _temp_local_var_10 = command_actor[i]
            gml_Script_scr_emote(__arg0, __arg1)
        }
        else
        {
            _temp_local_var_10 = command_actor[i]
            gml_Script_scr_emote(__arg0, __arg1, __arg2)
        }
    }
}
if (_c == "speaker")
    gml_Script_scr_speaker(command_arg1[i])
if (_c == "fe")
{
    global.fe = command_arg1[i]
    if (command_arg2[i] != -2)
        global.fc = command_arg2[i]
}
if (_c == "msc")
{
    global.msc = command_arg1[i]
    gml_Script_scr_text(global.msc)
}
if (_c == "instancecreate")
{
    _instance = gml_Script_instance_create(command_arg1[i], command_arg2[i], command_arg3[i])
    if gml_Script_i_ex(master_object)
        master_object.cutscene_instance = _instance
}
if (_c == "var")
{
    if instant
    {
        if (command_arg5[i] != 0)
        {
            command_arg3[i] = command_arg4[i]
            command_arg5[i] = 0
        }
    }
    __chosenid = 0
    if (command_arg1[i] == obj_sneo_friedpipis)
        __chosenid = command_actor[i]
    else
        __chosenid = command_arg1[i]
    if (command_arg5[i] == 0)
        variable_instance_set(__chosenid, command_arg2[i], command_arg3[i])
    else if (command_arg6[i] == 0)
        gml_Script_scr_lerpvar_instance(__chosenid, command_arg2[i], command_arg3[i], command_arg4[i], command_arg5[i])
    else if (!is_string(command_arg6[i]))
        gml_Script_scr_lerpvar_instance(__chosenid, command_arg2[i], command_arg3[i], command_arg4[i], command_arg5[i], command_arg6[i], "in")
    else
    {
        var __easetype = real(string_digits(command_arg6[i]))
        if (string_char_at(command_arg6[i], 1) == "-")
        {
            __easetype *= -1
            command_arg6[i] = string_delete(command_arg6[i], 1, 1)
        }
        command_arg6[i] = string_delete(command_arg6[i], 1, 1)
        gml_Script_scr_lerpvar_instance(__chosenid, command_arg2[i], command_arg3[i], command_arg4[i], command_arg5[i], __easetype, command_arg6[i])
    }
}
if (_c == "script")
{
    if (command_arg3[i] != -10)
    {
        var __sarg1 = command_arg2[i]
        var __sarg2 = command_arg3[i]
        var __sarg3 = command_arg4[i]
        var __sarg4 = command_arg5[i]
        var __sarg5 = command_arg6[i]
        var __sarg_counted = 3
        if (command_arg4[i] == -3.14)
            __sarg_counted--
        if (command_arg5[i] == -3.14)
            __sarg_counted--
        if (command_arg6[i] == -3.14)
            __sarg_counted--
        if (command_arg3[i] == 0)
        {
            if (__sarg_counted == 0)
            {
                var _temp_local_var_11 = command_arg1[i]
                script_execute(__sarg1)
            }
            if (__sarg_counted == 1)
            {
                var _temp_local_var_12 = command_arg1[i]
                script_execute(__sarg1, __sarg3)
            }
            if (__sarg_counted == 2)
            {
                var _temp_local_var_13 = command_arg1[i]
                script_execute(__sarg1, __sarg3, __sarg4)
            }
            if (__sarg_counted == 3)
            {
                var _temp_local_var_14 = command_arg1[i]
                script_execute(__sarg1, __sarg3, __sarg4, __sarg5)
            }
        }
        else
        {
            if (__sarg_counted == 0)
            {
                _temp_local_var_11 = command_arg1[i]
                gml_Script_scr_script_repeat(__sarg1, -1, __sarg2)
            }
            if (__sarg_counted == 1)
            {
                _temp_local_var_12 = command_arg1[i]
                gml_Script_scr_script_repeat(__sarg1, -1, __sarg2, __sarg3)
            }
            if (__sarg_counted == 2)
            {
                _temp_local_var_13 = command_arg1[i]
                gml_Script_scr_script_repeat(__sarg1, -1, __sarg2, __sarg3, __sarg4)
            }
            if (__sarg_counted == 3)
            {
                _temp_local_var_14 = command_arg1[i]
                gml_Script_scr_script_repeat(__sarg1, -1, __sarg2, __sarg3, __sarg4, __sarg5)
            }
        }
    }
    else
    {
        var __commandtarget = command_arg1[i]
        var __commandscript = command_arg2[i]
        with (obj_script_delayed)
        {
            if (script == __commandscript && target == __commandtarget)
            {
                instance_destroy()
                alarm[0] = -5
                max_time = -300
            }
        }
    }
}
if (_c == "globalvar")
    variable_global_set(command_arg1[i], command_arg2[i])
if (_c == "autowalk")
{
    command_actor[i].auto_facing = command_arg1[i]
    command_actor[i].auto_walk = command_arg1[i]
}
if (_c == "autofacing")
    command_actor[i].auto_facing = command_arg1[i]
if (_c == "autodepth")
    command_actor[i].auto_depth = command_arg1[i]
if (_c == "depth")
    command_actor[i].depth = command_arg1[i]
if (_c == "depthobject")
    command_actor[i].depth = (command_arg1[i].depth + command_arg2[i])
if (_c == "flip")
{
    command_actor[i].__flipvalue = command_arg1[i]
    var _temp_local_var_15 = command_actor[i]
    gml_Script_scr_flip(__flipvalue)
}
if (_c == "facing")
{
    if (command_arg1[i] == "l" || command_arg1[i] == "d" || command_arg1[i] == "r" || command_arg1[i] == "u")
        gml_Script_scr_actor_facing(command_actor[i], command_arg1[i])
    else
    {
        command_actor[i]._setfacing = command_arg1[i]
        var _temp_local_var_43 = command_actor[i]
        gml_Script_scr_set_facing_sprites(_setfacing)
    }
}
if (_c == "halt")
{
    var _temp_local_var_17 = command_actor[i]
    gml_Script_scr_halt()
}
if (_c == "spin")
{
    if gml_Script_i_ex(command_actor[i])
        command_actor[i].spinspeed = command_arg1[i]
}
if (_c == "stick")
{
    if (command_arg1[i] == "on")
    {
        var _stickobj = command_arg2[i]
        var _stickdepth = command_arg3[i]
        var _temp_local_var_18 = command_actor[i]
        gml_Script_scr_stickto(_stickobj, _stickdepth)
    }
    else
    {
        _temp_local_var_18 = command_actor[i]
        gml_Script_scr_stickto_stop()
    }
}
if (_c == "sprite")
    command_actor[i].sprite_index = command_arg1[i]
if (_c == "specialsprite")
{
    command_actor[i].sprite_index = specialsprite[command_arg1[i]]
    command_actor[i].specialspriteno = command_arg1[i]
    var _temp_local_var_19 = command_actor[i]
}
if (_c == "visible")
    command_actor[i].visible = command_arg1[i]
if (_c == "imagespeed")
    command_actor[i].image_speed = command_arg1[i]
if (_c == "imageindex")
    command_actor[i].image_index = command_arg1[i]
if (_c == "animate")
{
    if (gml_Script_i_ex(command_actor[i]) && (!instant))
    {
        command_actor[i].__arg0 = command_arg1[i]
        command_actor[i].__arg1 = command_arg2[i]
        command_actor[i].__arg2 = command_arg3[i]
        var _temp_local_var_21 = command_actor[i]
        gml_Script_scr_animate(__arg0, __arg1, __arg2)
    }
}
if (_c == "soundplay")
{
    if (!instant)
    {
        var _snd = gml_Script_snd_play(command_arg1[i])
        if (command_arg2[i] != c_black)
            gml_Script_snd_volume(_snd, command_arg2[i], 0)
        if (command_arg2[i] != c_black)
            gml_Script_snd_pitch(_snd, command_arg3[i])
    }
}
if (_c == "mus" || _c == "music")
{
    if (command_arg1[i] == "loop")
        gml_Script_mus_loop(global.currentsong[1])
    if (command_arg1[i] == "play")
        gml_Script_mus_play(global.currentsong[1])
    if (command_arg1[i] == "stop")
        gml_Script_snd_stop(global.currentsong[1])
    if (command_arg1[i] == "free_all")
        gml_Script_snd_free_all()
    if (command_arg1[i] == "free")
        gml_Script_snd_free(global.currentsong[0])
    if (command_arg1[i] == "pause")
        gml_Script_snd_pause(global.currentsong[1])
    if (command_arg1[i] == "resume")
        gml_Script_snd_resume(global.currentsong[1])
    if (command_arg1[i] == "init")
        global.currentsong[0] = gml_Script_snd_init(command_arg2[i])
    if (command_arg1[i] == "initplay")
        gml_Script_mus_initplay(command_arg2[i])
    if (command_arg1[i] == "initloop")
        gml_Script_mus_initloop(command_arg2[i])
    if (command_arg1[i] == "volume")
        gml_Script_mus_volume(global.currentsong[1], command_arg2[i], command_arg3[i])
    if (command_arg1[i] == "pitch")
        gml_Script_snd_pitch(global.currentsong[1], command_arg2[i])
    if (command_arg1[i] == "pitchtime")
        gml_Script_snd_pitch_time(global.currentsong[1], command_arg2[i], command_arg3[i])
    if (command_arg1[i] == "loopsfx")
        mysound = gml_Script_snd_loop(command_arg2[i])
    if (command_arg1[i] == "loopsfxpitch")
        gml_Script_snd_pitch(mysound, command_arg2[i])
    if (command_arg1[i] == "loopsfxpitchtime")
        gml_Script_snd_pitch_time(mysound, command_arg2[i], command_arg3[i])
    if (command_arg1[i] == "loopsfxstop")
        gml_Script_snd_stop(mysound)
    if (command_arg1[i] == "loopsfxvolume")
        gml_Script_snd_volume(mysound, command_arg2[i], command_arg3[i])
}
if (_c == "fadeout")
{
    if (command_arg1[i] > obj_sneo_friedpipis)
    {
        __fadeouter = gml_Script_scr_fadeout(command_arg1[i])
        if (command_arg2[i] != c_black)
            __fadeouter.image_blend = command_arg2[i]
    }
    if (command_arg1[i] < obj_sneo_friedpipis)
    {
        if instance_exists(obj_fadeout)
        {
            obj_fadeout.image_alpha = 1
            obj_fadeout.fadespeed = (1 / command_arg1[i])
            obj_fadeout.fadein = 1
        }
    }
}
if (_c == "panspeed")
{
    if (!instant)
        gml_Script_scr_pan(command_arg1[i], command_arg2[i], command_arg3[i])
    else
    {
        gml_Script_camerax_set((gml_Script_camerax() + (command_arg1[i] * command_arg3[i])))
        gml_Script_cameray_set((gml_Script_cameray() + (command_arg2[i] * command_arg3[i])))
    }
}
if (_c == "pan")
{
    if (!instant)
        gml_Script_scr_pan_lerp(command_arg1[i], command_arg2[i], command_arg3[i])
    else
    {
        gml_Script_camerax_set(command_arg1[i])
        gml_Script_cameray_set(command_arg2[i])
    }
}
if (_c == "panobj")
{
    gml_Script_scr_pan_to_obj(command_arg1[i], command_arg2[i])
    if instant
    {
        with (obj_panner)
        {
            gml_Script_camerax_set(finalx)
            gml_Script_cameray_set(finaly)
            instance_destroy()
        }
    }
}
if (_c == "pannable")
{
    if instance_exists(obj_mainchara)
        obj_mainchara.cutscene = command_arg1[i]
}
if (_c == "shake")
{
    if (!instant)
        gml_Script_instance_create(0, 0, obj_shake)
}
if (_c == "shakex")
{
    if (!instant)
    {
        myshake = gml_Script_instance_create(0, 0, obj_shake)
        myshake.shakex = command_arg1[i]
        myshake.shakey = command_arg2[i]
        myshake.shakespeed = command_arg3[i]
    }
}
if (_c == "shakeobj")
{
    if (!instant)
    {
        var _temp_local_var_23 = command_actor[i]
        gml_Script_scr_shakeobj()
    }
}
if (_c == "jump")
{
    if gml_Script_i_ex(command_actor[i])
    {
        command_actor[i].__arg0 = command_arg1[i]
        command_actor[i].__arg1 = command_arg2[i]
        command_actor[i].__arg2 = command_arg3[i]
        command_actor[i].__arg3 = command_arg4[i]
        if (!instant)
        {
            var _temp_local_var_24 = command_actor[i]
            gml_Script_scr_jump_to_point(__arg0, __arg1, __arg2, __arg3)
        }
        else
        {
            command_actor[i].x = command_arg1[i]
            command_actor[i].y = command_arg2[i]
        }
    }
}
if (_c == "jumpinplace")
{
    if gml_Script_i_ex(command_actor[i])
    {
        command_actor[i].__arg0 = command_arg1[i]
        command_actor[i].__arg1 = command_arg2[i]
        if (!instant)
        {
            var _temp_local_var_25 = command_actor[i]
            gml_Script_scr_jump_in_place(__arg0, __arg1)
        }
    }
}
if (_c == "jumpsprite")
{
    if gml_Script_i_ex(command_actor[i])
    {
        command_actor[i].__arg0 = command_arg1[i]
        command_actor[i].__arg1 = command_arg2[i]
        command_actor[i].__arg2 = command_arg3[i]
        command_actor[i].__arg3 = command_arg4[i]
        command_actor[i].__arg4 = command_arg5[i]
        command_actor[i].__arg5 = command_arg6[i]
        if (!instant)
        {
            var _temp_local_var_26 = command_actor[i]
            gml_Script_scr_jump_to_point_sprite(__arg0, __arg1, __arg2, __arg3, __arg4, __arg5)
        }
        else
        {
            command_actor[i].x = command_arg1[i]
            command_actor[i].y = command_arg2[i]
        }
    }
}
if (_c == "addxy")
{
    _temp_local_var_26.x = (command_actor[i].x + command_arg1[i])
    _temp_local_var_25.y = (command_actor[i].y + command_arg2[i])
    var _temp_local_var_27 = command_actor[i]
    var _temp_local_var_28 = -9
    var _temp_local_var_29 = -9
    var _temp_local_var_30 = command_actor[i]
    var _temp_local_var_31 = command_actor[i]
    var _temp_local_var_32 = command_actor[i]
    var _temp_local_var_33 = -9
    var _temp_local_var_34 = command_actor[i]
}
if (_c == "setxy")
{
    command_actor[i].x = command_arg1[i]
    command_actor[i].y = command_arg2[i]
}
if (_c == "arg_objectxy")
{
    command_arg1[(i + 1)] = (command_arg1[i].x + command_arg2[i])
    command_arg2[(i + 1)] = (command_arg1[i].y + command_arg3[i])
}
if (_c == "actortoobject")
{
    gml_Script_instance_create(command_actor[i].x, command_actor[i].y, command_arg1[i])
    command_actor[i].visible = false
}
if (_c == "actortokris")
{
    for (jjj = 0; jjj < 20; jjj++)
    {
        if (actor_name[jjj] == "kris" && gml_Script_i_ex(actor_id[jjj]))
        {
            obj_mainchara.x = actor_id[jjj].x
            obj_mainchara.y = actor_id[jjj].y
            obj_mainchara.visible = true
            actor_id[jjj].visible = false
            if (actor_id[jjj].facing == "d")
                global.facing = 0
            if (actor_id[jjj].facing == "r")
                global.facing = 1
            if (actor_id[jjj].facing == "u")
                global.facing = 2
            if (actor_id[jjj].facing == "l")
                global.facing = 3
        }
    }
}
if (_c == "actortocaterpillar")
{
    _caterpillar_moved = 0
    for (lll = 0; lll < 2; lll++)
    {
        if gml_Script_i_ex(global.cinstance[lll])
        {
            for (jjj = 0; jjj < 20; jjj++)
            {
                if (actor_name[jjj] == global.cinstance[lll].name && gml_Script_i_ex(actor_id[jjj]))
                {
                    if (global.cinstance[lll].x != actor_id[jjj].x)
                    {
                        global.cinstance[lll].x = actor_id[jjj].x
                        _caterpillar_moved = 1
                    }
                    if (global.cinstance[lll].y != actor_id[jjj].y)
                    {
                        global.cinstance[lll].y = actor_id[jjj].y
                        _caterpillar_moved = 1
                    }
                    gml_Script_scr_caterpillar_facing_single(actor_name[jjj], actor_id[jjj].facing)
                    global.cinstance[lll].visible = true
                    actor_id[jjj].visible = false
                }
            }
        }
    }
    if (_caterpillar_moved == 1)
    {
        with (obj_caterpillarchara)
            gml_Script_scr_caterpillar_interpolate()
    }
}
if (_c == "saveload")
{
    if (command_arg1[i] == "save")
        gml_Script_scr_cutscene_savestate()
    if (command_arg1[i] == "load")
        gml_Script_scr_cutscene_loadstate()
}
if (_c == "select")
{
    actor_selected = actor_name[command_arg1[i]]
    actor_selected_id = actor_id[command_arg1[i]]
}
if (_c == "waitcustom")
{
    var _temp_local_var_39 = master_object
    customcon = 1
}
if (_c == "waitdialoguer")
{
    if (!instant)
    {
        waiting = 1
        cs_wait_dialogue = 1
        breakme = 1
    }
}
if (_c == "waitbox")
{
    if (!instant)
    {
        waiting = 1
        cs_wait_box = command_arg1[i]
        breakme = 1
    }
}
if (_c == "wait")
{
    cs_wait_amount = command_arg1[i]
    if instant
        cs_wait_amount = 1
    cs_wait_timer = 0
    waiting = 1
    breakme = 1
}
if (_c == "terminate")
{
    terminate_this_frame = 1
    breakme = 1
}
if (_c == "terminatekillactors")
{
    kill_actors = 1
    terminate_this_frame = 1
    breakme = 1
}
return;
