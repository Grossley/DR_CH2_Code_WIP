var _temp_local_var_1, _temp_local_var_4, _temp_local_var_7, _temp_local_var_8;
trackpos = audio_sound_get_track_position(global.currentsong[1])
if keyboard_check_pressed(ord("R"))
    room_restart()
if keyboard_check_pressed(ord("N"))
    audio_sound_set_track_position(global.currentsong[1], 10)
if (maindog == obj_sneo_friedpipis)
{
    maindog = gml_Script_instance_create(0, 120, obj_marker)
    maindog.sprite_index = spr_dogcar
    maindog.hspeed = 5
    maindog.image_xscale = -1
    maindog.image_yscale = 1
    maindog.image_speed = 0.25
    var _temp_local_var_1 = maindog
    gml_Script_scr_depth()
}
trigpoint = 11.375
if ((trackpos >= (trigpoint - 0.03) && trackpos <= (trigpoint + 0.01)) || (trackpos >= (trigpoint - 0.03) && trackpos <= (trigpoint + 0.01)))
{
    var dognum = irandom_range(4, 8)
    var i = 0
    while (i < dognum)
    {
        var newdog = gml_Script_instance_create(0, (120 + random_range(-40, 40)), obj_marker)
        newdog.sprite_index = spr_dogcar
        newdog.hspeed = random_range(5, 8)
        newdog.image_xscale = -0.5
        newdog.image_yscale = 0.5
        newdog.friction = random_range(0.01, -0.01)
        newdog.image_speed = (((hspeed / 4) * 0.25) + 0.25)
        var _temp_local_var_4 = newdog
        gml_Script_scr_depth()
    }
}
trigpoint = 14
if ((trackpos >= (trigpoint - 0.03) && trackpos <= (trigpoint + 0.01)) || (trackpos >= (trigpoint - 0.03) && trackpos <= (trigpoint + 0.01)))
{
    dognum = irandom_range(5, 12)
    i = 0
    while (i < dognum)
    {
        newdog = gml_Script_instance_create(320, (120 + random_range(-40, 40)), obj_marker)
        newdog.sprite_index = spr_dogcar
        newdog.hspeed = (-random_range(5, 8))
        newdog.image_xscale = 0.5
        newdog.image_yscale = 0.5
        newdog.friction = random_range(0.01, -0.01)
        newdog.image_speed = (((hspeed / 4) * 0.25) + 0.25)
        var _temp_local_var_7 = newdog
        gml_Script_scr_depth()
    }
}
if gml_Script_i_ex(127)
{
    with (obj_marker)
    {
        if (x > 384)
        {
            if (id != other.maindog)
                instance_destroy()
        }
    }
}
var _temp_local_var_8 = maindog
trigpoint = 2.74
if (other.trackpos >= (trigpoint - 0.03) && other.trackpos <= (trigpoint + 0.01))
{
    hspeed = -5
    image_xscale = (-sign(hspeed))
    x = 320
}
trigpoint = 5.643
if (other.trackpos >= (trigpoint - 0.03) && other.trackpos <= (trigpoint + 0.01))
{
    hspeed = 5
    image_xscale = (-sign(hspeed))
    x = 0
}
trigpoint = 8.653
if (other.trackpos >= (trigpoint - 0.03) && other.trackpos <= (trigpoint + 0.01))
{
    hspeed = -5
    image_xscale = (-sign(hspeed))
    x = 320
}
trigpoint = 11.375
if (other.trackpos >= (trigpoint - 0.03) && other.trackpos <= (trigpoint + 0.01))
{
    hspeed = 6
    image_xscale = (-sign(hspeed))
    x = 0
}
trigpoint = 14
if (other.trackpos >= (trigpoint - 0.03) && other.trackpos <= (trigpoint + 0.01))
{
    hspeed = -6
    image_xscale = (-sign(hspeed))
    x = 320
}
trigpoint = 16.557
if (other.trackpos >= (trigpoint - 0.03) && other.trackpos <= (trigpoint + 0.01))
{
    hspeed = 4
    image_xscale = (-sign(hspeed))
    x = 0
}
