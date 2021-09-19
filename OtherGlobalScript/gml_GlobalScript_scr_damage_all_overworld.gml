if (global.inv < 0)
{
    remdamage = damage
    remtarget = target
    if (!instance_exists(obj_shake))
        gml_Script_instance_create(0, 0, obj_shake)
    with (obj_dmgwriter)
        killactive = 1
    gml_Script_snd_stop(170)
    gml_Script_snd_play(170)
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
    if (global.char[0] != 0 && global.hp[global.char[0]] > 2)
        gameover = 0
    if (global.char[1] != 0 && global.hp[global.char[1]] > 2)
        gameover = 0
    if (global.char[2] != 0 && global.hp[global.char[2]] > 2)
        gameover = 0
    if (gameover == 1)
        gml_Script_scr_gameover()
    target = remtarget
    global.inv = (global.invc * 40)
}
return;
