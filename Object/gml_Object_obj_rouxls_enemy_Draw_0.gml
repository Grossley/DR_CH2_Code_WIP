var _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_20, _temp_local_var_21, _temp_local_var_24, _temp_local_var_27, _temp_local_var_28, _temp_local_var_29, _temp_local_var_30, _temp_local_var_31, _temp_local_var_32, _temp_local_var_33, _temp_local_var_34, _temp_local_var_37, _temp_local_var_38, _temp_local_var_39, _temp_local_var_40, _temp_local_var_44, _temp_local_var_45, _temp_local_var_46, _temp_local_var_47, _temp_local_var_48, _temp_local_var_49, _temp_local_var_50, _temp_local_var_51, _temp_local_var_61, _temp_local_var_62, _temp_local_var_63, _temp_local_var_64;
if (state == 3)
{
    gml_Script_scr_enemyhurt_tired_after_damage(0)
    hurttimer -= 1
    if (hurttimer < 0)
        state = 0
    else
    {
        hurtshake += 1
        if (hurtshake > 1)
        {
            if (shakex > 0)
                shakex -= 1
            if (shakex < 0)
                shakex += 1
            shakex = (-shakex)
            hurtshake = 0
        }
        draw_sprite_ext(hurtsprite, 0, ((x + shakex) + hurtspriteoffx), (y + hurtspriteoffy), 2, 2, 0, image_blend, 1)
    }
}
fixy = 0
if (global.flag[221] == 2)
    fixy = 10
if (global.flag[221] == 3)
    fixy = 26
thrash.xx = (x + 34)
thrash.yy = (y + 108)
if (state == 0)
{
    fsiner += 1
    if saberanim
    {
        if (thissprite != sabersprite)
        {
            siner = 0
            thissprite = sabersprite
        }
        else if (siner < 3)
            siner++
    }
    else
    {
        siner += 0.16666666666666666
        thissprite = idlesprite
        if (global.mercymod[myself] >= global.mercymax[myself])
            thissprite = sparedsprite
    }
    var xpos = (thrashcon == 0 ? x : remx)
    if (thrashcon > 2 && thrashcon != 6)
        gml_Script_draw_monster_body_part(thissprite, siner, xpos, (y + floatheight))
    else
        gml_Script_draw_monster_body_part(thissprite, siner, xpos, ((y + (thrash.s * thrash.walkc)) + fixy))
}
if (becomeflash == false)
    flash = false
becomeflash = false
if gml_Script_scr_debug()
{
}
var turretbody = part[0] == 2
thrash.s = 3
var _temp_local_var_4 = thrash
var puddx = (remx + (turretbody ? 18 : 34))
var puddy = ((remy + 173) + ((thrash.s * thrash.walkc) / 4))
if ((!depthChange) && instance_exists(obj_growtangle))
{
    depthChange = 1
    puddle.depth = (thrash.depth + 1)
}
else if (depthChange && (!instance_exists(obj_growtangle)))
{
    depthChange = 0
    puddle.depth = (simcity.depth + 1)
}
puddle.x = puddx
puddle.y = ((remy + 173) + ((thrash.s * cos(((thrash.wsiner + thrash.wsinerrate) / 3))) / 4))
if (thrashcon < 2 || thrashcon > 5)
    draw_sprite_ext(spr_rouxls_puddle, (turretbody ? 3 : 1), puddx, puddy, 2, 2, 0, c_white, 1)
