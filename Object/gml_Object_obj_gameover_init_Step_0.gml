var _temp_local_var_1, _temp_local_var_2;
timer += 1
if (timer == 1)
    gml_Script_snd_free_all()
if (timer == 30)
{
    var _temp_local_var_1 = bg
    instance_destroy()
}
if (timer == 31)
    sprite_delete(global.screenshot)
if (timer == 50)
{
    gml_Script_snd_play(164)
    sprite_index = spr_heartbreak
    x -= 2
}
if (timer == 90)
{
    gml_Script_snd_play(165)
    visible = false
    sh[0] = gml_Script_instance_create((x - 2), y, obj_marker)
    sh[1] = gml_Script_instance_create(x, (y + 3), obj_marker)
    sh[2] = gml_Script_instance_create((x + 2), (y + 6), obj_marker)
    sh[3] = gml_Script_instance_create((x + 8), y, obj_marker)
    sh[4] = gml_Script_instance_create((x + 10), (y + 3), obj_marker)
    sh[5] = gml_Script_instance_create((x + 12), (y + 6), obj_marker)
    i = 0
    while (i < 6)
    {
        var _temp_local_var_2 = sh[i]
        direction = random(360)
        speed = 7
        gravity_direction = 270
        gravity = 0.2
        sprite_index = spr_heartshards
        image_speed = 0.2
    }
    if (global.tempflag[3] >= 1)
        timer += 15
}
if (timer == 140)
    gml_Script_instance_create(0, 0, obj_fadeout)
if (timer >= 80 && timer < 150)
{
    if gml_Script_button1_p()
        Z_COUNT += 1
    if (Z_COUNT >= 4)
        gml_Script_scr_tempload()
}
if (timer == 150)
    room_goto(PLACE_FAILURE)