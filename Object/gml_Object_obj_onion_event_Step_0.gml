if (global.chapter == 2 && global.flag[424] > 0)
{
    if instance_exists(obj_ch2_room_beach)
    {
        with (obj_ch2_room_beach)
            canrest = 1
        instance_destroy()
    }
}
if (onioncount > 0)
    onioncount -= 1
if (global.flag[258] == 0)
{
    if (onioncount >= 200 && con == 0 && global.flag[258] == 0)
    {
        if (global.chapter == 1)
        {
            global.flag[258] = 1
            onioncount = 1
            global.facing = 1
            con = 1
            alarm[4] = 10
            global.interact = 1
        }
    }
    if (global.chapter == 2)
    {
        if instance_exists(obj_ch2_room_beach)
        {
            with (obj_ch2_room_beach)
                canrest = 1
            instance_destroy()
        }
    }
}
else if (global.flag[258] == 1 || global.flag[258] == 2)
{
    if (obj_mainchara.x > x)
    {
        if (con == -1)
        {
            con = 2
            global.facing = 1
            global.interact = 1
        }
        if (con == 2)
        {
            var _temp_local_var_5 = onion
            on = 1
        }
        if (con == 4)
        {
            global.facing = 1
            var _temp_local_var_6 = onion
            on = 2
        }
        if (con == 6)
        {
            global.fc = 0
            global.typer = 5
            global.msc = (global.chapter == 1 ? 195 : 1030)
            gml_Script_scr_text(global.msc)
            gml_Script_instance_create(0, 0, obj_dialoguer)
            con = 7
        }
        if (con == 7 && (!gml_Script_d_ex()))
        {
            global.interact = 1
            onion.on = 4
            con = ((global.chapter == 2 && gml_Script_scr_havechar(2)) ? 29 : 8)
            alarm[4] = 150
        }
        if (con == 9)
        {
            con = 10
            global.flag[424] = 1
            var _temp_local_var_14 = onion
            instance_destroy()
        }
        if (con == 20 && customcon == 1)
        {
            con = 21
            customcon = 0
            gml_Script_c_waitcustom_end()
        }
        if (con == 21)
        {
            con = 22
            gml_Script_c_speaker("no_name")
            gml_Script_c_msgsetloc(0, "\\M3* Hey....^1. thought I told you..^1. to come alone.../", "obj_onion_event_slash_Step_0_gml_110_0")
            gml_Script_c_facenext("susie", 0)
            gml_Script_c_msgnextloc("* ..^1. you know what^1, hell if I'm getting involved in this./%", "obj_onion_event_slash_Step_0_gml_112_0")
            gml_Script_c_talk_wait()
            gml_Script_c_walk_wait("l", 4, 40)
            gml_Script_c_waitcustom()
        }
        if (con == 22 && customcon == 1)
        {
            customcon = 0
            con = 6
        }
        if (con == 30)
        {
            con = 33
            customcon = 0
            gml_Script_c_waitcustom_end()
            gml_Script_c_sel(su)
            gml_Script_c_actormoveparty(30)
            gml_Script_c_wait(45)
            gml_Script_c_speaker("susie")
            gml_Script_c_msgsetloc(0, "* Hey Kris. So^1, uh.../", "obj_onion_event_slash_Step_0_gml_139_0")
            gml_Script_c_msgnextloc("\\EK* Do you do weird stuff like this every day after school?/%", "obj_onion_event_slash_Step_0_gml_140_0")
            gml_Script_c_talk_wait()
            gml_Script_c_actortokris()
            gml_Script_c_actortocaterpillar()
            gml_Script_c_terminatekillactors()
        }
        if (con == 33 && (!gml_Script_i_ex(895)))
            con = 9
    }
}
else if (global.flag[258] == 3)
{
    if instance_exists(obj_ch2_room_beach)
    {
        with (obj_ch2_room_beach)
            canrest = 1
        instance_destroy()
    }
}
