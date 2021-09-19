if (active == true)
{
    if (global.inv < 0)
    {
        gml_Script_instance_create_ch1(0, 0, 1464)
        gml_Script_snd_stop_ch1(438)
        gml_Script_snd_play_ch1(438)
        global.inv = (global.invc * 40)
        for (i = 0; i < 3; i += 1)
        {
            temphp[i] = global.hp[global.char[i]]
            if (temphp[i] < 0)
                temphp[i] = 0
        }
        if ((ceil(((temphp[0] + temphp[1]) + temphp[2])) / 3) >= 10)
        {
            for (i = 0; i < 3; i += 1)
            {
                if (temphp[i] > 0)
                    global.hp[global.char[i]] = ceil((global.hp[global.char[i]] * 0.7))
            }
        }
        else
            gml_Script_scr_damage_all_ch1()
    }
}
