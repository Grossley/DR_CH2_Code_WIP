var _temp_local_var_3;
drawblack = 2
drawtrack = 1
trackx = 0
tracky0 = 180
tracky1 = 240
tracky2 = 300
fightmode = 0
trackspeed = 0
trackaccel = 0
trackspeedmax = 0
cityscapefade = 0
cityscape_active = 0
cityscape_speed = 0
cityscape_alpha = 0
init = 0
con = -1
customcon = 0
timer = 0
sneo_x_save = 0
sneo_y_save = 0
shortened = 0
special_scene = 0
rudebuster = 0
sneo_fly = 0
sneo_release = 0
forcend = 0
shop_spamton_bg_con = 0
shop_spamton_bg_timer = 0
cityscape_speed_max = 5
if (global.chapter != 2 || global.flag[309] < 8)
{
}
else
{
    if (global.tempflag[32] == 1)
        shortened = 1
    start_xpos = (shortened ? (x + 100) : x)
    con = 1
    gml_Script_scr_losechar()
    if instance_exists(obj_caterpillarchara)
        instance_destroy(obj_caterpillarchara)
    coaster_marker_kris = gml_Script_scr_dark_marker(0, (gml_Script_cameray() - 500), 2052)
    var _temp_local_var_3 = coaster_marker_kris
    gml_Script_scr_depth()
}
