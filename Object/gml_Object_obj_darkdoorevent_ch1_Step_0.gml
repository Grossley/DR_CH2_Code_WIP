var _temp_local_var_3, _temp_local_var_5, _temp_local_var_6;
if (hcon == 1)
{
    if instance_exists(obj_mainchara_ch1)
    {
        if (obj_mainchara_ch1.x >= 220 && global.interact == 0)
        {
            global.interact = 1
            hcon = 2
            global.msc = 140
            global.fc = 2
            global.fe = 3
            global.typer = 31
            gml_Script_scr_text_ch1(global.msc)
            gml_Script_instance_create_ch1(0, 0, 1326)
        }
    }
}
if (hcon == 2)
{
    if (gml_Script_d_ex_ch1() == 0)
    {
        if (global.plot < 32)
            global.plot = 32
        hcon = 3
        global.interact = 0
    }
}
if (con == 1)
{
    if instance_exists(obj_mainchara_ch1)
    {
        if (obj_mainchara_ch1.y <= 200 && global.interact == 0)
        {
            global.interact = 1
            con = 2
            gml_Script_mus_volume_ch1(global.currentsong[1], 0, 60)
            alarm[4] = 40
        }
    }
}
if (con == 2)
{
    with (obj_mainchara_ch1)
        image_alpha -= 0.04
}
if (con == 3)
{
    if instance_exists(global.cinstance[0])
        con = 4
    else
        con = 20
}
if (con == 4)
{
    r = gml_Script_scr_dark_marker_ch1(global.cinstance[0].x, global.cinstance[0].y, 3567)
    var _temp_local_var_3 = global.cinstance[0]
    instance_destroy()
}
if (con == 6)
{
    var _temp_local_var_5 = r
    gml_Script_scr_halt_ch1()
    sprite_index = spr_ralseid_ch1
}
if (con == 8)
{
    var _temp_local_var_6 = r
    visible = false
}
if (con == 20)
{
    image_index = 1
    gml_Script_snd_play_ch1(378)
    gml_Script_instance_create_ch1(0, 0, 1464)
    con = 21
    alarm[4] = 70
}
if (con == 22)
{
    gml_Script_snd_free_all_ch1()
    f = gml_Script_instance_create_ch1(0, 0, 1460)
    f.fadespeed = 0.025
    con = 23
    alarm[4] = 60
}
if (con == 24)
{
    global.plot = 33
    global.interact = 0
    global.facing = 0
    gml_Script_instance_create_ch1(0, 0, 1462)
    room_goto(room_field_start_ch1)
}
