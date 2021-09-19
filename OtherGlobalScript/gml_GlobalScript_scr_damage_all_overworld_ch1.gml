if (global.inv < 0)
{
    remdamage = damage
    remtarget = target
    if (!instance_exists(obj_shake_ch1))
        gml_Script_instance_create_ch1(0, 0, 1464)
    with (obj_dmgwriter_ch1)
        killactive = 1
    gml_Script_snd_stop_ch1(438)
    gml_Script_snd_play_ch1(438)
    for (ti = 0; ti < 3; ti += 1)
    {
        global.inv = -1
        damage = remdamage
        target = ti
        tdamage = damage
        with (global.charinstance[target])
        {
            hurt = true
            hurttimer = 0
        }
        hpdiff = tdamage
        if (hpdiff >= global.hp[global.char[target]])
            hpdiff = (global.hp[global.char[target]] - 1)
        d_cancel = 0
        if (hpdiff <= 1)
        {
            d_cancel = 1
            hpdiff = 0
        }
        if (d_cancel == 0)
        {
            doomtype = -1
            global.hp[global.char[target]] -= hpdiff
            dmgwriter = gml_Script_instance_create_ch1(global.charinstance[target].x, ((global.charinstance[target].y + global.charinstance[target].myheight) - 24), 1629)
            dmgwriter.damage = hpdiff
            dmgwriter.type = doomtype
        }
        if (global.hp[global.char[target]] < 1)
            global.hp[global.char[target]] = 1
    }
    gameover = 1
    if (global.char[0] != 0 && global.hp[global.char[0]] > 1)
        gameover = 0
    if (global.char[1] != 0 && global.hp[global.char[1]] > 1)
        gameover = 0
    if (global.char[2] != 0 && global.hp[global.char[2]] > 1)
        gameover = 0
    if (gameover == 1)
        gml_Script_scr_gameover_ch1()
    target = remtarget
    global.inv = (global.invc * 40)
}
return;
