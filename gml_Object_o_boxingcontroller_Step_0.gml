var _temp_local_var_1, _temp_local_var_11, _temp_local_var_12, _temp_local_var_14, _temp_local_var_116, _temp_local_var_117, _temp_local_var_126, _temp_local_var_142;
with (obj_heroparent)
{
    x = -1000
    visible = true
}
if (785 && obj_bq_baseball.hit == 1 && obj_bq_baseball.hit_timer < 20)
{
    vspeed = 0
    return;
}
if (788 && obj_bq_baseball_final.hit == 1)
{
    vspeed = 0
    return;
}
if (786 && o_boxingqueen.phase_transition > 0 && o_boxingqueen.phase_transition_timer < (110 / f))
{
    vspeed = 0
    return;
}
if (actpunchtimer > 0)
{
    actpunchtimer--
    return;
}
if (wireframe_boxing == 1 && global.boxingphase == 0)
{
    global.boxingphase++
    if (global.boxingphase == 1)
        special_punch_turns -= 1
}
if (global.boxingphase == 4)
    global.boxingphase = 0
if (attackintrocon == 2)
{
    attackintrotimer++
    if (attackintrotimer == 17)
    {
        attackintrocon = 0
        attackintrotimer = 0
    }
}
if (o_boxingqueen.health_count <= (o_boxingqueen.health_count_max * 0.2) && o_boxinghud.sub_healthbar_count == 0 && wireframe_boxing == 0)
{
    if (attackintrocon == 1)
        attackintrocon = 0
}
if (wireframe_boxing == 1)
{
    if (o_boxingqueen.health_count < (o_boxingqueen.health_count_max * 0.75) && o_boxingqueen.pattern_phase == 0 && boxingtimer > 9)
    {
        o_boxingqueen.pattern_phase = 1
        boxingtimer = 10
        with (o_boxingqueen)
            // WARNING: Popz'd an empty stack.
    }
    if (o_boxingqueen.health_count < (o_boxingqueen.health_count_max * 0.5) && o_boxingqueen.pattern_phase == 1 && boxingtimer > 9)
    {
        o_boxingqueen.pattern_phase = 2
        boxingtimer = 10
        with (o_boxingqueen)
            // WARNING: Popz'd an empty stack.
    }
    if (o_boxingqueen.health_count < (o_boxingqueen.health_count_max * 0.25) && o_boxingqueen.pattern_phase == 2 && boxingtimer > 9)
    {
        o_boxingqueen.pattern_phase = 3
        boxingtimer = 10
        with (o_boxingqueen)
            // WARNING: Popz'd an empty stack.
    }
}
if (health_count < 1 && dead == 0.5)
{
    health_count = 0
    dead = 1
    if (wireframe_boxing == 1)
        gml_Script_instance_create(x, (y - 45), obj_vector_explosion)
}
if (wireframe_boxing == 0 && dead == 1)
{
    dead_timer++
    image_index = 7
    if (dead_timer > 0 && dead_timer < (20 / f))
    {
        x = ((basex + (20 / dead_timer)) - irandom((40 / dead_timer)))
        y = ((basey + (20 / dead_timer)) - irandom((40 / dead_timer)))
    }
    if (dead_timer > (20 / f))
        vspeed = (14 / f)
}
if ((837 && obj_gigaqueen_enemy.acting > 0 && punchcon == 0 && dead == 0) || ("enemytalk" && punchcon == 0 && dead == 0) || (specialcon != 0 && punchcon == 0 && dead == 0) || (acttoenemytalktransition == 1 && punchcon == 0 && dead == 0))
{
    if (obj_gigaqueen_enemy.breathattack == 0 && obj_gigaqueen_enemy.missleattack == 0)
    {
        with (o_boxingqueen)
        {
            invincible_l = 0
            invincible_r = 0
        }
        if (y != basey)
        {
            y = lerp(y, basey, 0.5)
            if ((y - basey) <= 2)
                y = basey
        }
        if (x != basex)
        {
            x = lerp(x, basex, 0.5)
            if ((x - basex) <= 2)
                x = basex
        }
    }
}
else if ((global.boxingphase == 0 && punchcon == 0) || (global.boxingphase == 3 && punchcon == 0))
{
    with (o_boxingqueen)
    {
        invincible_l = 0
        invincible_r = 0
    }
    if (y >= (basey - 35))
    {
        y = lerp(y, (basey - 35), 0.5)
        if (((y - basey) - 35) <= 2)
            y = (basey - 35)
    }
    else
        y = (basey - 38)
    if (x >= (basex - 70))
    {
        x = lerp(x, (basex - 70), 0.5)
        if (((x - basex) - 70) <= 2)
            x = (basex - 70)
    }
}
if (global.boxingphase == 1)
{
    if 388
    {
        cancontrol = 1
        global.boxingphase = 2
        boxingtimer = 270
        with (o_boxingqueen)
        {
            6
            myturn = 1
            movetimer = 90
            invincible_l = 0
            invincible_r = 0
        }
    }
    else
    {
        if (y != basey)
        {
            y = lerp(y, basey, 0.5)
            if ((y - basey) <= 2)
                y = basey
        }
        if (x != basex)
        {
            x = lerp(x, basex, 0.5)
            if ((x - basex) <= 2)
                x = basex
        }
        if (x == basex && y == basey && dead == 0)
        {
            cancontrol = 1
            global.boxingphase = 2
            boxingtimer = 270
            with (o_boxingqueen)
            {
                6
                myturn = 1
                movetimer = 90
                invincible_l = 0
                invincible_r = 0
            }
        }
    }
}
if (global.boxingphase == 2)
{
    nextphase = 0
    if (wireframe_boxing == 0)
        boxingtimer--
    if (boxingtimer <= 0)
    {
        nextphase = 1
        if (hurttimer > 0)
            nextphase = 0
        if (o_boxingqueen.state == 2)
            nextphase = 0
        if (o_boxingqueen.state == 3)
            nextphase = 0
        if (punchcon != 0 || duckcon != 0 || dodgecon != 0)
            nextphase = 0
        if (nextphase == 1 && dead == 0)
        {
            global.boxingphase = 3
            special_punch_turns -= 1
        }
    }
}
if (global.boxingphase == 3)
{
    cancontrol = 0
    with (o_boxingqueen)
    {
        myturn = 0
        dizzytimer = 0
    }
    global.boxingphase = 0
    global.turntimer = 5
    with (obj_gigaqueen_enemy)
    {
        talked = 0
        if (didntcounterthisturn == 1)
            global.battlemsg[0] = gml_Script_stringsetsubloc("* (Press ~1 or ~2 to hit Queen after she attacks!)", gml_Script_scr_get_input_name(4), gml_Script_scr_get_input_name(5), "o_boxingcontroller_slash_Step_0_gml_170_0")
        if (didntpunchthisturn == 1)
            global.battlemsg[0] = gml_Script_stringsetsubloc("* (Punch during Queen's turn with ~1 or ~2 after she attacks!)", gml_Script_scr_get_input_name(4), gml_Script_scr_get_input_name(5), "o_boxingcontroller_slash_Step_0_gml_174_0")
        if (didntdodgethisturn == 1)
            global.battlemsg[0] = gml_Script_stringsetloc("* (Dodge Queen's attacks with left, right, and down!)", "o_boxingcontroller_slash_Step_0_gml_178_0")
        if (recentphasetransition == 2)
            global.battlemsg[0] = gml_Script_stringsetloc("* ROUND 2 begins.&* Queen's attacks got tougher!", "o_boxingcontroller_slash_Step_0_gml_182_0")
        if (recentphasetransition == 3)
            global.battlemsg[0] = gml_Script_stringsetloc("* ROUND 3 begins.&* Queen's attacks got extreme!", "o_boxingcontroller_slash_Step_0_gml_186_0")
        recentphasetransition = 0
        didntdodgethisturn = 1
        didntpunchthisturn = 1
        if (o_boxinghud.sub_healthbar_count == 2)
            didntcounterthisturn = 1
    }
    with (obj_battlecontroller)
    {
        gigaqueencon = 2
        gigaqueentimer = 0
    }
    defend = 0
    damagereductiononeturn = 0
    damagetakenthisturn = 0
}
if ((room != room_dw_mansion_top && 840 && o_boxing_wireframe.pacifist_timer >= 2970) || (o_boxingcontroller.health_count < 1 && (!802)))
    cancontrol = 0
