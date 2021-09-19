var _temp_local_var_2;
if (active == true)
{
    if (global.interact == 0)
    {
        t = ((t + increment) % 360)
        shift = (amplitude * dsin(t))
        x = (xx + shift)
        if (type == 0)
        {
            if (place_meeting(x, y, obj_caterpillarchara) || place_meeting(x, y, obj_mainchara) || place_meeting(x, y, obj_actor))
            {
                if instance_exists(obj_controller_dw_mansion_east_1f_a)
                    obj_controller_dw_mansion_east_1f_a.triggered = 1
                image_index = 1
                gml_Script_snd_play(choose(164, 165))
                brokenpot = gml_Script_scr_dark_marker(x, y, sprite_index)
                brokenpot.image_index = 1
                var _temp_local_var_2 = brokenpot
                gml_Script_scr_depth_alt()
            }
        }
        if (type == 1)
        {
            if (con == 0)
            {
                if (place_meeting(x, y, obj_caterpillarchara) || place_meeting(x, y, obj_mainchara) || place_meeting(x, y, obj_actor))
                {
                    active = false
                    global.interact = 1
                    con = 1
                }
            }
        }
    }
}
else
    image_index = 1
if (x > xprevious)
    going = "right"
if (x < xprevious)
    going = "left"
tellspeed = (x - xprevious)
if (con == 1)
{
    pipismarker = gml_Script_scr_dark_marker(x, (y - (sprite_height / 2)), 2000)
    wheel1 = gml_Script_scr_marker((x - 8), ((y - 8) + (active * 8)), 2069)
    wheel2 = gml_Script_scr_marker((x + 8), ((y - 8) + (active * 8)), 2069)
    wheel1.hspeed = 16
    wheel2.hspeed = -16
    wheel1.friction = 0.5
    wheel2.friction = 0.5
    wheel1.depth = (depth + 10)
    wheel2.depth = (depth - 10)
    gml_Script_scr_doom(wheel1, 30)
    gml_Script_scr_doom(wheel2, 30)
    gml_Script_scr_darksize(pipismarker)
    visible = false
    myinteract = 0
    gml_Script_snd_play_pitch(297, 1.4)
    con = 2
    timer = 0
    boss = true
}
if (con == 2)
{
    timer++
    if (timer == 15)
    {
        alarm[4] = 30
        global.flag[9] = 2
        gml_Script_scr_battle(102, 0, pipismarker, 0, 0)
    }
}
if (con == 3)
    instance_destroy()
