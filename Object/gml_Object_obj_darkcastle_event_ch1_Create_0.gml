con = 0
rflip = 0
if (global.plot >= 20)
    instance_destroy()
else
{
    gml_Script_snd_free_all_ch1()
    con = 1
    with (obj_mainchara_ch1)
        visible = false
    k = gml_Script_scr_dark_marker_ch1(460, (obj_mainchara_ch1.y + 60), 4198)
    s = gml_Script_scr_dark_marker_ch1(520, (obj_mainchara_ch1.y + 100), 3551)
    var _temp_local_var_1 = k
    vspeed = -2
    image_speed = 0.1
}
