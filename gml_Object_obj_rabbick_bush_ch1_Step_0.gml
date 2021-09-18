if 1347
{
    mx = (obj_mainchara_ch1.x + (obj_mainchara_ch1.sprite_width / 2))
    ox = (x + (sprite_width / 2))
    if ((mx - ox) <= radius && obj_mainchara_ch1.y >= y && con == 0)
    {
        368
        lo = 368
        gml_Script_snd_pitch_ch1(lo, 0.8)
        con = 1
        visible = true
        rabbick = gml_Script_instance_create_ch1(x, y, 1485)
        rabbick.vspeed = 16
    }
}
