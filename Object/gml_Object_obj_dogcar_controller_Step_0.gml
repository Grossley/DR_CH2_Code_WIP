if (con == 0 && obj_mainchara.x >= x)
{
    gml_Script_instance_create((gml_Script___view_get(0, 0) + 700), obj_mainchara.y, obj_dogcar)
    con = 1
}
if (con == 2)
{
    global.interact = 1
    with (obj_mainchara)
        alarm[1] = -1
    black = true
    with (obj_dogcar)
        instance_destroy()
    with (obj_animation)
        instance_destroy()
    with (obj_dmgwriter)
        instance_destroy()
    audio_stop_all()
    audio_play_sound(snd_break2, 50, false)
    con = 3
    timer = 0
    remy = obj_mainchara.y
    remx = obj_mainchara.x
    fellkris = gml_Script_scr_dark_marker(obj_mainchara.x, obj_mainchara.y, 2426)
    fellkris.depth = -200
}
if (con == 3)
{
    timer += 1
    if (timer >= 45)
    {
        timer = 0
        con = 4
    }
}
if (con == 4)
{
    gml_Script_mus_initloop("gameover_short.ogg")
    gml_Script_instance_create((gml_Script___view_get(0, 0) + 110), (gml_Script___view_get(1, 0) + 100), obj_dogcar_gameover)
    con = 5
    timer = 0
}
if (con == 5)
{
    var _temp_local_var_2 = fellkris
    image_alpha -= 0.04
    y += 4
}
if (con == 6)
{
    if (!instance_exists(obj_dogcar_gameover))
    {
        timer += 1
        if (timer >= 100)
        {
            global.flag[917] = 1
            global.interact = 0
            global.facing = 0
            fader = gml_Script_instance_create(0, 0, obj_persistentfadein)
            fader.image_alpha = 6
            fader.fadespeed = -2
            gml_Script_scr_itemget(33)
            room_goto(room_dw_city_moss)
        }
    }
}
