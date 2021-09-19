var _temp_local_var_1, _temp_local_var_2;
timer += 1
if (timer == 1)
    gml_Script_snd_free_all_ch1()
if (timer == 30)
{
    var _temp_local_var_1 = bg
    instance_destroy()
}
if (timer == 31)
    sprite_delete(global.screenshot)
if (timer == 50)
{
    gml_Script_snd_play_ch1(432)
    sprite_index = spr_heartbreak_ch1
    x -= 2
}
if (timer == 90)
{
    gml_Script_snd_play_ch1(433)
    visible = false
    sh[0] = gml_Script_instance_create_ch1((x - 2), y, 1403)
    sh[1] = gml_Script_instance_create_ch1(x, (y + 3), 1403)
    sh[2] = gml_Script_instance_create_ch1((x + 2), (y + 6), 1403)
    sh[3] = gml_Script_instance_create_ch1((x + 8), y, 1403)
    sh[4] = gml_Script_instance_create_ch1((x + 10), (y + 3), 1403)
    sh[5] = gml_Script_instance_create_ch1((x + 12), (y + 6), 1403)
    i = 0
    while (i < 6)
    {
        var _temp_local_var_2 = sh[i]
        direction = random(360)
        speed = 7
        gravity_direction = 270
        gravity = 0.2
        sprite_index = spr_heartshards_ch1
        image_speed = 0.2
    }
    if (global.tempflag[3] >= 1)
        timer += 15
}
if (timer == 140)
    gml_Script_instance_create_ch1(0, 0, 1460)
if (timer >= 80 && timer < 150)
{
    if gml_Script_button1_p_ch1()
        Z_COUNT += 1
    if (Z_COUNT >= 4)
        gml_Script_scr_tempload_ch1()
}
if (timer == 150)
    room_goto(PLACE_FAILURE_ch1)
