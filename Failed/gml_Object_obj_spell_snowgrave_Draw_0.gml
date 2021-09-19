var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7, _temp_local_var_8, _temp_local_var_9, _temp_local_var_10, _temp_local_var_11, _temp_local_var_12, _temp_local_var_13, _temp_local_var_14, _temp_local_var_15, _temp_local_var_17, _temp_local_var_21, _temp_local_var_22, _temp_local_var_23, _temp_local_var_24, _temp_local_var_25, _temp_local_var_26, _temp_local_var_27, _temp_local_var_28, _temp_local_var_31, _temp_local_var_32;
xx = gml_Script___view_get(0, 0)
yy = gml_Script___view_get(1, 0)
if (init == 0)
{
    init = 1
    fncon = 0
    siner = 0
    if (altpath == 1)
    {
        timer = -270
        with (obj_heronoelle)
            visible = false
        fn = gml_Script_scr_dark_marker(obj_heronoelle.x, obj_heronoelle.y, 1523)
        fn.depth = obj_heronoelle.depth
        fn.image_index = 0
        fncon = 0
    }
}
timer++
if (altpath == 1)
{
    if (fncon == 0)
    {
        fn.image_index += 0.25
        if (fn.image_index >= 8)
        {
            fntimer = 0
            fncon = 0.5
            gml_Script_mus_volume(global.batmusic[1], 0, 90)
        }
    }
    if (fncon == 0.5)
    {
        fntimer++
        if (fntimer >= 120)
        {
            var _temp_local_var_1 = fn
            gml_Script_scr_oflash()
        }
    }
    if (fncon == 0.8)
    {
        fntimer++
        if (fntimer >= 30)
        {
            fntimer = 0
            fncon = 1
        }
    }
    if (fncon == 1 || fncon == 2)
    {
        if (amplitude < 1)
            amplitude += 0.03
        if (fn.y > (fn.ystart - 70))
        {
            _temp_local_var_1.y = (fn.y - amplitude)
            fn.x = (fn.x + (amplitude * 2.94))
            var _temp_local_var_3 = fn
            var _temp_local_var_4 = -9
            var _temp_local_var_5 = fn
            var _temp_local_var_6 = -9
            var _temp_local_var_7 = fn
        }
        _temp_local_var_3.x = (fn.x + (sin((timer / 3)) * amplitude))
        _temp_local_var_4.y = (fn.y + (cos((timer / 3)) * amplitude))
        var _temp_local_var_8 = fn
        var _temp_local_var_9 = -9
        var _temp_local_var_10 = -9
        var _temp_local_var_11 = fn
        var _temp_local_var_12 = -9
        var _temp_local_var_13 = fn
        var _temp_local_var_14 = -9
        var _temp_local_var_15 = fn
        if ((timer % 4) == 0 && timer < 70)
        {
            dustsnd = gml_Script_snd_play(39)
            gml_Script_snd_volume(dustsnd, 0.5, 0)
            gml_Script_snd_pitch(dustsnd, (0.5 + random(0.3)))
            dust = gml_Script_instance_create((fn.x + 50), ((fn.y + 10) + 10), obj_afterimage_grow)
            dust.speed = (random(2) + 1)
            dust.direction = random_range(0, 180)
            dust.gravity = (0.2 + random(0.3))
            dust.gravity_direction = random_range(70, 110)
            dust.image_xscale = 1
            dust.image_yscale = 1
            dust.sprite_index = spr_shine
            dust.image_speed = 0.5
            dust.image_alpha = 3
        }
        if (timer >= 210)
        {
            fn.sprite_index = spr_noelleb_spell
            fn.image_index = 2
            fn.image_speed = 0
            fn.gravity = 1
            fncon = 3
        }
    }
    if (fncon == 3)
    {
        if (fn.y >= (ystart - 6))
        {
            fn.y = ystart
            fn.sprite_index = spr_noelleb_defeat
            fn.speed = 0
            fn.gravity = 0
            var _temp_local_var_17 = fn
            gml_Script_scr_shakeobj()
        }
    }
}
if (timer > 0)
{
    draw_set_alpha(bgalpha)
    draw_rectangle_colour((xx - 10), (yy - 10), (xx + 700), (yy + 500), c_white, c_white, c_blue, c_blue, 0)
}
gml_Script_draw_background_tiled_ext(bg_snowfall, (snowspeed / 1.5), (timer * 6), 2, 2, c_white, bgalpha)
gml_Script_draw_background_tiled_ext(bg_snowfall, snowspeed, (timer * 8), 2, 2, c_white, (bgalpha * 2))
if (timer <= 10 && timer >= 0)
{
    if (bgalpha < 0.5)
        bgalpha += 0.05
}
if (timer >= 0)
    snowspeed += (20 + (timer / 5))
