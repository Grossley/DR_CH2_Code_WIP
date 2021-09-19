if (wobbled == 0)
{
    if (instance_exists(obj_mainchara_ch1) && global.interact == 0)
    {
        if (obj_mainchara_ch1.x > (x - 20) && obj_mainchara_ch1.x < (x + 50))
        {
            if (!instance_exists(obj_battlealphaer_ch1))
            {
                d = gml_Script_instance_create_ch1(0, 0, 1493)
                d.depth = 800000
            }
            with (obj_mainchara_ch1)
            {
                battlemode = 1
                threebuffer = 2
            }
            s = gml_Script_snd_play_ch1(459)
            gml_Script_snd_pitch_ch1(s, (0.5 + random(0.2)))
            s2 = gml_Script_snd_play_ch1(459)
            gml_Script_snd_pitch_ch1(s2, (0.9 + random(0.2)))
            image_speed = 0.2
            wobbled = 1
            i = 0
            while (i < 3)
            {
                dbullet = gml_Script_instance_create_ch1(x, y, 1507)
                var _temp_local_var_3 = dbullet
                damage = 15
                sprite_index = spr_wobblebullet_ch1
                image_alpha = 0.7
                image_xscale = 2
                image_yscale = 2
            }
        }
    }
}