if (arcaderesettimer > 0)
    arcaderesettimer--
var disable = 0
if (o_boxingqueen.attacktype == 9 && o_boxingqueen.attackcon < 2)
    disable = 1
if (804 || 805)
    disable = 1
if (cancontrol == 1 && o_boxingqueen.phase_transition == 0 && talking == 0 && arcaderesettimer == 0 && o_boxingcontroller.dead < 4 && disable == 0)
{
    canpunch = 1
    if (boxingtimer < 2 && o_boxingqueen.state != 3 && wireframe_boxing == 0)
        canpunch = 0
    if (840 && o_boxing_wireframe.introcon == 0 && wireframe_boxing == 1)
        canpunch = 0
    if (o_boxingqueen.phase_transition > 0 && wireframe_boxing == 1)
        canpunch = 0
    if (o_boxingqueen.state == 3 && wireframe_boxing == 0 && o_boxingqueen.attacktype == 9)
    {
        if (o_boxingqueen.attackcon < 3)
            canpunch = 0
        if (o_boxingqueen.attacktimer < (120 / f))
            canpunch = 0
    }
    var punch_buffer_amount = 2
    if (wireframe_boxing == 1)
        punch_buffer_amount = 5
    if (os_type == os_switch)
    {
        if canpunch
        {
            buffer_z = punch_buffer_amount
            with (obj_ch2_scene10_arcade_bg)
                punch_l_timer = 5
        }
        if canpunch
        {
            buffer_x = punch_buffer_amount
            with (obj_ch2_scene10_arcade_bg)
                punch_r_timer = 5
        }
    }
    else
    {
        if canpunch
        {
            buffer_z = punch_buffer_amount
            with (obj_ch2_scene10_arcade_bg)
                punch_l_timer = 5
        }
        if canpunch
        {
            buffer_x = punch_buffer_amount
            with (obj_ch2_scene10_arcade_bg)
                punch_r_timer = 5
        }
    }
    buffer_d = 3
    with (obj_ch2_scene10_arcade_bg)
        dodge_d_timer = 5
    buffer_r = 3
    with (obj_ch2_scene10_arcade_bg)
        dodge_r_timer = 5
    buffer_l = 3
    with (obj_ch2_scene10_arcade_bg)
        dodge_l_timer = 5
    if (boxingtimer < 2 && o_boxingqueen.state != 3 && wireframe_boxing == 0)
    {
        buffer_d = 0
        buffer_r = 0
        buffer_l = 0
    }
    if (837 && obj_gigaqueen_enemy.playerhasntdodged == 0)
    {
        if 1
            obj_gigaqueen_enemy.playerhasntdodged = 1
    }
}
if (dodgecon == 0 && hurtcon == 0 && duckcon == 0 && jumpcon == 0)
{
    if (special_punch_count < 1 || special_punch_turns < 1)
    {
        if (flameactive > 0 || swordactive > 0 || laseractive > 0 || duckactive > 0 || turboactive > 0)
        {
            flameactive = 0
            swordactive = 0
            laseractive = 0
            duckactive = 0
            turboactive = 0
            damage_multiplier = 1
            punch_speed_multiplier = 1
            with (obj_rotating_sprites_controller)
                state = 1
        }
    }
}
if (dodgecon == 0 && hurtcon == 0 && duckcon == 0 && jumpcon == 0)
{
    if (buffer_z > 0)
    {
        if (punchcon == 0 || (punchcon == 6 && (!840)) || (punchcon == 6 && 840 && punchtimer > (6 / f)))
        {
            drawflip = 0
            punchcon = 1
            lastpunchside = -1
            if 837
                obj_gigaqueen_enemy.didntpunchthisturn = 0
        }
    }
}
if (dodgecon == 0 && hurtcon == 0 && duckcon == 0 && jumpcon == 0)
{
    if (buffer_x > 0)
    {
        if (punchcon == 0 || (punchcon == 6 && (!840)) || (punchcon == 6 && 840 && punchtimer > (6 / f)))
        {
            drawflip = 1
            punchcon = 1
            lastpunchside = 1
            if 837
                obj_gigaqueen_enemy.didntpunchthisturn = 0
        }
    }
}
if ((punchcon == 0 && dodgecon == 0 && hurtcon == 0 && duckcon == 0 && jumpcon == 0) || (punchcon == 5 && y > 370) || punchcon == 6)
{
    if (buffer_l > 0)
    {
        if (punchcon >= 5)
        {
            1
            vspeed = 0
            friction = 0
        }
        drawflip = 1
        dodgecon = 1
        if arcade
            311
        else
            119
        if 837
            obj_gigaqueen_enemy.didntdodgethisturn = 0
    }
}
if ((punchcon == 0 && dodgecon == 0 && hurtcon == 0 && duckcon == 0 && jumpcon == 0) || (punchcon == 5 && y > 370) || punchcon == 6)
{
    if (buffer_r > 0)
    {
        if (punchcon >= 5)
        {
            1
            vspeed = 0
            friction = 0
        }
        drawflip = 0
        dodgecon = 1
        if arcade
            311
        else
            119
        if 837
            obj_gigaqueen_enemy.didntdodgethisturn = 0
    }
}
if ((punchcon == 0 && dodgecon == 0 && hurtcon == 0 && duckcon == 0 && jumpcon == 0) || (punchcon == 5 && y > 370) || punchcon == 6)
{
    if (buffer_d > 0)
    {
        if (punchcon >= 5)
        {
            1
            vspeed = 0
            friction = 0
        }
        duckcon = 1
        if arcade
            311
        else
            119
        if 837
            obj_gigaqueen_enemy.didntdodgethisturn = 0
    }
}
if (punchcon == 0 && dodgecon == 0 && hurtcon == 0 && duckcon == 0 && jumpcon == 0)
{
    if (buffer_u > 0)
        jumpcon = 1
}
var arcade_end = 0
if (o_boxingqueen.phase_transition > 0 && wireframe_boxing == 1 && punchcon == 1)
{
    buffer_z = 0
    buffer_x = 0
    punch_l_timer = 0
    punch_l_timer = 0
    arcade_end = 1
}
if (punchcon >= 1 && arcade_end == 0)
{
    if (punchcon == 1)
    {
        o_boxingcontroller.hit_baseball_check = 0
        special_punch_count -= 1
        if (840 && o_boxing_wireframe.pacifist_state == 0)
        {
            o_boxing_wireframe.pacifist_state = -1
            o_boxing_wireframe.text = o_boxingcontroller.default_string
        }
        hitattempt = 0
        x = basex
        y = basey
        image_index = 1
        if (swordactive == 1)
            image_index = 14
        vspeed = ((-12 * f) * punch_speed_multiplier)
        if (837 && obj_gigaqueen_enemy.acting > 0)
            vspeed = (-10 * f)
        if (drawflip == 0)
            hspeed = (-4 * f)
        if (drawflip == 1)
            hspeed = (4 * f)
        friction = (2 * f)
        punchcon = 2
        punchtimer = 0
        119
        gml_Script_snd_pitch(119, 1.25)
    }
    if (punchcon == 2)
    {
        punchtimer += (1 * punch_speed_multiplier)
        if (laseractive == 1)
            punchtimer += 1
        if ((punchtimer >= (7 / f) && 837 && obj_gigaqueen_enemy.acting == 0) || (punchtimer >= (14 / f) && 837 && obj_gigaqueen_enemy.acting > 0) || (punchtimer >= (7 / f) && (!837)))
        {
            hspeed = 0
            punchtimer = 0
            punchcon = 3
        }
    }
    if (punchcon == 3)
    {
        missnoise = 0
        image_index = 2
        if (swordactive == 1)
            image_index = 12
        friction = (0.6 * f)
        y -= 40
        vspeed = (-10 * f)
        punchcon = 4
        if (785 || 788)
        {
            hitbox = gml_Script_instance_create(x, y, o_boxingcontroller_fist_hitbox)
            if (drawflip == 0)
                hitbox.image_xscale = 2
            if (drawflip == 1)
                hitbox.image_xscale = -2
            hitbox.image_yscale = 2
        }
        if (hitattempt == 0)
        {
            hitattempt = 1
            q_miss = 0
            if (drawflip == 0 && o_boxingqueen.invincible_l == 1)
                q_miss = 1
            if (drawflip == 1 && o_boxingqueen.invincible_r == 1)
                q_miss = 1
            var attackintroblock = 0
            if (laseractive == 1)
            {
                y -= 30
                laserpunchfadetimer = 10
                var oldy = (y + 70)
                for (var _l = 0; _l < 8; _l++)
                {
                    afterimage = gml_Script_instance_create(x, lerp(y, oldy, (_l / 8)), o_afterimage)
                    afterimage.sprite_index = spr_bhero_white
                    afterimage.image_index = image_index
                    afterimage.depth = (depth - 1)
                    afterimage.image_alpha = ((10 - _l) / 10)
                    afterimage.boss = id
                    afterimage.image_xscale = 2
                    if (drawflip == 1)
                        afterimage.image_xscale = -2
                    afterimage.image_yscale = 2
                    if (q_miss == 1)
                        vspeed = -3
                }
            }
            if (o_boxingcontroller.wireframe_boxing == 1 && o_boxingqueen.health_count < 1)
                q_miss = 1
            if (804 || 805)
                q_miss = 1
            if (o_boxingqueen.state == 0 && (o_boxingqueen.movetimer + 10) >= o_boxingqueen.attackthreshold && o_boxingcontroller.wireframe_boxing == 0)
            {
                if (o_boxingqueen.list_attacktype[o_boxingqueen.attackcount] == 0 || o_boxingqueen.list_attacktype[o_boxingqueen.attackcount] == 2)
                {
                }
            }
            if (o_boxingqueen.state == 3 && o_boxingcontroller.wireframe_boxing == 0)
            {
                if ((o_boxingqueen.attacktype == 0 && o_boxingqueen.attackcon == 1 && o_boxingqueen.punch_type == 1 && o_boxingqueen.attacktimer < 9) || (o_boxingqueen.attacktype == 0 && o_boxingqueen.attackcon == 1 && o_boxingqueen.punch_type == 2 && o_boxingqueen.attacktimer < 9) || (o_boxingqueen.attacktype == 0 && o_boxingqueen.attackcon == 1 && o_boxingqueen.punch_type == 3 && o_boxingqueen.attacktimer < 9) || (o_boxingqueen.attacktype == 2 && o_boxingqueen.attackcon == 1 && o_boxingqueen.attacktimer < 9) || (o_boxingqueen.attacktype == 1 && o_boxingqueen.punch_type == 0 && o_boxingqueen.kick_amount == 0 && o_boxingqueen.attacktimer < 12 && o_boxingqueen.image_index != 2))
                {
                }
            }
            if (o_boxingqueen.health_count < (o_boxingqueen.health_count_max * 0.5) && o_boxingcontroller.wireframe_boxing == 1)
            {
                if (o_boxingqueen.sprite_index == spr_bqueen_laugh_wireframe || o_boxingqueen.sprite_index == spr_bqueen_laugh_wireframe)
                {
                    if (o_boxingqueen.invincible_l == 1 || o_boxingqueen.invincible_r == 1)
                        q_miss = 1
                }
            }
            if (q_miss == 0)
            {
                var can_block = 1
                if (o_boxingqueen.health_count >= (o_boxingqueen.health_count_max * 0.5) && o_boxingcontroller.wireframe_boxing == 1)
                    can_block = 1
                if (o_boxingqueen.health_count < (o_boxingqueen.health_count_max * 0.5) && o_boxingcontroller.wireframe_boxing == 1 && drawflip == o_boxingqueen.force_drawflip)
                {
                    if (o_boxingqueen.sprite_index == spr_bqueen_wireframe && o_boxingqueen_janky_image_index < 2)
                        can_block = 0
                    if (o_boxingqueen.sprite_index == spr_bqueen_idle_wireframe)
                        can_block = 0
                }
                if ((o_boxingqueen.blocking == drawflip && swordactive == 0 && o_boxingcontroller.wireframe_boxing == 0 && disable_queen_blocking == 0) || (o_boxingcontroller.wireframe_boxing == 1 && can_block == 0 && disable_queen_blocking == 0) || attackintroblock == 1)
                {
                    y += 20
                    punchcon = 4.7
                    arcade_times_blocked += 1
                    punchtimer = 0
                    hshake = 6
                    x -= 6
                    shaketimer = 0
                    hspeed = 0
                    vspeed = 0
                    friction = 0
                    with (o_boxingqueen)
                    {
                        x = basex
                        y = basey
                        gml_Script_instance_create(x, y, obj_boxing_wine_shield)
                        block_star = gml_Script_instance_create(x, y, obj_boxing_block_star)
                        block_star.direction = (0 + random(90))
                        block_star = gml_Script_instance_create(x, y, obj_boxing_block_star)
                        block_star.direction = (90 + random(90))
                        block_star = gml_Script_instance_create(x, y, obj_boxing_block_star)
                        block_star.direction = (180 + random(90))
                        block_star = gml_Script_instance_create(x, y, obj_boxing_block_star)
                        block_star.direction = (270 + random(90))
                        if arcade
                            313
                        else
                            39
                        drawflip = o_boxingcontroller.drawflip
                        savex = x
                        savey = y
                        speed = 0
                        gravity = 0
                        friction = 0
                        blocktimer = 0
                        state = 2
                        image_index = 0
                        sprite_index = spr_bqueen_block
                        if (o_boxingcontroller.wireframe_boxing == 1)
                        {
                            sprite_index = spr_bqueen_block_wireframe
                            o_boxing_wireframe.text = gml_Script_stringsetloc("You can Punch on both sides!", "o_boxingcontroller_slash_Step_0_gml_361_0")
                            o_boxing_wireframe.text_reset_timer = 1
                        }
                        invincible_l = 0
                        invincible_r = 0
                    }
                }
                else
                {
                    var damage_multiplier_extra = 1
                    if (global.beat_phase1_no_damage_taken == 0 && o_boxinghud.sub_healthbar_count == 2)
                        damage_multiplier_extra = 1.25
                    if (global.beat_phase1_no_damage_taken == 1 && o_boxinghud.sub_healthbar_count == 2)
                        damage_multiplier_extra = 2.5
                    if (beat_phase2_no_damage_taken == 1 && o_boxinghud.sub_healthbar_count == 0)
                        damage_multiplier_extra = 1.5
                    if (o_boxingqueen.attackorderlooping == 1)
                        damage_multiplier_extra += 0.5
                    damage_multiplier_extra += phase3_damage_multiplier
                    damage_multiplier_extra = ((damage_multiplier_extra - 1) + damage_multiplier)
                    var d = 1
                    if (defend == 1)
                        d = 0.8
                    var whiteflash = 0
                    d += o_boxingqueen.damagetakenincrease
                    if (o_boxingcontroller.wireframe_boxing == 0)
                    {
                        if (damageoverride != 0)
                        {
                            if (damageoverride != 1)
                                damageoverride *= damage_multiplier_extra
                            o_boxingqueen.health_count -= damageoverride
                            o_boxingqueen.actpunchtimer = 1
                            dm = gml_Script_instance_create(x, (y - 150), obj_dmgwriter)
                            dm.delay = 2
                            dm.damage = damageoverride
                            damageoverride = 0
                            actpunchtimer = 15
                            whiteflash = 1
                            if (healoverride != 0)
                            {
                                health_count += healoverride
                                dmgwr = gml_Script_instance_create((x - 30), (y - 75), obj_dmgwriter)
                                var _temp_local_var_126 = dmgwr
                                delay = 8
                                type = 3
                            }
                        }
                        else if (o_boxingqueen.sprite_index == spr_bqueen_hurt)
                            o_boxingqueen.health_count -= ceil(((14 * damage_multiplier_extra) * d))
                        else
                            o_boxingqueen.health_count -= ceil(((28 * damage_multiplier_extra) * d))
                    }
                    if (o_boxingcontroller.wireframe_boxing == 1)
                    {
                        o_boxingqueen.health_count -= 30
                        if (o_boxingqueen.state == 3)
                        {
                            if (o_boxingqueen.attacktype == 0 && o_boxingqueen.attackcon == 3)
                                o_boxingqueen.health_count -= 20
                            else if (o_boxingqueen.attacktype != 0)
                                o_boxingqueen.health_count -= 20
                        }
                        o_boxing_wireframe.zx_timer = 0
                        o_boxing_wireframe.zx_state = 0
                        o_boxingcontroller.arcade_times_blocked = 1
                    }
                    o_boxinghud.healthbar_flash = 100
                    o_boxingqueen.pacifist = 0
                    o_boxingqueen.health_count_prev_timer = o_boxingqueen.health_count_prev_timer_set
                    if (drawflip == 0)
                        o_boxingqueen.drawflip = 1
                    with (o_boxingqueen)
                    {
                    }
                    if (tpoverride != 0)
                    {
                        tpoverride
                        if arcade
                            324
                        else
                            158
                    }
                    2.5
                    tpoverride = 0
                    if (o_boxingqueen.state != 0 && o_boxingqueen.state != 1 && o_boxingcontroller.wireframe_boxing == 0)
                    {
                        o_boxingqueen.combo = 1
                        obj_gigaqueen_enemy.didntcounterthisturn = 0
                    }
                    if (o_boxingcontroller.wireframe_boxing == 1)
                        o_boxingqueen.combo = 1
                    if (o_boxingqueen.state == 0 && o_boxingqueen.bouncetimer > 1 && o_boxingcontroller.wireframe_boxing == 0 && global.boxingphase == 2)
                    {
                        o_boxingqueen.shortcomboend = 1
                        o_boxingqueen.combo = 1
                        obj_gigaqueen_enemy.didntcounterthisturn = 0
                        o_boxingqueen.times_hit_in_a_row = 2
                    }
                    if (o_boxingqueen.combo == 1)
                        o_boxingqueen.times_hit_in_a_row += 1
                    if (swordactive == 1)
                    {
                        if (damage_multiplier == 1.2)
                            damage_multiplier = 1.3
                        else if (damage_multiplier < 1.6)
                            damage_multiplier += 0.05
                        else
                            damage_multiplier += 0.02
                    }
                    o_boxingqueen.hurt_fx1_timer = 0
                    o_boxingqueen.hurt_fx1_timer2 = 0
                    o_boxingqueen.hurt_fx1_state = 1
                    arcade_mode_last_punched_direction = drawflip
                    if (840 && o_boxingqueen.health_count < (o_boxingqueen.health_count_max * 1))
                    {
                        if (o_boxingqueen.force_drawflip <= 0)
                            o_boxingqueen.force_drawflip = 1
                        else
                            o_boxingqueen.force_drawflip = 0
                    }
                    else if (drawflip == 1)
                        o_boxingqueen.drawflip = 0
                    with (o_boxingqueen)
                    {
                        hitanim = 0
                        if (times_hit_in_a_row > 2 && o_boxingqueen.shortcomboend == 0 && o_boxingcontroller.laseractive == 0 && times_hit_in_a_row > 3 && o_boxingqueen.shortcomboend == 0 && o_boxingcontroller.laseractive == 1)
                        {
                            if arcade
                            {
                                322
                                punchnoise = punch_ish_1_bc
                            }
                            else
                            {
                                157
                                punchnoise = snd_queen_punched_lower_heavy
                            }
                            audio_sound_pitch(punchnoise, 1.4)
                        }
                        else
                        {
                            if arcade
                                punchnoise = punch_ish_1_bc
                            else
                                punchnoise = snd_queen_punched_lower
                            var hitqueensfxcount = times_hit_in_a_row
                            if (hitqueensfxcount < 0)
                                hitqueensfxcount = 0
                            if (o_boxingqueen.shortcomboend == 1)
                                audio_sound_pitch(punchnoise, 1)
                            else
                                audio_sound_pitch(punchnoise, (1 + ((hitqueensfxcount - 1) * 0.3)))
                        }
                        if (o_boxingcontroller.wireframe_boxing == 0)
                        {
                            if (times_hit_in_a_row < 3 && o_boxingcontroller.laseractive == 0)
                                o_boxingqueen.movetimer = 1
                            if (times_hit_in_a_row < 4 && o_boxingcontroller.laseractive == 1)
                                o_boxingqueen.movetimer = 1
                            if (o_boxingqueen.combo == 0)
                                o_boxingqueen.movetimer = o_boxingqueen.attackthreshold
                            if (o_boxingqueen.combo == 1 && o_boxingqueen.attackthreshold == 0)
                                o_boxingqueen.attackthreshold = 30
                        }
                        if (dizzytimer <= 0)
                            noattack += 1
                        else if arcade
                            302
                        else
                            114
                        blocking = -1
                        image_index = 0
                        sprite_index = spr_bqueen_hurt_effect
                        if (o_boxingcontroller.wireframe_boxing == 1)
                            sprite_index = spr_bqueen_hurt_effect_wireframe
                        speed = 0
                        gravity = 0
                        invincible_l = 0
                        invincible_r = 0
                        enddizzy = 0
                        if (o_boxingcontroller.wireframe_boxing == 0)
                        {
                            if (makedizzy > 0)
                            {
                                dizzytimer = makedizzy
                                if (o_boxingcontroller.flameactive == 1)
                                    dizzytimer = (makedizzy * 1.5)
                                if (o_boxingcontroller.laseractive == 1)
                                    dizzytimer = (makedizzy * 1.5)
                                makedizzy = 0
                            }
                            else
                            {
                                if (o_boxingcontroller.laseractive == 0)
                                    dizzytimer -= 20
                                if (o_boxingcontroller.laseractive == 1)
                                    dizzytimer -= 10
                            }
                            if (dizzytimer > 0 && dizzytimer <= 60)
                            {
                                dizzytimer = 0
                                enddizzy = 1
                            }
                            if (dizzytimer > 0)
                                sprite_index = spr_bqueen_dizzy_hurt
                        }
                        if (whiteflash == 1)
                        {
                            with (o_boxingqueen)
                            {
                                5
                                o_afterimage.white_silhouette = 1
                            }
                        }
                        if (drawflip == 0 || drawflip == -1)
                        {
                            if (dizzytimer >= 60)
                                hitanim = 1
                            else
                                hitnaim = 2
                            if (enddizzy == 1)
                                hitanim = 3
                        }
                        if (drawflip == 1)
                        {
                            if (dizzytimer >= 60)
                                hitanim = -1
                            else
                                hitanim = -2
                            if (enddizzy == 1)
                                hitanim = -3
                        }
                        if (o_boxingcontroller.wireframe_boxing == 0)
                        {
                            if ((times_hit_in_a_row < 3 && o_boxingcontroller.laseractive == 0) || (times_hit_in_a_row < 4 && o_boxingcontroller.laseractive == 1))
                            {
                                if (hitanim == -2)
                                    hitanim = choose(-1, -3)
                                if (hitanim == 3 || hitanim == -3)
                                    gml_Script_scr_move_precise(2, ((2 * hitanim) / 3), 2)
                                if (hitanim == 1 || hitanim == -1)
                                    gml_Script_scr_move_precise(1, ((2 * hitanim) / 1), 2)
                                if (hitanim == 2 || hitanim == -2)
                                    gml_Script_scr_move_precise(0, ((2 * hitanim) / 2), 2)
                                if (hitanim == 0)
                                    gml_Script_scr_move_precise(1, 2, 2)
                            }
                        }
                        else if (times_hit_in_a_row < 2)
                        {
                            if (drawflip == 1)
                                gml_Script_scr_move_precise(choose(1, 2), -2, 2)
                            else
                                gml_Script_scr_move_precise(choose(1, 2), 2, 2)
                        }
                        hurttimer = 0
                        state = 1
                        x = basex
                        y = basey
                    }
                    x = basex
                    vspeed = 0
                    punchcon = 4.5
                    punchtimer = 0
                    hit_fx = gml_Script_instance_create(x, y, obj_boxing_hit_fx)
                    var _temp_local_var_142 = hit_fx
                    event_user(1)
                }
            }
        }
    }
    if (punchcon == 4)
    {
        if (missnoise == 0)
        {
            if arcade
                326
            else
                121
            missnoise = 1
        }
        vspeed *= 0.81
        miss_timer++
        if (miss_timer == 5 && swordactive == 1)
            image_index = 13
        if (vspeed >= (-1 * f) && punchcon == 4)
        {
            punchcon = 5
            miss_timer = 0
            vspeed = (3 * f)
        }
    }
    if (punchcon == 4.5)
    {
        punchtimer += 1
        if (punchtimer == 5 && swordactive == 1)
            image_index = 13
        vspeed = 0
        hspeed = 0
        gravity = 0
        friction = 0
        if (f == 1)
        {
            if (punchtimer == 1)
                y -= 30
            if (punchtimer == 2)
                y -= 15
            if (punchtimer == 3)
                y -= 8
        }
        if (punchtimer >= (10 / f))
        {
            punchcon = 5
            punchtimer = 0
        }
    }
    if (punchcon == 4.7)
    {
        hspeed = 0
        vspeed = 0
        friction = 0
        punchtimer += 1
        shaketimer += 1
        if (shaketimer == 5 && swordactive == 1)
            image_index = 13
        if (shaketimer >= (2 / f))
        {
            x += hshake
            if (hshake > 0)
                hshake -= 1
            if (hshake < 0)
                hshake += 1
            hshake = (-hshake)
            if (hshake == 1 || hshake == -1)
                hshake = 0
            shaketimer = 0
        }
        if (punchtimer >= (22 / f))
        {
            punchtimer = 0
            punchcon = 5
        }
    }
    if (punchcon == 5)
    {
        vspeed += ((3 * f) * punch_speed_multiplier)
        if (y >= basey)
        {
            vspeed = 0
            friction = 0
            y = basey
            punchcon = 6
            punchtimer = 0
        }
    }
    if (punchcon == 6)
    {
        image_index = 3
        punchtimer += (1 * punch_speed_multiplier)
        if (punchtimer >= (10 / f))
            1
    }
}
if (dodgecon > 0)
{
    long_dodge = 0
    if (drawflip == 0)
    {
    }
    else
        var _temp_local_var_117 = 0
    long_dodge = 1
    if (drawflip == 1)
    {
    }
    else
        var _temp_local_var_116 = 0
    long_dodge = 1
    var dodge_speed = 1
    if (turboactive == 1)
        dodge_speed = 2
    if (dodgecon == 1)
    {
        x = basex
        y = basey
        image_index = 4
        if (drawflip == 0)
            hspeed = ((18 * f) * dodge_speed)
        if (drawflip == 1)
            hspeed = ((-18 * f) * dodge_speed)
        dodgetimer = 0
        dodgecon = 2
        if (o_boxingcontroller.wireframe_boxing == 1 && o_boxing_wireframe.text == o_boxingcontroller.dodge_string)
            o_boxing_wireframe.text = o_boxingcontroller.default_string
    }
    if (dodgecon == 2)
    {
        dodgetimer += 1
        if (dodgetimer == 1)
            dodging = 1
        if (dodgetimer >= (16 / f) && turboactive == 0)
            dodging = 0
        if (dodgetimer >= (32 / f) && turboactive == 1)
            dodging = 0
        if (dodge_speed == 1)
            hspeed *= 0.6400000000000001
        if (dodge_speed == 2)
        {
            repeat dodge_speed
                hspeed *= 0.698896
        }
        if (hspeed <= (5 * f) && long_dodge == 0)
            dodgecon = 3
        if (hspeed <= (0.2 * f))
            dodgecon = 3
    }
    if (dodgecon == 3)
    {
        if (turboactive == 0)
            dodging = 0
        x = x
        dodgecon = 4
    }
    if (dodgecon == 4)
    {
        dodgetimer++
        if (dodgetimer >= (32 / f) && turboactive == 1)
            dodging = 0
        if (drawflip == 0)
        {
            if (turboactive == 1 && long_dodge == 1)
                hspeed -= ((0.1 * f) * dodge_speed)
            else
            {
                hspeed -= ((0.5 * f) * dodge_speed)
                if (long_dodge == 0)
                    hspeed -= (0.3 * f)
            }
            if (x <= (basex + (8 * f)))
            {
                speed = 0
                x = basex
                dodgecon = 5
                dodging = 0
                dodgetimer = 0
            }
        }
        if (drawflip == 1)
        {
            if (turboactive == 1 && long_dodge == 1)
                hspeed += ((0.1 * f) * dodge_speed)
            else
            {
                hspeed += ((0.5 * f) * dodge_speed)
                if (long_dodge == 0)
                    hspeed += ((0.3 * f) * dodge_speed)
            }
            if (x >= (basex - (8 * f)))
            {
                speed = 0
                x = basex
                dodgecon = 5
                dodging = 0
                dodgetimer = 0
            }
        }
    }
    if (dodgecon == 5)
        1
}
if (duckcon > 0)
{
    long_duck = 0
    long_duck = 1
    var duck_speed = 1
    if (turboactive == 1)
        duck_speed = 2
    if (duckcon == 1)
    {
        x = basex
        y = basey
        ducking = 1
        image_index = 6
        vspeed = ((5 * f) * duck_speed)
        duckcon = 2
        if (o_boxingcontroller.wireframe_boxing == 1 && o_boxing_wireframe.text == o_boxingcontroller.duck_string)
            o_boxing_wireframe.text = o_boxingcontroller.default_string
    }
    if (duckcon == 2)
    {
        repeat duck_speed
            vspeed *= 0.81
        if (vspeed <= (1 * f) && long_duck == 0)
            duckcon = 3
        if (vspeed <= (6 * f) && long_duck == 0 && turboactive == 1)
            duckcon = 3
        if (vspeed <= (0.3 * f))
            duckcon = 3
    }
    if (duckcon == 3)
    {
        y = y
        duckcon = 4
        ducktimer = 0
    }
    if (duckcon == 4)
    {
        ducktimer += 1
        if (ducktimer >= (6 / f) && turboactive == 0)
            ducking = 0
        if (ducktimer >= (12 / f) && turboactive == 1)
            ducking = 0
        if (turboactive == 1 && long_duck == 1)
            vspeed -= (0.05 * f)
        else
            vspeed -= ((0.5 * f) * duck_speed)
        if (y <= (basey + (6 * f)))
        {
            speed = 0
            y = basey
            duckcon = 5
        }
    }
    if (duckcon == 5)
        1
}
if (jumpcon > 0)
{
    long_jump = 0
    long_jump = 1
    if (jumpcon == 1 && long_jump == 2)
    {
        x = basex
        y = basey
        jumping = 1
        image_index = 5
        vspeed = -5
        jumpcon = 2
    }
    if (jumpcon == 2 && long_jump == 2)
    {
        vspeed *= 0.9
        if (vspeed >= -1 && long_jump == 0)
            jumpcon = 3
        if (vspeed >= -0.5)
            jumpcon = 3
    }
    if (jumpcon == 1)
    {
        x = basex
        y = basey
        jumping = 1
        image_index = 5
        vspeed = -7
        jumpcon = 2
    }
    if (jumpcon == 2)
    {
        vspeed += 0.3
        if (long_jump == 0)
            vspeed += 0.2
        if (vspeed > 0 && y >= (basey - 6))
        {
            speed = 0
            y = basey
            jumpcon = 3
        }
    }
    if (jumpcon == 3)
    {
        y = y
        jumpcon = 4
        jumptimer = 0
    }
    if (jumpcon == 4)
    {
        vspeed += 0.5
        if (y >= (basey - 6))
        {
            speed = 0
            y = basey
            jumpcon = 5
        }
    }
    if (jumpcon == 5)
    {
        jumping = 0
        1
    }
}
if (hurtcon > 0)
{
    if (hurtcon == 1)
    {
        if arcade
        {
            327
            303
            302
        }
        else
        {
            170
            116
            114
        }
        image_index = 7
        vspeed = (5 * f)
        friction = (1 * f)
        if (drawflip == 0)
            hspeed = (3 * f)
        else
            hspeed = (-3 * f)
        hurtcon = 2
    }
    if (hurtcon == 2)
    {
        hurttimer += 1
        if (hurttimer >= hurt_length)
        {
            speed = 0
            friction = 0
            1
        }
    }
}
if (specialcon >= 1)
    image_index = 1
