if (!crash)
{
    if gml_Script_i_ex(1011)
    {
        with (obj_ch2_city_car_a)
            car_crash_count++
    }
    hspeed = 0
    crash = 1
    gml_Script_snd_play(188)
    visible = false
    explosion = gml_Script_instance_create((x + 40), y, obj_animation)
    explosion.sprite_index = spr_realisticexplosion
    explosion.image_xscale = 2
    explosion.image_yscale = 2
    with (explosion)
        gml_Script_scr_depth()
}
