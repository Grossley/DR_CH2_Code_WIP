var _temp_local_var_1, _temp_local_var_7, _temp_local_var_8;
if (con == 1)
{
    global.interact = 1
    con = 2
    alarm[4] = 10
}
if (con == 2)
    global.interact = 1
if (con == 3)
{
    global.typer = 12
    global.fc = 3
    global.fe = 4
    global.msg[0] = "obj_rudy_slash_Step_0_gml_15_0"
    global.msg[1] = "obj_rudy_slash_Step_0_gml_16_0"
    gml_Script_scr_rudface_ch1(2, 0)
    global.msg[3] = "obj_rudy_slash_Step_0_gml_18_0"
    global.msg[4] = "obj_rudy_slash_Step_0_gml_19_0"
    gml_Script_scr_noeface_ch1(5, 2)
    global.msg[6] = "obj_rudy_slash_Step_0_gml_21_0"
    gml_Script_scr_rudface_ch1(7, 7)
    global.msg[8] = "obj_rudy_slash_Step_0_gml_23_0"
    con = 4
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 4)
{
}
else
    var _temp_local_var_8 = 0
sprite_index = spr_rudy_laugh_ch1
480
image_speed = 0.25
con = 5
alarm[4] = 30
if (con == 6)
{
    image_index = 0
    480
    sprite_index = spr_rudy_cough_ch1
    481
    con = 7
    alarm[4] = 30
}
if (con == 8)
{
    global.typer = 12
    global.fc = 3
    global.fe = 4
    sprite_index = spr_rudy_l_ch1
    global.msg[0] = "obj_rudy_slash_Step_0_gml_53_0"
    gml_Script_scr_rudface_ch1(1, 2)
    global.msg[2] = "obj_rudy_slash_Step_0_gml_55_0"
    gml_Script_scr_noeface_ch1(3, 4)
    global.msg[4] = "obj_rudy_slash_Step_0_gml_57_0"
    global.msg[5] = "obj_rudy_slash_Step_0_gml_58_0"
    gml_Script_scr_rudface_ch1(6, 4)
    global.msg[7] = "obj_rudy_slash_Step_0_gml_60_0"
    global.msg[8] = "obj_rudy_slash_Step_0_gml_61_0"
    gml_Script_scr_noeface_ch1(9, 7)
    global.msg[10] = "obj_rudy_slash_Step_0_gml_63_0"
    gml_Script_scr_rudface_ch1(11, 7)
    global.msg[12] = "obj_rudy_slash_Step_0_gml_65_0"
    gml_Script_scr_noeface_ch1(13, 8)
    global.msg[14] = "obj_rudy_slash_Step_0_gml_67_0"
    global.msg[15] = "obj_rudy_slash_Step_0_gml_68_0"
    global.msg[16] = "obj_rudy_slash_Step_0_gml_69_0"
    gml_Script_scr_rudface_ch1(17, 4)
    global.msg[18] = "obj_rudy_slash_Step_0_gml_71_0"
    global.msg[19] = "obj_rudy_slash_Step_0_gml_72_0"
    gml_Script_scr_noeface_ch1(20, 3)
    global.msg[21] = "obj_rudy_slash_Step_0_gml_74_0"
    gml_Script_scr_rudface_ch1(22, 6)
    global.msg[23] = "obj_rudy_slash_Step_0_gml_76_0"
    gml_Script_scr_noeface_ch1(24, 4)
    global.msg[25] = "obj_rudy_slash_Step_0_gml_78_0"
    gml_Script_scr_rudface_ch1(26, 7)
    global.msg[27] = "obj_rudy_slash_Step_0_gml_80_0"
    gml_Script_scr_noeface_ch1(28, 8)
    global.msg[29] = "obj_rudy_slash_Step_0_gml_82_0"
    gml_Script_scr_rudface_ch1(30, 2)
    global.msg[31] = "obj_rudy_slash_Step_0_gml_84_0"
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 9
}
if (con == 9)
{
}
else
    var _temp_local_var_7 = 0
var _temp_local_var_1 = n
sprite_index = spr_noelle_d_ch1
vspeed = 2
image_speed = 0.25
