if (hit == 0 && o_boxingcontroller.hit_baseball_check == 0 && y < c)
{
    if arcade
        gml_Script_snd_play(321)
    else
        gml_Script_snd_play(115)
    hit = 1
    baseball_combo_timer = 2
    o_boxingcontroller.hit_baseball += 1
    o_boxingcontroller.hit_baseball_check = 1
    y = (o_boxingcontroller.y - 184)
    if (other.image_xscale == 2)
        hit_direction = -1
    else
        hit_direction = 1
    gml_Script_instance_create(x, (o_boxingcontroller.y - 184), obj_bq_fist_flash_fast)
    if (o_boxingcontroller.swordactive == 1)
        alarm[0] = 5
    if (o_boxingcontroller.wireframe_boxing == 1)
    {
        gml_Script_instance_create((x - 15), (y - 15), obj_octagon_triangle)
        gml_Script_instance_create(x, (y - 15), obj_octagon_triangle)
        gml_Script_instance_create((x + 15), (y - 15), obj_octagon_triangle)
        gml_Script_instance_create((x - 15), y, obj_octagon_triangle)
        gml_Script_instance_create(x, y, obj_octagon_triangle)
        gml_Script_instance_create((x + 15), y, obj_octagon_triangle)
        gml_Script_instance_create((x - 15), (y + 15), obj_octagon_triangle)
        gml_Script_instance_create(x, (y + 15), obj_octagon_triangle)
        gml_Script_instance_create((x + 15), (y + 15), obj_octagon_triangle)
        instance_destroy()
        o_boxing_wireframe.text = o_boxingcontroller.default_string
    }
    with (o_boxingcontroller)
    {
        if (duckactive == 1)
        {
            if (arcade == 1)
            {
                gml_Script_snd_pitch(308, (0.75 + random(0.5)))
                gml_Script_snd_play(308)
            }
            else
            {
                gml_Script_snd_pitch(56, (0.75 + random(0.5)))
                gml_Script_snd_play(56)
            }
            color_fade_alpha = 1
            global.hp[1] += 4
            if (global.hp[1] > global.maxhp[1])
                global.hp[1] = global.maxhp[1]
        }
        if (laseractive == 1)
            laserpunchfadetimer = 10
    }
}
