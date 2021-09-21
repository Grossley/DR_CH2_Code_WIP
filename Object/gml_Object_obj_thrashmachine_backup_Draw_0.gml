wsinerrate = 0.8
if (part[2] >= 0)
    wsiner += wsinerrate
if (animate == 0)
{
    siner = 0
    wsiner = 0
}
walkc = cos((wsiner / 3))
if launch
{
    image_angle -= 35
    yy = y
    if ((image_angle % 360) != 0)
    {
        var _xoff = (-3 * s)
        var _yoff = (12 * s)
        var _x2 = xx
        var _y2 = yy
        xx = (gml_Script_scr_orbitx(_x2, _y2, (_x2 - _xoff), (_y2 - _yoff), image_angle) + _xoff)
        yy = (gml_Script_scr_orbity(_x2, _y2, (_x2 - _xoff), (_y2 - _yoff), image_angle) + _yoff)
    }
}
var _flash = 0
var _do_flash = (rim_flash > 0 || body_flash > 0)
var _rim_color = merge_color(c_black, c_white, rim_flash)
var _flash_color = merge_color(c_black, c_white, body_flash)
for (loop = false; loop < 2; loop += 1)
{
    if (loop == false)
    {
        gml_Script_draw_set_blend_mode(0)
        color[0] = basecolor
        color[1] = basecolor
        color[2] = basecolor
    }
    else if (loop == true)
    {
        gml_Script_draw_set_blend_mode(1)
        color[0] = dcolor[0]
        color[1] = dcolor[1]
        color[2] = dcolor[2]
    }
    _flash = (loop == true && _do_flash)
    walka = (-sin((wsiner / 6)))
    walkb = (-cos((wsiner / 6)))
    if (moving == 1 && part[2] == 0 && walkb <= 0)
        walkb *= 3
    var _pieceVector = gml_Script_Vector2(0, 0)
    if drawfeet
    {
        var _thrash_image = 0
        if (bad == 0)
        {
            if (part[2] == 0)
            {
                _pieceVector = gml_Script_scr_rotatevector(((-11 * s) + ((s * walka) * 2)), ((19 * s) + ((s * walkb) * 1)), image_angle)
                _thrash_image = 0
            }
            if (part[2] == 1)
            {
                _pieceVector = gml_Script_scr_rotatevector(((-6 * s) + ((s * walka) * 2)), ((17 * s) + ((s * walkb) * 1)), image_angle)
                _thrash_image = 1
            }
            if (part[2] == 3)
            {
                _thrash_image = 4
                _pieceVector = gml_Script_scr_rotatevector(((-8 * s) + ((s * walka) * 2)), ((21 * s) + ((s * walkb) * 1)), image_angle)
            }
            gml_Script_draw_sprite_ext_glow(2329, _thrash_image, (xx + _pieceVector.x), (yy + _pieceVector.y), s, s, image_angle, color[2], a, override_color)
            if _flash
            {
                gml_Script_draw_sprite_ext_glow(2329, _thrash_image, (xx + _pieceVector.x), (yy + _pieceVector.y), s, s, image_angle, 16777215, a, _flash_color)
                gml_Script_draw_sprite_ext_glow(3284, _thrash_image, (xx + _pieceVector.x), (yy + _pieceVector.y), s, s, image_angle, _rim_color, a)
            }
        }
        else
        {
            if (part[2] == 0)
                gml_Script_draw_sprite_ext_glow(2325, 0, ((xx - (11 * s)) + ((s * walka) * 2)), ((yy + (19 * s)) + ((s * walkb) * 1)), (s / 2), (s / 2), 0, color[2], a, override_color)
            if (part[2] == 1)
                gml_Script_draw_sprite_ext_glow(2325, 1, ((xx - (6 * s)) + ((s * walka) * 2)), ((yy + (17 * s)) + ((s * walkb) * 1)), (s / 2), (s / 2), 0, color[2], a, override_color)
            if (part[2] == 3)
                gml_Script_draw_sprite_ext_glow(2325, 4, ((xx - (8 * s)) + ((s * walka) * 2)), ((yy + (21 * s)) + ((s * walkb) * 1)), (s / 2), (s / 2), 0, color[2], a, override_color)
        }
    }
}
if (part[0] >= 0)
{
    for (loop = false; loop < 2; loop += 1)
    {
        if (loop == false)
        {
            gml_Script_draw_set_blend_mode(0)
            color[0] = basecolor
            color[1] = basecolor
            color[2] = basecolor
        }
        if (loop == true)
        {
            gml_Script_draw_set_blend_mode(1)
            color[0] = dcolor[0]
            color[1] = dcolor[1]
            color[2] = dcolor[2]
        }
        _flash = (_do_flash && loop == true)
        _pieceVector = gml_Script_scr_rotatevector(0, (s * walkc), image_angle)
        if ((!_flash) && _do_flash)
            gml_Script_scr_draw_outline_ext(spr_thrashbody, part[0], xx, (yy + _pieceVector.y), s, s, image_angle, c_white, rim_flash, 2)
        if (bad == 0)
            gml_Script_draw_sprite_ext_glow(2328, part[0], xx, (yy + _pieceVector.y), s, s, image_angle, color[0], a, override_color)
        else if (bad == 1)
            gml_Script_draw_sprite_ext_glow(2327, part[0], xx, (yy + _pieceVector.y), (s / 2), (s / 2), image_angle, color[0], a, override_color)
        if _flash
        {
            var _af = gml_Script_scr_custom_afterimage_ext(obj_power_up_afterimage, spr_thrashbody, 0, xx, (yy + _pieceVector.y), 3, 3)
            _af.use_pivot = 1
            _af.pivotx = ((_pieceVector.x / 3) + 3)
            _af.pivoty = ((_pieceVector.y / 3) - 12)
            gml_Script_draw_set_blend_mode(1)
            draw_sprite_ext(spr_thrashbody_flash, part[0], xx, (yy + _pieceVector.y), s, s, image_angle, merge_color(color[0], c_white, 0.5), rim_flash)
        }
    }
}
for (loop = false; loop < 2; loop += 1)
{
    if (loop == false)
    {
        gml_Script_draw_set_blend_mode(0)
        color[0] = basecolor
        color[1] = basecolor
        color[2] = basecolor
    }
    if (loop == true)
    {
        gml_Script_draw_set_blend_mode(1)
        color[0] = dcolor[0]
        color[1] = dcolor[1]
        color[2] = dcolor[2]
    }
    _flash = (_do_flash && loop == true)
    if (bad == 0)
    {
        if (part[1] == 0)
        {
            _pieceVector = gml_Script_scr_rotatevector((-8 * s), ((6 * s) + ((s * walkc) * 2)), image_angle)
            headx = (xx + _pieceVector.x)
            heady = (yy + _pieceVector.y)
            var _headsprite = spr_thrashweapon_laser
            if ((!_flash) && _do_flash)
                gml_Script_scr_draw_outline_ext(spr_thrashweapon_laser, part[0], headx, heady, s, s, image_angle, c_white, rim_flash, 2)
            if _flash
            {
                gml_Script_draw_set_blend_mode(0)
                var _laser_color = merge_color(color[1], c_white, rim_flash)
                gml_Script_draw_sprite_ext_glow(1083, 0, headx, heady, s, s, image_angle, _laser_color, rim_flash)
            }
        }
        if (part[1] == 1)
        {
            _pieceVector = gml_Script_scr_rotatevector((-10 * s), ((6 * s) + ((s * walkc) * 2)), image_angle)
            headx = (xx + _pieceVector.x)
            heady = (yy + _pieceVector.y)
            _headsprite = spr_thrashweapon_sword
            gml_Script_draw_sprite_ext_glow(2336, 0, headx, heady, s, s, (headangle + image_angle), color[1], a, override_color)
            if _flash
            {
                gml_Script_draw_set_blend_mode(1)
                gml_Script_draw_sprite_ext_glow(2788, 0, headx, heady, s, s, image_angle, 16777215, rim_flash)
            }
        }
        if (part[1] == 2)
        {
            _pieceVector = gml_Script_scr_rotatevector(((-s) * 4), ((5 * s) + ((s * walkc) * 2)), image_angle)
            headx = (xx + _pieceVector.x)
            heady = (yy + _pieceVector.y)
            _headsprite = spr_thrashweapon_flame
            gml_Script_draw_sprite_ext_glow(2334, 0, headx, heady, s, s, (headangle + image_angle), color[1], a, override_color)
            if _flash
            {
                gml_Script_draw_sprite_ext_glow(2334, 0, headx, heady, s, s, image_angle, 0, a, _flash_color)
                gml_Script_draw_sprite_ext_glow(3285, 0, headx, heady, s, s, image_angle, _rim_color, a)
            }
        }
        if (part[1] == 3)
        {
            _pieceVector = gml_Script_scr_rotatevector((-8 * s), ((3 * s) + ((s * walkc) * 2)), image_angle)
            headx = (xx + _pieceVector.x)
            heady = (yy + _pieceVector.y)
            _headsprite = spr_thrashweapon_duck
            gml_Script_draw_sprite_ext_glow(2333, 0, headx, heady, s, s, (headangle + image_angle), color[1], a, override_color)
            if _flash
            {
                gml_Script_draw_sprite_ext_glow(3330, 0, headx, heady, s, s, image_angle, _rim_color, a)
                gml_Script_draw_sprite_ext_glow(2333, 0, headx, heady, s, s, image_angle, 16777215, body_flash, 16777215)
            }
            if _flash
            {
                _af = gml_Script_scr_custom_afterimage_ext(obj_power_up_afterimage, _headsprite, 0, headx, heady, 3, 3)
                _af.use_pivot = 1
                _af.pivotx = ((_pieceVector.x / 3) + 3)
                _af.pivoty = ((_pieceVector.y / 3) - 12)
            }
        }
    }
    else
    {
        if (part[1] == 0)
        {
            headx = (xx - (8 * s))
            heady = ((yy + (6 * s)) + ((s * walkc) * 2))
            gml_Script_draw_sprite_ext_glow(2332, 0, (xx - (8 * s)), ((yy + (6 * s)) + ((s * walkc) * 2)), (s / 2), (s / 2), headangle, color[1], a, override_color)
        }
        if (part[1] == 1)
        {
            headx = (xx - (10 * s))
            heady = ((yy + (6 * s)) + ((s * walkc) * 2))
            gml_Script_draw_sprite_ext_glow(2331, 0, (xx - (10 * s)), ((yy + (6 * s)) + ((s * walkc) * 2)), (s / 2), (s / 2), headangle, color[1], a, override_color)
        }
        if (part[1] == 2)
        {
            headx = (xx - (s * 4))
            heady = ((yy + (5 * s)) + ((s * walkc) * 2))
            gml_Script_draw_sprite_ext_glow(2330, 0, (xx - (s * 4)), ((yy + (5 * s)) + ((s * walkc) * 2)), (s / 2), (s / 2), headangle, color[1], a, override_color)
        }
        if (part[1] == 3)
        {
            headx = (xx - (8 * s))
            heady = ((yy + (3 * s)) + ((s * walkc) * 2))
            gml_Script_draw_sprite_ext_glow(2333, 0, (xx - (8 * s)), ((yy + (3 * s)) + ((s * walkc) * 2)), s, s, headangle, color[1], a, override_color)
        }
    }
}
for (loop = false; loop < 2; loop += 1)
{
    if (loop == false)
    {
        gml_Script_draw_set_blend_mode(0)
        color[0] = basecolor
        color[1] = basecolor
        color[2] = basecolor
    }
    if (loop == true)
    {
        gml_Script_draw_set_blend_mode(1)
        color[0] = dcolor[0]
        color[1] = dcolor[1]
        color[2] = dcolor[2]
    }
    _flash = (rim_flash > 0 && loop == true)
    walka = sin((wsiner / 6))
    walkb = cos((wsiner / 6))
    if (walkb >= 0 && laststep < 0)
        stomp = 1
    else if (walkb <= 0 && laststep > 0)
        stomp = -1
    laststep = walkb
    if (moving == 1 && part[2] == 0 && walkb <= 0)
        walkb *= 3
    if (bad == 0)
    {
        var _bottom = 6
        if (part[2] == 0)
        {
            _pieceVector = gml_Script_scr_rotatevector(((-5 * s) + ((s * walka) * 2)), ((20 * s) + ((s * walkb) * 1)), image_angle)
            _thrash_image = 0
            _bottom = 4
            if (!drawfeet)
                gml_Script_draw_sprite_part_ext_glow(2329, 0, 0, 0, 34, 4, ((xx - (5 * s)) + ((s * walka) * 2)), ((yy + (20 * s)) + ((s * walkb) * 1)), s, s, color[2], a, override_color)
            else
                gml_Script_draw_sprite_ext_glow(2329, 0, (xx + _pieceVector.x), (yy + _pieceVector.y), s, s, image_angle, color[2], a, override_color)
        }
        if (part[2] == 1)
        {
            _pieceVector = gml_Script_scr_rotatevector(((s * walka) * 2), ((18 * s) + ((s * walkb) * 1)), image_angle)
            _thrash_image = 1
            if (!drawfeet)
                gml_Script_draw_sprite_part_ext_glow(2329, 1, 0, 0, 34, 6, (xx + ((s * walka) * 2)), ((yy + (18 * s)) + ((s * walkb) * 1)), s, s, color[2], a, override_color)
            else
                gml_Script_draw_sprite_ext_glow(2329, 1, (xx + _pieceVector.x), (yy + _pieceVector.y), s, s, image_angle, color[2], a, override_color)
        }
        if (part[2] == 2)
        {
            _pieceVector = gml_Script_scr_rotatevector((-15 * s), (18 * s), image_angle)
            _thrash_image = 2
            if (!drawfeet)
                gml_Script_draw_sprite_part_ext_glow(2329, 2, 0, 0, 34, 6, (xx - (15 * s)), (yy + (18 * s)), s, s, color[2], a, override_color)
            else
                gml_Script_draw_sprite_ext_glow(2329, 2, (xx + _pieceVector.x), (yy + _pieceVector.y), s, s, image_angle, color[2], a, override_color)
        }
        if (part[2] == 3)
        {
            walka = sin((wsiner / 6))
            walkb = cos((wsiner / 6))
            _pieceVector = gml_Script_scr_rotatevector(((s * walka) * 2), ((22 * s) + ((s * walkb) * 1)), image_angle)
            _thrash_image = 3
            _bottom = 2
            if (!drawfeet)
                gml_Script_draw_sprite_part_ext_glow(2329, 3, 0, 0, 34, 2, (xx + ((s * walka) * 2)), ((yy + (22 * s)) + ((s * walkb) * 1)), s, s, color[2], a, override_color)
            else
                gml_Script_draw_sprite_ext_glow(2329, 3, (xx + _pieceVector.x), (yy + _pieceVector.y), s, s, image_angle, color[2], a, override_color)
        }
        if _flash
        {
            gml_Script_draw_set_blend_mode(1)
            if (!drawfeet)
                draw_sprite_part_ext(spr_thrashfoot_flash, _thrash_image, 0, 0, 34, _bottom, (xx + _pieceVector.x), (yy + _pieceVector.y), s, s, c_white, rim_flash)
            else
                draw_sprite_ext(spr_thrashfoot_flash, _thrash_image, (xx + _pieceVector.x), (yy + _pieceVector.y), s, s, image_angle, c_white, rim_flash)
        }
    }
    else
    {
        if (part[2] == 0)
            gml_Script_draw_sprite_ext_glow(2325, 0, ((xx - (5 * s)) + ((s * walka) * 2)), ((yy + (20 * s)) + ((s * walkb) * 1)), (s / 2), (s / 2), 0, color[2], a, override_color)
        if (part[2] == 1)
            gml_Script_draw_sprite_ext_glow(2325, 1, (xx + ((s * walka) * 2)), ((yy + (18 * s)) + ((s * walkb) * 1)), (s / 2), (s / 2), 0, color[2], a, override_color)
        if (part[2] == 2)
            gml_Script_draw_sprite_ext_glow(2325, 2, (xx - (15 * s)), (yy + (18 * s)), (s / 2), (s / 2), 0, color[2], a, override_color)
        if (part[2] == 3)
        {
            walka = sin((wsiner / 6))
            walkb = cos((wsiner / 6))
            gml_Script_draw_sprite_ext_glow(2329, 3, (xx + ((s * walka) * 2)), ((yy + (22 * s)) + ((s * walkb) * 1)), s, s, 0, color[2], a, override_color)
        }
    }
}
gml_Script_draw_set_blend_mode(0)
if ((image_angle % 360) != 0)
{
    xx = _x2
    yy = _y2
}
if (dbselect == 1)
{
    if keyboard_check_pressed(vk_right)
    {
        part[0] += 1
        if (part[0] >= 4)
            part[0] = 0
    }
    if keyboard_check_pressed(vk_up)
    {
        part[1] += 1
        if (part[1] >= 4)
            part[1] = 0
    }
    if keyboard_check_pressed(vk_shift)
    {
        part[2] += 1
        if (part[2] >= 4)
            part[2] = 0
    }
    if keyboard_check(vk_space)
    {
        dcolor[0] = make_color_hsv((wsiner * 2), 255, 255)
        dcolor[1] = make_color_hsv(wsiner, 255, 255)
        dcolor[2] = make_color_hsv((wsiner / 2), 255, 255)
    }
    if keyboard_check_pressed(vk_return)
    {
        s += 1
        if (s >= 5)
            s = 1
    }
}
