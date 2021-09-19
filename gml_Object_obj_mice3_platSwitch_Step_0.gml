if (place_meeting(x, y, obj_mainchara) || place_meeting(x, y, obj_marker) || place_meeting(x, y, obj_actor) || place_meeting(x, y, obj_trigger_area) || (instance_exists(obj_noelle_scared) && place_meeting(x, y, obj_noelle_scared) && obj_noelle_scared.jumpy == 0))
{
    if (toggle == 0)
    {
        if instance_exists(obj_controller_city_mice3)
            obj_controller_city_mice3.micescore += 1
        if (obj_controller_city_mice3.language == 0)
        {
            if (obj_controller_city_mice3.micescore == 1)
                gml_Script_snd_play(75)
            if (obj_controller_city_mice3.micescore == 2)
                gml_Script_snd_play(78)
            if (obj_controller_city_mice3.micescore == 3)
                gml_Script_snd_play(332)
            if (obj_controller_city_mice3.micescore == 4)
                gml_Script_snd_play(14)
            if (obj_controller_city_mice3.micescore == 5)
                gml_Script_snd_play(71)
            if (obj_controller_city_mice3.micescore == 6)
                gml_Script_snd_play(79)
            if (obj_controller_city_mice3.micescore == 7)
                gml_Script_snd_play(332)
            if (obj_controller_city_mice3.micescore == 8)
                gml_Script_snd_play(84)
            if (obj_controller_city_mice3.micescore == 9)
                gml_Script_snd_play(83)
            if (obj_controller_city_mice3.micescore == 10)
                gml_Script_snd_play(71)
        }
        if (obj_controller_city_mice3.language == 1)
        {
            if (obj_controller_city_mice3.micescore == 1)
                gml_Script_snd_play(75)
            if (obj_controller_city_mice3.micescore == 2)
                gml_Script_snd_play(78)
            if (obj_controller_city_mice3.micescore == 3)
                gml_Script_snd_play(84)
            if (obj_controller_city_mice3.micescore == 4)
                gml_Script_snd_play(14)
            if (obj_controller_city_mice3.micescore == 5)
                gml_Script_snd_play(80)
            if (obj_controller_city_mice3.micescore == 6)
                gml_Script_snd_play(71)
            if (obj_controller_city_mice3.micescore == 7)
                gml_Script_snd_play(335)
            if (obj_controller_city_mice3.micescore == 8)
                gml_Script_snd_play(84)
            if (obj_controller_city_mice3.micescore == 9)
                gml_Script_snd_play(79)
            if (obj_controller_city_mice3.micescore == 10)
                gml_Script_snd_play(75)
        }
    }
    toggle = 1
}
image_index = toggle
