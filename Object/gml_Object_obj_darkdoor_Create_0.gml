image_speed = 0
open = 0
siner = 0
xsin = 0
con = 0
if (global.chapter == 1)
{
    if (global.plot < 5)
    {
        con = 1
        with (obj_mainchara)
            visible = false
        k = gml_Script_scr_marker(290, 198, spr_krisu)
        s = gml_Script_scr_marker(310, 190, spr_susieu)
        global.interact = 1
        with (s)
        {
            vspeed = -1
            image_speed = 0.2
        }
        with (k)
        {
            vspeed = -1
            image_speed = 0.2
        }
        alarm[4] = 90
    }
    else
    {
        block = gml_Script_instance_create(280, 100, obj_solidblock)
        block.image_xscale = 4
        sunset = gml_Script_scr_marker(0, 0, spr_doorarea_sunsetoverlay)
        with (sunset)
        {
            image_alpha = 0.4
            depth = 2000
        }
    }
    if (global.plot == 250)
    {
        with (obj_mainchara)
        {
            x = obj_markerD.x
            y = obj_markerD.y
        }
        global.interact = 1
        con = 40
    }
}
if (global.chapter >= 2)
{
    if (global.plot >= 100)
    {
        sunset = gml_Script_scr_marker(0, 0, spr_doorarea_sunsetoverlay)
        with (sunset)
        {
            image_alpha = 0.4
            depth = 2000
        }
        if (!gml_Script_i_ex(obj_musicer_town))
            gml_Script_instance_create(0, 0, obj_musicer_town)
    }
}
