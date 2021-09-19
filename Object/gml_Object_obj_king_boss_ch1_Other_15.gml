if (attacked == false)
{
    global.invc = reminvc
    if (attack == 1)
    {
        box = gml_Script_instance_create_ch1((xx + 320), (yy + 170), 1628)
        mh = gml_Script_scr_moveheart_ch1()
        dd = gml_Script_instance_create_ch1(0, 0, 1558)
        dd.type = 21
        dd.damage = ((global.monsterat[myself] * 5) * tempattack)
        dd.target = mytarget
        dd.side = 1
        dd.btimer = -8
        global.turntimer = 190
    }
    if (attack == 2)
    {
        visible = false
        chainking = gml_Script_instance_create_ch1(x, y, 1565)
        chainking.type = 1
        chainking.subtype = 0
        chainking.grazepoints = 6
        box = gml_Script_instance_create_ch1((xx + 200), (yy + 175), 1571)
        box.sprite_index = spr_battlebg_wavechain_ch1
        hm = gml_Script_instance_create_ch1((box.x - 10), (box.y - 10), 1527)
        gml_Script_scr_moveheart_ch1()
        var _temp_local_var_1 = hm
        instance_destroy()
    }
    if (attack == 3)
    {
        box = gml_Script_instance_create_ch1((xx + 320), (yy + 170), 1628)
        gml_Script_scr_moveheart_ch1()
        dd = gml_Script_instance_create_ch1(0, 0, 1558)
        dd.type = 34
        dd.damage = ((global.monsterat[myself] * 5) * tempattack)
        dd.target = mytarget
        dd.btimer = 10
        global.turntimer = 210
    }
    if (attack == 4)
    {
        global.invc *= 1.5
        box = gml_Script_instance_create_ch1((xx + 310), (yy + 165), 1628)
        box.sprite_index = spr_battlebg_2_ch1
        box.keep = 1
        hm = gml_Script_instance_create_ch1((box.x - 10), (box.y - 10), 1527)
        gml_Script_scr_moveheart_ch1()
        var _temp_local_var_2 = hm
        instance_destroy()
    }
    if (attack == 5)
    {
        visible = false
        chainking = gml_Script_instance_create_ch1(x, y, 1565)
        chainking.grazepoints = 6
        chainking.type = 1
        chainking.subtype = 1
        box = gml_Script_instance_create_ch1((xx + 200), (yy + 175), 1571)
        box.sprite_index = spr_battlebg_wavechain_ch1
        chainking.damage = ((global.monsterat[myself] * 4) * tempattack)
        chainking.target = 3
        global.turntimer = 999
        hm = gml_Script_instance_create_ch1((box.x - 10), (box.y - 10), 1527)
        gml_Script_scr_moveheart_ch1()
        var _temp_local_var_3 = hm
        instance_destroy()
    }
    if (attack == 6)
    {
        global.invc *= 1.5
        visible = false
        timeruse = 0
        chainking = gml_Script_instance_create_ch1(x, y, 1565)
        chainking.type = 2
        chainking.subtype = 5
        if (chain_dragging >= 1)
            chainking.subtype = 2
        chain_dragging += 1
        box = gml_Script_instance_create_ch1((xx + 205), (yy + 170), 1571)
        box.sprite_index = spr_battlebg_1_ch1
        chainking.damage = ((global.monsterat[myself] * 5) * tempattack)
        chainking.target = mytarget
        global.turntimer = 999
        hm = gml_Script_instance_create_ch1((box.x - 10), (box.y - 10), 1527)
        gml_Script_scr_moveheart_ch1()
        var _temp_local_var_4 = hm
        instance_destroy()
    }
    if (attack == 7)
    {
        box = gml_Script_instance_create_ch1((xx + 320), (yy + 170), 1628)
        gml_Script_scr_moveheart_ch1()
        dd = gml_Script_instance_create_ch1(0, 0, 1558)
        dd.type = 35
        global.turntimer = 220
        dd.damage = ((global.monsterat[myself] * 5) * tempattack)
        dd.target = mytarget
        dd.btimer = 10
    }
    if (attack == 8)
    {
        global.invc *= 1.5
        box = gml_Script_instance_create_ch1((xx + 310), (yy + 165), 1628)
        box.sprite_index = spr_battlebg_2_ch1
        box.keep = 1
        hm = gml_Script_instance_create_ch1((box.x - 10), (box.y - 10), 1527)
        gml_Script_scr_moveheart_ch1()
        var _temp_local_var_5 = hm
        instance_destroy()
    }
    if (attack == 9)
    {
        box = gml_Script_instance_create_ch1((xx + 320), (yy + 170), 1628)
        gml_Script_scr_moveheart_ch1()
        dd = gml_Script_instance_create_ch1(0, 0, 1558)
        dd.type = 23
        global.turntimer = 200
        dd.damage = ((global.monsterat[myself] * 5) * tempattack)
        dd.target = mytarget
        dd.btimer = -8
        dd.side = 1
    }
    if (attack == 10)
    {
        visible = false
        chainking = gml_Script_instance_create_ch1(x, y, 1565)
        chainking.grazepoints = 6
        chainking.type = 1
        chainking.subtype = 2
        box = gml_Script_instance_create_ch1((xx + 200), (yy + 175), 1571)
        box.sprite_index = spr_battlebg_wavechain_ch1
        hm = gml_Script_instance_create_ch1((box.x - 10), (box.y - 10), 1527)
        gml_Script_scr_moveheart_ch1()
        var _temp_local_var_6 = hm
        instance_destroy()
    }
    if (attack == 11)
    {
        global.invc *= 1.5
        visible = false
        timeruse = 0
        chainking = gml_Script_instance_create_ch1(x, y, 1565)
        chainking.type = 2
        chainking.subtype = 1
        box = gml_Script_instance_create_ch1((xx + 205), (yy + 170), 1571)
        box.sprite_index = spr_battlebg_1_ch1
        chainking.damage = ((global.monsterat[myself] * 3) * tempattack)
        chainking.target = 3
        global.turntimer = 999
        hm = gml_Script_instance_create_ch1((box.x - 10), (box.y - 10), 1527)
        gml_Script_scr_moveheart_ch1()
        var _temp_local_var_7 = hm
        instance_destroy()
    }
    tempattack = 1
    attacked = true
}
