var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_17, _temp_local_var_18;
curtotal = 0
funbuffer -= 1
for (i = 0; i < tiletotal; i += 1)
{
    if (tileid[i].stepped == true)
        curtotal += 1
}
if (curtotal == funtotal && funbuffer < -1)
{
    if (room == room_field_puzzle1_ch1)
    {
        var _temp_local_var_2 = block[wonamt]
        instance_destroy()
    }
    wonamt += 1
    gml_Script_snd_play_ch1(432)
    funbuffer = 7
    if (wonamt == wonmax)
    {
        if (null.room == room_field_puzzle2_ch1)
            shakecon = 1
        if (global.plot < plotamt)
            global.plot = plotamt
        active = 2
        sprite_index = spr_hourglass_switch_off_ch1
        funbuffer = -1
        with (obj_glowtile_ch1)
        {
            active = false
            stepped = false
            stepbuffer = -1
            sprite_index = spr_glowtile_off_ch1
        }
    }
}
if (funbuffer == 4)
{
    with (obj_glowtile_ch1)
    {
        active = false
        stepped = false
        stepbuffer = -1
        sprite_index = spr_glowtile_off_ch1
    }
}
if (funbuffer == 1)
    event_user(2)
if (stepnoise == true)
{
    gml_Script_snd_play_ch1(457)
    stepnoise = false
}
if (active == true)
{
    failtimer += 1
    image_index = (failtimer / (failmax / 8))
    if (failtimer >= failmax)
    {
        active = false
        sprite_index = spr_hourglass_switch_off_ch1
        gml_Script_snd_play_ch1(381)
        failamt += 1
        if (failamt >= 3)
        {
            if (talked == 0)
            {
                if (global.interact == 0)
                {
                    if (obj_darkcontroller_ch1.atalk == 0)
                        var _temp_local_var_3 = null.room == room_field_puzzle1_ch1
                    else
                        var _temp_local_var_18 = 0
                }
                else
                    var _temp_local_var_18 = 0
            }
            else
                var _temp_local_var_18 = 0
        }
        else
            var _temp_local_var_18 = 0
        if (null.room == room_field_puzzle1_ch1)
        {
            talked = 1
            global.interact = 1
            global.fc = 2
            global.typer = 31
            global.fe = 1
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_glowtilepuzz_slash_Step_0_gml_77_0")
            global.msg[1] = ((gml_Script_scr_84_get_lang_string_ch1("obj_glowtilepuzz_slash_Step_0_gml_78_0") + gml_Script_scr_get_input_name_ch1(5)) + gml_Script_scr_84_get_lang_string_ch1("obj_glowtilepuzz_slash_Step_0_gml_78_1"))
            gml_Script_instance_create_ch1(0, 0, 1326)
        }
        if (failamt >= 3)
        {
            if (talked == 0)
            {
                if (global.interact == 0)
                    _temp_local_var_2 = block[wonamt].room == room_field_puzzle2_ch1
                else
                    var _temp_local_var_17 = 0
            }
            else
                var _temp_local_var_17 = 0
        }
        else
            var _temp_local_var_17 = 0
        if (block[wonamt].room == room_field_puzzle2_ch1)
        {
            talked = 1
            global.interact = 1
            global.fc = 2
            global.typer = 31
            global.fe = 1
            if (!gml_Script_scr_havechar_ch1(2))
            {
                global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_glowtilepuzz_slash_Step_0_gml_91_0")
                global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_glowtilepuzz_slash_Step_0_gml_92_0")
            }
            if (gml_Script_scr_havechar_ch1(2) && obj_darkcontroller_ch1.atalk == 0)
            {
                global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_glowtilepuzz_slash_Step_0_gml_98_0")
                global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_glowtilepuzz_slash_Step_0_gml_99_0")
                gml_Script_scr_susface_ch1(2, 2)
                global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_glowtilepuzz_slash_Step_0_gml_101_0")
            }
            if (gml_Script_scr_havechar_ch1(2) && obj_darkcontroller_ch1.atalk == 1)
            {
                global.fc = 1
                global.fe = 0
                global.typer = 30
                global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_glowtilepuzz_slash_Step_0_gml_110_0")
                global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_glowtilepuzz_slash_Step_0_gml_111_0")
                gml_Script_scr_ralface_ch1(2, 8)
                global.msg[3] = ((gml_Script_scr_84_get_lang_string_ch1("obj_glowtilepuzz_slash_Step_0_gml_113_0") + gml_Script_scr_get_input_name_ch1(5)) + gml_Script_scr_84_get_lang_string_ch1("obj_glowtilepuzz_slash_Step_0_gml_113_1"))
            }
            gml_Script_instance_create_ch1(0, 0, 1326)
        }
        with (obj_glowtile_ch1)
        {
            active = false
            stepped = false
            stepbuffer = -1
            sprite_index = spr_glowtile_off_ch1
        }
    }
}
if (talked == 1 && gml_Script_d_ex_ch1() == 0)
{
    talked = 2
    global.interact = 0
}
if (shakecon == 1 && global.interact == 0)
{
    global.interact = 1
    gml_Script_snd_play_ch1(376)
    gml_Script_instance_create_ch1(0, 0, 1464)
    shakecon = 2
}
if (shakecon == 2 && (!instance_exists(obj_shake_ch1)))
{
    global.fc = 0
    global.typer = 6
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_glowtilepuzz_slash_Step_0_gml_148_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    shakecon = 3
}
if (shakecon == 3 && gml_Script_d_ex_ch1() == 0)
{
    global.interact = 0
    shakecon = 4
}
