buffer += 1
if (global.interact == 5)
{
    xx = gml_Script___view_get(0, view_current)
    yy = (gml_Script___view_get(1, view_current) + 10)
    moveyy = yy
    var stat_right = 263
    if (global.lang == "ja")
        stat_right = 300
    if (obj_mainchara_ch1.y > (yy + 120))
        moveyy += 135
    if (global.menuno != 4)
    {
        16777215
        draw_rectangle((16 + xx), (16 + moveyy), (86 + xx), (70 + moveyy), false)
        draw_rectangle((16 + xx), (74 + yy), (86 + xx), (147 + yy), false)
        if (global.menuno == 1 || global.menuno == 5 || global.menuno == 6)
            draw_rectangle((94 + xx), (16 + yy), (266 + xx), (196 + yy), false)
        if (global.menuno == 2)
            draw_rectangle((94 + xx), (16 + yy), ((stat_right + 3) + xx), (224 + yy), false)
        if (global.menuno == 3)
            draw_rectangle((94 + xx), (16 + yy), (266 + xx), (150 + yy), false)
        if (global.menuno == 7)
            draw_rectangle((94 + xx), (16 + yy), (266 + xx), (216 + yy), false)
        0
        draw_rectangle((19 + xx), (19 + moveyy), (83 + xx), (67 + moveyy), false)
        draw_rectangle((19 + xx), (77 + yy), (83 + xx), (144 + yy), false)
        if (global.menuno == 1 || global.menuno == 5 || global.menuno == 6)
            draw_rectangle((97 + xx), (19 + yy), (263 + xx), (193 + yy), false)
        if (global.menuno == 2)
            draw_rectangle((97 + xx), (19 + yy), (stat_right + xx), (221 + yy), false)
        if (global.menuno == 3)
            draw_rectangle((97 + xx), (19 + yy), (263 + xx), (147 + yy), false)
        if (global.menuno == 7)
            draw_rectangle((97 + xx), (19 + yy), (263 + xx), (213 + yy), false)
        16777215
        5
        draw_text((23 + xx), (49 + moveyy), ((("obj_overworldc_slash_Draw_0_gml_36_0" + string(global.lhp)) + "/") + string(global.lmaxhp)))
        draw_text((23 + xx), (40 + moveyy), ("obj_overworldc_slash_Draw_0_gml_37_0" + string(global.llv)))
        draw_text((23 + xx), (58 + moveyy), ("obj_overworldc_slash_Draw_0_gml_39_0" + string(global.lgold)))
        "main"
        var _itemTextColor = (hasitems ? 16777215 : 8421504)
        if (global.lang == "ja")
        {
            draw_text((20 + xx), (20 + moveyy), global.lcharname)
            _itemTextColor
            draw_text((40 + xx), (84 + yy), "obj_overworldc_slash_Draw_0_gml_42_0")
        }
        else
        {
            draw_text((23 + xx), (20 + moveyy), global.lcharname)
            _itemTextColor
            draw_text((42 + xx), (84 + yy), "obj_overworldc_slash_Draw_0_gml_42_0")
        }
        16777215
        draw_text((42 + xx), (102 + yy), "obj_overworldc_slash_Draw_0_gml_43_0")
        draw_text((42 + xx), (120 + yy), "obj_overworldc_slash_Draw_0_gml_44_0")
        if (global.menuno == 1 || global.menuno == 5)
        {
            for (i = 0; i < 8; i += 1)
                draw_text((116 + xx), ((30 + yy) + (i * 16)), global.litemname[i])
            draw_text((116 + xx), (170 + yy), "obj_overworldc_slash_Draw_0_gml_52_0")
            draw_text(((116 + xx) + 48), (170 + yy), "obj_overworldc_slash_Draw_0_gml_53_0")
            draw_text(((116 + xx) + 105), (170 + yy), "obj_overworldc_slash_Draw_0_gml_54_0")
        }
    }
    if (global.menuno == 3)
    {
        for (i = 0; i < 7; i += 1)
            draw_text((116 + xx), ((30 + yy) + (i * 16)), global.phonename[i])
    }
    if (global.menuno == 2)
    {
        draw_text((108 + xx), (32 + yy), gml_Script_scr_84_get_subst_string_ch1(gml_Script_scr_84_get_lang_string_ch1("obj_overworldc_slash_Draw_0_gml_66_0"), global.lcharname))
        draw_text((108 + xx), (62 + yy), ("obj_overworldc_slash_Draw_0_gml_67_0" + string(global.llv)))
        draw_text((108 + xx), (78 + yy), (gml_Script_scr_84_get_subst_string_ch1(gml_Script_scr_84_get_lang_string_ch1("obj_overworldc_slash_Draw_0_gml_68_0"), global.lhp) + string(global.lmaxhp)))
        draw_text((108 + xx), (110 + yy), ((gml_Script_scr_84_get_subst_string_ch1(gml_Script_scr_84_get_lang_string_ch1("obj_overworldc_slash_Draw_0_gml_70_0"), global.lat) + string(global.lwstrength)) + ")"))
        draw_text((108 + xx), (126 + yy), ((gml_Script_scr_84_get_subst_string_ch1(gml_Script_scr_84_get_lang_string_ch1("obj_overworldc_slash_Draw_0_gml_71_0"), global.ldf) + string(global.ladef)) + ")"))
        weaponname = "obj_overworldc_slash_Draw_0_gml_72_0"
        armorname = "obj_overworldc_slash_Draw_0_gml_73_0"
        if (global.lweapon == 2)
            weaponname = "obj_overworldc_slash_Draw_0_gml_74_0"
        if (global.lweapon == 6)
            weaponname = "obj_overworldc_slash_Draw_0_gml_75_0"
        if (global.lweapon == 7)
            weaponname = "obj_overworldc_slash_Draw_0_gml_76_0"
        if (global.larmor == 3)
            armorname = "obj_overworldc_slash_Draw_0_gml_77_0"
        draw_text((108 + xx), (156 + yy), ("obj_overworldc_slash_Draw_0_gml_80_0" + weaponname))
        draw_text((108 + xx), (172 + yy), ("obj_overworldc_slash_Draw_0_gml_81_0" + armorname))
        draw_text((108 + xx), (192 + yy), ("obj_overworldc_slash_Draw_0_gml_82_0" + string(global.lgold)))
        if (global.lcharname >= 7)
            draw_text((192 + xx), (32 + yy), "obj_overworldc_slash_Draw_0_gml_88_0")
        nextlevel = 0
        draw_text((192 + xx), (110 + yy), ("obj_overworldc_slash_Draw_0_gml_91_0" + string(global.lxp)))
        if (global.llv == 1)
            nextlevel = (10 - global.lxp)
        if (global.llv == 2)
            nextlevel = (30 - global.lxp)
        if (global.llv == 3)
            nextlevel = (70 - global.lxp)
        if (global.llv == 4)
            nextlevel = (120 - global.lxp)
        if (global.llv == 5)
            nextlevel = (200 - global.lxp)
        if (global.llv == 6)
            nextlevel = (300 - global.lxp)
        if (global.llv == 7)
            nextlevel = (500 - global.lxp)
        if (global.llv == 8)
            nextlevel = (800 - global.lxp)
        if (global.llv == 9)
            nextlevel = (1200 - global.lxp)
        if (global.llv == 10)
            nextlevel = (1700 - global.lxp)
        if (global.llv == 11)
            nextlevel = (2500 - global.lxp)
        if (global.llv == 12)
            nextlevel = (3500 - global.lxp)
        if (global.llv == 13)
            nextlevel = (5000 - global.lxp)
        if (global.llv == 14)
            nextlevel = (7000 - global.lxp)
        if (global.llv == 15)
            nextlevel = (10000 - global.lxp)
        if (global.llv == 16)
            nextlevel = (15000 - global.lxp)
        if (global.llv == 17)
            nextlevel = (25000 - global.lxp)
        if (global.llv == 18)
            nextlevel = (50000 - global.lxp)
        if (global.llv == 19)
            nextlevel = (99999 - global.lxp)
        if (global.llv >= 20)
            nextlevel = 0
        draw_text((192 + xx), (126 + yy), ("obj_overworldc_slash_Draw_0_gml_112_0" + string(nextlevel)))
    }
    if (global.menuno == 444)
    {
    }
    if (global.menuno == 0)
        draw_sprite(spr_heartsmall_ch1, 0, (28 + xx), ((88 + yy) + (18 * global.menucoord[0])))
    if (global.menuno == 1)
        draw_sprite(spr_heartsmall_ch1, 0, (104 + xx), ((34 + yy) + (16 * global.menucoord[1])))
    if (global.menuno == 3)
        draw_sprite(spr_heartsmall_ch1, 0, (104 + xx), ((34 + yy) + (16 * global.menucoord[3])))
    if (global.menuno == 6)
        draw_sprite(spr_heartsmall_ch1, 0, (104 + xx), ((34 + yy) + (16 * global.menucoord[6])))
    if (global.menuno == 7)
        draw_sprite(spr_heartsmall_ch1, 0, (104 + xx), ((34 + yy) + (16 * global.menucoord[7])))
    if (global.menuno == 5)
    {
        if (global.menucoord[5] == 0)
            draw_sprite(spr_heartsmall_ch1, 0, ((104 + xx) + (45 * global.menucoord[5])), (174 + yy))
        if (global.menucoord[5] == 1)
            draw_sprite(spr_heartsmall_ch1, 0, ((104 + xx) + ((45 * global.menucoord[5]) + 3)), (174 + yy))
        if (global.menucoord[5] == 2)
            draw_sprite(spr_heartsmall_ch1, 0, ((104 + xx) + ((45 * global.menucoord[5]) + 15)), (174 + yy))
    }
}
