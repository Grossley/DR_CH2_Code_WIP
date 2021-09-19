timer += 1
if (timer <= 15)
{
    flashtimer += 1
    image_alpha = abs(cos((flashtimer / 2)))
}
if (timer == 15)
{
    image_alpha = 1
    vspeed = 0.1
    if (!gml_Script_snd_is_playing(157))
    {
        spawn = gml_Script_snd_play_pitch(157, 2)
        gml_Script_snd_volume(spawn, 0.6, 0)
    }
    con = 1
}
if (con == 1)
{
    if (room == room_dw_mansion_east_4f_c)
    {
        vspeed = clamp(vspeed, 0, 18)
        vspeed *= 1.6
    }
    else
    {
        vspeed = clamp(vspeed, 0, 14)
        vspeed *= 1.5
    }
    if (y >= (basey + fallAmount))
    {
        y = (basey + fallAmount)
        con = 2
    }
}
if (con == 2)
{
    left = gml_Script_instance_create(x, (y - (sprite_height / 2)), obj_hangplug_sparkwave)
    var _temp_local_var_1 = left
    dir = "left"
}
gml_Script_scr_depth_alt()
