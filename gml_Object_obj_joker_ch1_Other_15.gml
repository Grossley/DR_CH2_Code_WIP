var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7;
if (attacked == false)
{
    turns += 1
    chaosdance += 1
    if (chaosdance >= 9)
        chaosdance = 0
    remat = global.monsterat[myself]
    global.monsterat[myself] *= pfactor
    if (jattack == 0)
    {
        dc = gml_Script_instance_create_ch1(x, y, 1558)
        dc.type = 70
        dc.target = mytarget
        dc.grazepoints = 2
        dc.damage = (global.monsterat[myself] * 5)
        var _temp_local_var_1 = body
        condition = 2
    }
    if (jattack == 1)
    {
        dc = gml_Script_instance_create_ch1(x, y, 1558)
        dc.grazepoints = 3
        dc.type = 65
        dc.target = mytarget
        dc.damage = (global.monsterat[myself] * 5)
    }
    if (jattack == 2)
    {
        dc = gml_Script_instance_create_ch1(x, y, 1558)
        dc.type = 49
        dc.target = 3
        dc.damage = (global.monsterat[myself] * 4)
        dc.grazepoints = 3
        var _temp_local_var_2 = body
        condition = 2
    }
    if (jattack == 3)
    {
        if (body.condition < 4)
            body.condition = 5
        dc = gml_Script_instance_create_ch1(x, y, 1558)
        dc.grazepoints = 3
        dc.type = 75
        dc.target = mytarget
        dc.damage = (global.monsterat[myself] * 6)
    }
    if (jattack == 4)
    {
        gml_Script_snd_play_ch1(gml_Script_scr_84_get_sound_ch1("snd_joker_anything"))
        dc = gml_Script_instance_create_ch1(x, y, 1558)
        dc.type = 62
        dc.target = mytarget
        dc.inv = 20
        dc.damage = (global.monsterat[myself] * 5)
        dc.grazepoints = 2
    }
    if (jattack == 5)
    {
        dc = gml_Script_instance_create_ch1(x, y, 1558)
        dc.grazepoints = 3
        dc.type = 50
        dc.target = 3
        dc.damage = (global.monsterat[myself] * 4)
        global.turntimer = 300
        var _temp_local_var_3 = body
        condition = 2
    }
    if (jattack == 6)
    {
        dc = gml_Script_instance_create_ch1(x, y, 1558)
        dc.type = 73
        dc.target = mytarget
        dc.damage = (global.monsterat[myself] * 5)
    }
    if (jattack == 7)
    {
        dc = gml_Script_instance_create_ch1(x, y, 1558)
        dc.type = 68
        dc.target = mytarget
        dc.grazepoints = 2
        dc.damage = (global.monsterat[myself] * 5)
    }
    if (jattack == 8)
    {
        gml_Script_snd_play_ch1(gml_Script_scr_84_get_sound_ch1("snd_joker_anything"))
        dc = gml_Script_instance_create_ch1(x, y, 1558)
        dc.inv = 20
        dc.type = 61
        dc.target = mytarget
        dc.grazepoints = 3
        dc.damage = (global.monsterat[myself] * 5)
        global.turntimer = 240
    }
    if (jattack == 9)
    {
        dc = gml_Script_instance_create_ch1(x, y, 1558)
        dc.type = 48
        dc.target = 3
        dc.damage = (global.monsterat[myself] * 4)
        dc.grazepoints = 4
        global.turntimer = 270
        var _temp_local_var_4 = body
        condition = 2
    }
    if (jattack == 10)
    {
        dc = gml_Script_instance_create_ch1(x, y, 1558)
        dc.type = 72
        dc.target = mytarget
        dc.damage = (global.monsterat[myself] * 5)
    }
    if (jattack == 11)
    {
        if (body.condition < 4)
            body.condition = 5
        dc = gml_Script_instance_create_ch1(x, y, 1558)
        dc.type = 76
        dc.target = mytarget
        dc.grazepoints = 3
        dc.damage = (global.monsterat[myself] * 6)
    }
    if (jattack == 12)
    {
        dc = gml_Script_instance_create_ch1(x, y, 1558)
        dc.type = 71
        dc.target = mytarget
        dc.damage = (global.monsterat[myself] * 5)
        dc.grazepoints = 2
        var _temp_local_var_5 = body
        condition = 2
    }
    if (jattack == 13)
    {
        dc = gml_Script_instance_create_ch1(x, y, 1558)
        dc.type = 46
        dc.target = 3
        dc.damage = (global.monsterat[myself] * 4)
        dc.grazepoints = 4
        global.turntimer = 330
        var _temp_local_var_6 = body
        condition = 2
    }
    if (jattack == 14)
    {
        dc = gml_Script_instance_create_ch1(x, y, 1558)
        dc.type = 74
        dc.target = mytarget
        dc.damage = (global.monsterat[myself] * 4)
    }
    if (jattack == 15)
    {
        dc = gml_Script_instance_create_ch1(x, y, 1558)
        dc.type = 77
        dc.target = mytarget
        dc.damage = (global.monsterat[myself] * 4)
        global.turntimer = 1500
        if (body.condition < 4)
            body.condition = 5
    }
    if (jattack == 99)
    {
        dc = gml_Script_instance_create_ch1(x, y, 1558)
        dc.type = 47
        dc.target = 3
        dc.damage = (global.monsterat[myself] * 4)
        global.turntimer = 300
        var _temp_local_var_7 = body
        condition = 2
    }
    if (jattack == 999)
    {
        dc = gml_Script_instance_create_ch1(x, y, 1558)
        dc.type = 25
        dc.target = mytarget
        dc.damage = (global.monsterat[myself] * 4)
        global.turntimer = 300
    }
    with (obj_dbulletcontroller_ch1)
        joker = 1
    pfactor = 1
    global.monsterat[myself] = remat
    attacked = true
}
