if (breakcon == 1)
{
    breaktimer = 0
    gml_Script_scr_oflash()
    breakcon = 2
}
if (breakcon == 2)
{
    breaktimer++
    if (breaktimer >= 4)
    {
        gml_Script_snd_play(231)
        image_alpha = 0
        breakcon = 3
        for (var i = 0; i < 30; i++)
        {
            sparkle[i] = gml_Script_scr_marker((x + random_range(-15, 15)), (y + random_range(-15, 15)), 2471)
            sparkle[i].image_speed = 0.5
            sparkle[i].hspeed = random_range(-3, 3)
            sparkle[i].friction = 0.05
            sparkle[i].gravity = -0.1
        }
    }
}
if gml_Script_i_ex(347)
{
    if (obj_room_dw_city_postbaseball.minigame == 1)
    {
        if (mousefailcon == 1 && global.interact == 0)
        {
            global.interact = 1
            global.facing = 1
            obj_mainchara.fun = true
            obj_mainchara.sprite_index = spr_krisb_defeat
            yoffset = 0
            sprite_index = spr_mousefunnel_tilted
            gml_Script_snd_play(64)
            if (miceheld > 0)
            {
                var mousedrop = clamp(10, 1, miceheld)
                i = 0
                while (i < mousedrop)
                {
                    miceheld--
                    var mousepart = gml_Script_instance_create(x, y, obj_afterimage)
                    mousepart.sprite_index = spr_holemouse_emerge
                    gml_Script_scr_darksize(mousepart)
                    mousepart.image_alpha = 2
                    gml_Script_scr_jump_to_point((x + random_range(-40, 40)), ((obj_fountainkris_ch2_sideb).room_height + (sprite_height * 2)), 16, mousepart)
                }
            }
            mousefailcon++
            mousetimer = 0
        }
        if (mousefailcon == 2)
        {
            mousetimer++
            if gml_Script_i_ex(348)
                mousetimer = 0
            if (mousetimer >= 25)
            {
                obj_mainchara.fun = false
                global.interact = 0
                yoffset = 0
                sprite_index = spr_mousefunnel
                mousefailcon = 0
            }
        }
    }
    else
        mousefailcon = 0
}