if (timer == 1)
    audio_play_sound(snd_snowgrave, 50, false)
if (timer >= 20 && timer <= (75 + (altpath * 30)))
{
    stimer++
    snowflake[0] = gml_Script_instance_create((xx + 455), (yy + 560), obj_spell_snowgrave_snowflake)
    snowflake[1] = gml_Script_instance_create((xx + 500), (yy + 600), obj_spell_snowgrave_snowflake)
    snowflake[2] = gml_Script_instance_create((xx + 545), (yy + 520), obj_spell_snowgrave_snowflake)
    for (i = 0; i < 3; i++)
    {
        snowflake[i].gravity = -2
        snowflake[i].vspeed = (sin((timer / 2)) * 0.5)
        snowflake[i].siner = (timer / 2)
    }
    if (stimer >= 8)
        stimer = 0
}
if (timer == 70 && altpath == 1)
{
    fb.sprite_index = spr_berdly_ice
    _temp_local_var_17.x = (fb.x - 22)
    _temp_local_var_8.y = (fb.y - 48)
    var _temp_local_var_21 = -9
    var _temp_local_var_22 = -9
    var _temp_local_var_23 = -9
    var _temp_local_var_24 = fb
    var _temp_local_var_25 = fn
    var _temp_local_var_26 = -9
    var _temp_local_var_27 = -9
    var _temp_local_var_28 = fb
}
if (timer == (95 + (altpath * 30)) && damage > 0 && global.fighting == true)
{
    for (i = 0; i < 3; i++)
    {
        if global.monster[i]
        {
            if gml_Script_i_ex(global.monsterinstance[i])
            {
                global.hittarget[i] = 0
                global.monsterinstance[i].fatal = 1
                if (altpath == 0)
                    gml_Script_scr_damage_enemy(i, (damage + round(random(100))))
                else
                {
                    global.hittarget[i] = 0
                    dm = gml_Script_instance_create(global.monsterx[i], ((global.monstery[i] + 20) - (global.hittarget[i] * 20)), obj_dmgwriter)
                    dm.damage = (damage + round(random(100)))
                    dm.type = 6
                }
                if (global.monsterhp[i] > 0 && altpath == 0)
                {
                    global.monsterinstance[i].fatal = 0
                    var _temp_local_var_31 = global.monsterinstance[i]
                    __of = gml_Script_scr_oflash()
                }
                if altpath
                {
                    var _temp_local_var_32 = fb
                    gml_Script_scr_oflash()
                }
            }
        }
    }
}
if (timer >= (90 + (altpath * 30)))
{
    if (altpath == 0)
    {
        if (bgalpha > 0)
            bgalpha -= 0.02
    }
    if (altpath == 1)
        bgalpha -= 0.005
}
if (timer == (120 + (altpath * 150)))
{
    if altpath
    {
        with (obj_berdlyb2_enemy)
            sidebcon = 1
        obj_berdlyb2_enemy.fn = fn
        obj_berdlyb2_enemy.fb = fb
    }
    instance_destroy()
}
