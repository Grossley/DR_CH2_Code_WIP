var _temp_local_var_1;
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
    ti = 0
    while (ti < 3)
    {
        global.inv = -1
        damage = remdamage
        target = ti
        tdamage = damage
        var _temp_local_var_1 = global.charinstance[target]
        hurt = true
        hurttimer = 0
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