puddle.image_index = (turretbody ? 2 : 0)
var _wheels = obj_thrashmachine.part[2] == 1
if (thrashmode == 0)
{
}
if (thrashmode == 1)
{
    if (thrashcon == 0)
    {
        thrashtimer = 0
        thrashcon = 1
        var xoff = 0
        if turretbody
        {
            xoff = 10
            d = gml_Script_instance_create(((puddle.x - 60) + xoff), (puddle.y + 4), obj_rouxls_splasheffect)
            d.depth = (depth - 1)
        }
        d = gml_Script_instance_create(((puddle.x - 30) + xoff), (puddle.y + 4), obj_rouxls_splasheffect)
        d.depth = (depth - 1)
        d = gml_Script_instance_create(((puddle.x + 30) + xoff), (puddle.y + 4), obj_rouxls_splasheffect)
        d.depth = (depth - 1)
        d = gml_Script_instance_create((puddle.x + xoff), (puddle.y + 6), obj_rouxls_splasheffect)
        d.depth = (depth - 2)
    }
    if (thrashcon == 1)
    {
        thrash.wsinerrate = 0
        if (y < (remy - 10))
            thrash.drawfeet = 1
        if (y >= (gml_Script_cameray() + ((!headattack) ? 45 : 10)))
        {
            _temp_local_var_4.wsiner = (thrash.wsiner + 1.6)
            y -= 4
            var _temp_local_var_20 = stacktop
            var _temp_local_var_21 = thrash
        }
        else
        {
            if headattack
                thrashtimer = (arcsin(0.75) * 10)
            aimtime = (irandom(15) + 15)
            if (!headattack)
            {
                aimtime = 10
                switch obj_thrashmachine.part[2]
                {
                    case 0:
                        height_multiplier = (aimtime / 4.71238898038469)
                        break
                    case 1:
                        height_multiplier = (aimtime / 4.71238898038469)
                        thrashtimer = (aimtime - 10)
                        break
                    case 2:
                        height_multiplier = (aimtime / 4.71238898038469)
                        break
                    case 3:
                        height_multiplier = 5
                        break
                }

            }
            else
                height_multiplier = 5
            thrashcon = 2
            thrash.wsinerrate = 0
        }
    }
    if (thrashcon == 2)
    {
        thrashtimer++
        if ((thrashtimer % 8) == 0)
        {
            var ripple = gml_Script_instance_create(puddle.x, puddle.y, obj_rouxls_ripple)
            ripple.maxsize = clamp((1 - ((y - 90) / 45)), 0.1, 2)
            ripple.image_speed = 0
            ripple.image_index = turretbody
            ripple.depth = (puddle.depth - 1)
            submerged = 0
        }
        if headattack
        {
            var _temp_local_var_24 = (headattack ? 40 : 10)
            y = ((gml_Script_cameray() + thrashtimer) - (sin((thrashtimer / (headattack ? 10 : height_multiplier))) * 40))
        }
        else if (thrashtimer <= aimtime)
            y = ((gml_Script_cameray() + 45) - (sin(((thrashtimer / aimtime) * pi)) * 10))
        if (headattack && y <= (gml_Script_cameray() + 10) && global.turntimer <= 40)
        {
            headattack = 0
            thrashtimer = 0
            thrashcon = 5
        }
        else if ((!headattack) && thrashtimer >= (aimtime + 10))
        {
            thrashtimer = 0
            thrashcon = 3
            thrash.moving = 1
            floatheight = ((thrash.s * thrash.walkc) + fixy)
            d = gml_Script_instance_create(puddle.x, (puddle.y + 10), obj_rouxls_splasheffect)
            d.depth = (depth - 1)
            d.speed = advancespeed
            d.yscale = 4
            d.xscale = 3
        }
        else if (!headattack)
        {
            _temp_local_var_20.wsiner = (thrash.wsiner + (1.6 * (advancespeed / 4)))
            var _temp_local_var_61 = thrash
            var _temp_local_var_62 = thrash
            var _temp_local_var_63 = -9
            var _temp_local_var_64 = thrash
            if ((!headattack) && ((thrashtimer - aimtime) % 3) == 0)
            {
                d = gml_Script_instance_create(puddle.x, (puddle.y + 10), obj_rouxls_splasheffect)
                d.depth = (depth - 1)
                d.speed = advancespeed
                d.yscale = 3
                d.xscale = 2
            }
        }
    }
    if (thrashcon == 3)
    {
        if (x >= (gml_Script_camerax() + 200))
        {
            _temp_local_var_20.wsiner = (thrash.wsiner + (1.6 * (advancespeed / 8)))
            x -= advancespeed
            var _temp_local_var_27 = thrash
            var _temp_local_var_28 = thrash
            var _temp_local_var_29 = stacktop
            var _temp_local_var_30 = thrash
        }
        else
            thrashcon = 4
    }
    if (thrashcon == 4)
    {
        thrashtimer++
        if _wheels
        {
            if (thrashtimer <= 90)
            {
                _temp_local_var_27.wsiner = (thrash.wsiner + (1.6 * (advancespeed / 8)))
                var _temp_local_var_31 = thrash
                var _temp_local_var_32 = stacktop
                var _temp_local_var_33 = stacktop
                var _temp_local_var_34 = thrash
            }
            else
            {
                _temp_local_var_27.wsiner = (thrash.wsiner - 0.5)
                _temp_local_var_31 = thrash
                _temp_local_var_32 = stacktop
                _temp_local_var_33 = stacktop
                _temp_local_var_34 = thrash
            }
        }
        if (thrashtimer >= (_wheels ? 105 : 15))
        {
            thrashcon = 5
            thrashtimer = 0
        }
    }
    if (thrashcon == 5)
    {
        if (x < (remx - 6))
        {
            x += returnspeed
            _temp_local_var_31.wsiner = (thrash.wsiner - (1.6 * (returnspeed / 6)))
            var _temp_local_var_37 = stacktop
            var _temp_local_var_38 = stacktop
            var _temp_local_var_39 = -9
            var _temp_local_var_40 = thrash
        }
        else
        {
            x = remx
            thrashcon = 6
            thrash.moving = 0
        }
    }
    if (thrashcon == 6)
    {
        if ((!submerged) && y > (remy - 18))
        {
            xoff = 0
            if turretbody
            {
                xoff = 10
                d = gml_Script_instance_create(((puddle.x - 60) + xoff), (puddle.y + 4), obj_rouxls_splasheffect)
                d.depth = (depth - 1)
                d.speed = -2
            }
            d = gml_Script_instance_create(((puddle.x - 30) + xoff), (puddle.y + 4), obj_rouxls_splasheffect)
            d.depth = (depth - 1)
            d.speed = (turretbody ? -1.33 : -1)
            d = gml_Script_instance_create((puddle.x + xoff), (puddle.y + 6), obj_rouxls_splasheffect)
            d.depth = (depth - 2)
            d.speed = (turretbody ? 1.33 : 0)
            d = gml_Script_instance_create(((puddle.x + 30) + xoff), (puddle.y + 4), obj_rouxls_splasheffect)
            d.depth = (depth - 1)
            d.speed = 2
            submerged = 1
        }
        if (y > (remy - 10))
            thrash.drawfeet = 0
        if (y <= (remy - 4))
        {
            y += 4
            _temp_local_var_37.wsiner = (thrash.wsiner - 0.8)
            var _temp_local_var_44 = stacktop
            var _temp_local_var_45 = -9
            var _temp_local_var_46 = -9
            var _temp_local_var_47 = thrash
        }
        else
        {
            y = remy
            x = remx
            thrashcon = 0
            thrashmode = 0
            thrash.wsinerrate = 0.8
            advancespeed = 8
            returnspeed = 6
        }
    }
    if (thrashcon == 7)
    {
        if (thrashtimer == 50)
        {
            gml_Script_snd_play(177)
            thrash.a = 1
        }
        if (thrashtimer < 75)
        {
            thrashtimer++
            _temp_local_var_44.wsiner = (thrash.wsiner - 0.8)
            var _temp_local_var_48 = -9
            var _temp_local_var_49 = -9
            var _temp_local_var_50 = -9
            var _temp_local_var_51 = thrash
        }
        else
        {
            x = remx
            thrashcon = 6
            thrash.moving = 0
            returnease = 0
            thrashtimer = 0
        }
    }
}
if gml_Script_scr_debug()
{
    draw_set_color(c_white)
    if instance_exists(obj_battletester)
    {
        var debugstring = "[B] turn thrash debug on/off"
        if (thrash.dbselect == 1)
            debugstring += "#up/down/shift: change thrash parts#1-3/Numpad7-9 for specific attacks#4/Numpad 5 for random attack#0/Numpad 0 for random machine"
        gml_Script_scr_debug_print_persistent(debugstring)
    }
    if keyboard_check_pressed(ord("N"))
        thrashmode++
    if (thrashmode >= 2)
        thrashmode = 0
    if (thrashmode == 0)
        thrash.drawfeet = thrash.dbselect
}
