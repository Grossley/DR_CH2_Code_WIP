if gml_Script_i_ex(obj_ch2_city_car_a)
{
    with (obj_ch2_city_car_a)
        car_convo++
}
if gml_Script_i_ex(obj_ch2_scene21)
{
    with (obj_ch2_scene21)
    {
        got_banana = 1
        gml_Script_snd_play(snd_item)
        gml_Script_snd_play(snd_swallow)
    }
}
instance_destroy()