if (swordactive == 0)
{
    if (imagefisty[image_index] < 0)
    {
        flametimer++
        if (flameactive == 1 && flametimer >= 3)
        {
            flametimer = 0
            flippo = 1
            if (drawflip == 1)
                flippo = -1
            flame = gml_Script_instance_create((x + (imagefistx[image_index] * flippo)), (y + imagefisty[image_index]), o_boxingflame)
            flame.direction = 360
            flame.speed = 2
            flame.friction = 0.1
        }
        if (flamepunch == 1)
        {
            flippo = 1
            if (drawflip == 1)
                flippo = -1
            randdir = 360
            for (i = 0; i < 8; i++)
            {
                flame = gml_Script_instance_create((x + (imagefistx[image_index] * flippo)), (y + imagefisty[image_index]), o_boxingflame)
                flame.direction = (randdir + (i * 45))
                flame.speed = 6
                flame.friction = 0.2
            }
            flamepunch = 0
            flametimer = -10
        }
    }
    if (imagefisty[image_index] < 0)
    {
        lasertimer++
        if (laseractive == 1 && lasertimer >= 3)
        {
            lasertimer = 0
            flippo = 1
            if (drawflip == 1)
                flippo = -1
            flame = gml_Script_instance_create((x + (imagefistx[image_index] * flippo)), (y + imagefisty[image_index]), o_boxingflame)
            flame.direction = 360
            flame.speed = 2
            flame.friction = 0.1
            flame.sprite_index = spr_boxing_laser_square
            flame.dustmode = 1
        }
        if (laserpunch == 1)
        {
            flippo = 1
            if (drawflip == 1)
                flippo = -1
            randdir = 360
            for (i = 0; i < 8; i++)
            {
                flame = gml_Script_instance_create((x + (imagefistx[image_index] * flippo)), (y + imagefisty[image_index]), o_boxingflame)
                flame.direction = (randdir + (i * 45))
                flame.speed = 6
                flame.friction = 0.2
                flame.sprite_index = spr_boxing_laser_square
                flame.dustmode = 1
            }
            laserpunch = 0
            lasertimer = -10
        }
    }
}
invincibility_timer += 1
if (invincibility_timer == 0 && invincible == 1)
    invincible = 0
buffer_z -= 1
buffer_x -= 1
buffer_u -= 1
buffer_d -= 1
buffer_r -= 1
buffer_l -= 1
