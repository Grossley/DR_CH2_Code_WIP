if init
    // WARNING: Popz'd an empty stack.
if (type == 2 && init == 1)
{
    16777215
    var topbary = 206
    ((((((0 + topbary) + 2) + 640) - 110) + topbary) + 110)
}
if (type == 1 && init == 1)
{
    16777215
    topbary = 179
    var botbary = 278
    ((((((((0 + topbary) + 2) + 640) - 110) + 20) + topbary) + 110) - 20)
    ((((((((0 + botbary) + 2) + 640) - 110) + 20) + botbary) + 110) - 20)
    2
    if (global.lang == "ja")
        draw_text_transformed(((((gml_Script_camerax() + 640) - 110) + 20) + 40), 346, ((string(((floor(menuScrollCurrent[0]) / 2) + 1)) + " / ") + string(ceil((menuMaximumID[0] / 2)))), 0.5, 1, 0)
    else
        draw_text_transformed(((((gml_Script_camerax() + 640) - 110) + 20) + 40), 346, (((gml_Script_stringsetloc("Page ", "obj_fusionmenu_slash_Draw_0_gml_171_0") + string(((floor(menuScrollCurrent[0]) / 2) + 1))) + " / ") + string(ceil((menuMaximumID[0] / 2)))), 0.5, 1, 0)
    0
}
if (type == 3 && init == 1)
{
    if (menu == 0)
    {
        "mainbig"
        16777215
        draw_text((xx + 80), (yy + 30), gml_Script_stringsetloc("Recruits", "obj_fusionmenu_slash_Draw_0_gml_14_0"))
        if (alternateMenu == 0)
        {
            draw_rectangle((xx + 330), (yy + 10), (xx + 620), (yy + 440), false)
            0
            draw_rectangle((xx + 334), (yy + 14), ((xx + 620) - 4), ((yy + 440) - 4), false)
        }
        reccolor = c_black
        if (recruitChapter[menuCoord[0]] == 1)
            reccolor = c_purple
        if (recruitChapter[menuCoord[0]] == 2)
            reccolor = c_aqua
        draw_rectangle_color((xx + 370), (yy + 75), ((xx + 370) + 205), ((yy + 75) + 150), c_black, c_black, reccolor, reccolor, 0)
        16777215
        draw_rectangle((xx + 370), (yy + 75), ((xx + 370) + 205), ((yy + 75) + 150), true)
        recruitspriteheight = recruitSprite[menuCoord[0]]
        recruitspritewidth = recruitSprite[menuCoord[0]]
        rx = (((recruitSprite[menuCoord[0]] * 2) - recruitspritewidth) + (recruitSpriteX[menuCoord[0]] * 2))
        ry = (((recruitSprite[menuCoord[0]] * 2) - (recruitspriteheight * 2)) + (recruitSpriteY[menuCoord[0]] * 2))
        animer += 0.25
        draw_sprite_ext(recruitSprite[menuCoord[0]], animer, ((xx + 470) + rx), ((yy + 220) + ry), 2, 2, 0, c_white, 1)
        if (recruitSprite[menuCoord[0]] == spr_werewire_idle)
        {
            draw_sprite_ext(spr_werewire_wire_curve, 0, (((xx + 470) + rx) - 20), (((yy + 220) + ry) - 12), 2, 2, 0, c_white, 1)
            draw_sprite_ext(spr_werewire_wire_vertical, 0, (((xx + 470) + rx) - 20), ((((yy + 220) + ry) - 12) - 31), 2, 8, 0, c_white, 1)
        }
        1
        draw_text((xx + 473), (yy + 240), recruitName[menuCoord[0]])
        0
        draw_text_transformed((xx + 368), (yy + 280), (gml_Script_stringsetloc("CHAPTER ", "obj_fusionmenu_slash_Draw_0_gml_47_0") + string(recruitChapter[menuCoord[0]])), 1, 1, 0)
        2
        draw_text_transformed((xx + 576), (yy + 280), (gml_Script_stringsetloc("LV ", "obj_fusionmenu_slash_Draw_0_gml_48_0") + string(recruitLevel[menuCoord[0]])), 1, 1, 0)
        0
        if (alternateMenu == 0)
        {
            if (global.is_console || obj_gamecontroller.gamepad_active)
            {
                draw_sprite_ext(gml_Script_scr_getbuttonsprite(global.input_g[4], 0), 0, (xx + 380), (yy + 323), 2, 2, 0, c_white, 1)
                draw_sprite_ext(gml_Script_scr_getbuttonsprite(global.input_g[5], 0), 0, (xx + 380), (yy + 353), 2, 2, 0, c_white, 1)
                draw_text((xx + 414), (yy + 320), gml_Script_stringsetloc("More Info", "obj_fusionmenu_slash_Draw_0_gml_70_0"))
                draw_text((xx + 414), (yy + 350), gml_Script_stringsetloc("Quit", "obj_fusionmenu_slash_Draw_0_gml_71_0"))
            }
            else
                draw_text((xx + 380), (yy + 320), gml_Script_stringsetsubloc("~1: More Info#~2: Quit", gml_Script_scr_get_input_name(4), gml_Script_scr_get_input_name(5), "obj_fusionmenu_slash_Draw_0_gml_50_0"))
        }
        else if (global.is_console || obj_gamecontroller.gamepad_active)
        {
            draw_sprite_ext(gml_Script_scr_getbuttonsprite(global.input_g[4], 0), 0, (xx + 380), (yy + 323), 2, 2, 0, c_white, 1)
            draw_sprite_ext(gml_Script_scr_getbuttonsprite(global.input_g[5], 0), 0, (xx + 380), (yy + 353), 2, 2, 0, c_white, 1)
            draw_text((xx + 414), (yy + 320), gml_Script_stringsetloc("More Info", "obj_fusionmenu_slash_Draw_0_gml_83_0"))
            draw_text((xx + 414), (yy + 350), gml_Script_stringsetloc("Quit", "obj_fusionmenu_slash_Draw_0_gml_84_0_b"))
        }
        else
            draw_text((xx + 380), (yy + 320), gml_Script_stringsetsubloc("~1: More Info#~2: Quit", gml_Script_scr_get_input_name(4), gml_Script_scr_get_input_name(5), "obj_fusionmenu_slash_Draw_0_gml_51_0"))
        if alternateMenu
        {
            1
            65280
            draw_text_transformed((xx + 298), (yy + 30), gml_Script_stringsetloc("PROGRESS", "obj_fusionmenu_slash_Draw_0_gml_56_0"), squished, 1, 0)
            0
        }
    }
    if (menu == 1)
    {
        reccolor = c_black
        if (recruitChapter[menuCoord[1]] == 1)
            reccolor = c_purple
        if (recruitChapter[menuCoord[1]] == 2)
            reccolor = 16776960
        draw_rectangle_color((xx + 80), (yy + 70), ((xx + 80) + 205), ((yy + 70) + 150), c_black, c_black, reccolor, reccolor, 0)
        16777215
        draw_rectangle((xx + 80), (yy + 70), ((xx + 80) + 205), ((yy + 70) + 150), true)
        recruitspriteheight = recruitSprite[menuCoord[1]]
        recruitspritewidth = recruitSprite[menuCoord[1]]
        rx = (((recruitSprite[menuCoord[1]] * 2) - recruitspritewidth) + (recruitSpriteX[menuCoord[1]] * 2))
        ry = (((recruitSprite[menuCoord[1]] * 2) - (recruitspriteheight * 2)) + (recruitSpriteY[menuCoord[1]] * 2))
        animer += 0.25
        draw_sprite_ext(recruitSprite[menuCoord[1]], animer, ((xx + 180) + rx), ((yy + 215) + ry), 2, 2, 0, c_white, 1)
        if (recruitSprite[menuCoord[1]] == spr_werewire_idle)
        {
            draw_sprite_ext(spr_werewire_wire_curve, 0, (((xx + 180) + rx) - 20), (((yy + 215) + ry) - 12), 2, 2, 0, c_white, 1)
            draw_sprite_ext(spr_werewire_wire_vertical, 0, (((xx + 180) + rx) - 20), ((((yy + 215) + ry) - 12) - 31), 2, 8, 0, c_white, 1)
        }
        16777215
        draw_text((xx + 300), (yy + 70), recruitName[menuCoord[1]])
        2
        draw_text_transformed((xx + 590), (yy + 30), ((string((menuCoord[menu] + 1)) + "/") + string((menuMaximumID[menu] + 1))), squished, 1, 0)
        0
        draw_text_transformed((xx + 300), (yy + 30), (gml_Script_stringsetloc("CHAPTER ", "obj_fusionmenu_slash_Draw_0_gml_84_0") + string(recruitChapter[menuCoord[1]])), squished, 1, 0)
        var ymod = 120
        if jp
            ymod = 104
        var memfont = 
        if (!jp)
        {
            1
            draw_text_ext_transformed((xx + 300), (yy + ymod), string_hash_to_newline(recruitDesc[menuCoord[1]]), 20, 280, 1, 1, 0)
        }
        else
        {
            11
            draw_text_ext_transformed((xx + 300), (yy + 120), string_hash_to_newline(recruitDesc[menuCoord[1]]), 25, 280, 1, 1, 0)
        }
        memfont
        stringl[0] = gml_Script_stringsetloc("LIKE", "obj_fusionmenu_slash_Draw_0_gml_87_0")
        stringl[1] = gml_Script_stringsetloc("DISLIKE", "obj_fusionmenu_slash_Draw_0_gml_88_0")
        stringl[2] = gml_Script_stringsetloc("?????", "obj_fusionmenu_slash_Draw_0_gml_89_0")
        stringl[3] = gml_Script_stringsetloc("?????", "obj_fusionmenu_slash_Draw_0_gml_90_0")
        stringm[0] = recruitLike[menuCoord[1]]
        stringm[1] = recruitDislike[menuCoord[1]]
        stringm[2] = gml_Script_stringsetloc("?????????", "obj_fusionmenu_slash_Draw_0_gml_93_0")
        stringm[3] = gml_Script_stringsetloc("?????????", "obj_fusionmenu_slash_Draw_0_gml_94_0")
        stringn[0] = gml_Script_stringsetloc("LEVEL", "obj_fusionmenu_slash_Draw_0_gml_95_0")
        stringn[1] = gml_Script_stringsetloc("ATTACK", "obj_fusionmenu_slash_Draw_0_gml_96_0")
        stringn[2] = gml_Script_stringsetloc("DEFENSE", "obj_fusionmenu_slash_Draw_0_gml_97_0")
        stringn[3] = gml_Script_stringsetloc("ELEMENT  ", "obj_fusionmenu_slash_Draw_0_gml_98_0")
        stringo[0] = recruitLevel[menuCoord[1]]
        stringo[1] = recruitAttack[menuCoord[1]]
        stringo[2] = recruitDefense[menuCoord[1]]
        stringo[3] = recruitElement[menuCoord[1]]
        stringel = (stringn[3] + stringo[3])
        for (i = 0; i < 4; i++)
        {
            stringlscale = 1
            stringmscale = 1
            if (!jp)
            {
                if (stringl[i] >= 60)
                    stringlscale = (80 / string_width(string_hash_to_newline(stringl[i])))
            }
            if (stringm[i] >= 290)
                stringmscale = (290 / string_width(string_hash_to_newline(stringm[i])))
            0
            draw_text_transformed((xx + 80), ((yy + 240) + (i * 40)), string_hash_to_newline(stringl[i]), stringlscale, 1, 0)
            draw_text_transformed(((xx + 80) + 100), ((yy + 240) + (i * 40)), string_hash_to_newline(stringm[i]), stringmscale, 1, 0)
            2
            if (i != 3)
            {
                draw_text_transformed((xx + 560), ((yy + 240) + (i * 40)), string_hash_to_newline(stringn[i]), squished, 1, 0)
                draw_text_transformed((xx + 590), ((yy + 240) + (i * 40)), string_hash_to_newline(stringo[i]), squished, 1, 0)
            }
            else
                draw_text_transformed((xx + 590), ((yy + 240) + (i * 40)), string_hash_to_newline(stringel), squished, 1, 0)
            0
        }
        if (alternateMenu == 0)
        {
            if recruitPlaceable[menuCoord[1]]
            {
                if (global.is_console || obj_gamecontroller.gamepad_active)
                {
                    draw_sprite_ext(gml_Script_scr_getbuttonsprite(global.input_g[4], 0), 0, (xx + 80), (yy + 402), 2, 2, 0, c_white, 1)
                    draw_text((xx + 114), (yy + 400), gml_Script_stringsetloc("Place", "obj_fusionmenu_slash_Draw_0_gml_169_0"))
                }
                else
                    draw_text((xx + 80), (yy + 400), gml_Script_stringsetsubloc("~1: Place", gml_Script_scr_get_input_name(4), "obj_fusionmenu_slash_Draw_0_gml_125_0"))
            }
            else
            {
                8421504
                draw_text((xx + 80), (yy + 400), gml_Script_stringsetloc("Cannot Place", "obj_fusionmenu_slash_Draw_0_gml_129_0"))
            }
            16777215
            if (global.is_console || obj_gamecontroller.gamepad_active)
            {
                draw_sprite_ext(gml_Script_scr_getbuttonsprite(global.input_g[5], 0), 0, (xx + 320), (yy + 402), 2, 2, 0, c_white, 1)
                draw_text((xx + 354), (yy + 400), gml_Script_stringsetloc("Return", "obj_fusionmenu_slash_Draw_0_gml_186_0"))
            }
            else
                draw_text((xx + 320), (yy + 400), gml_Script_stringsetsubloc("~1: Return", gml_Script_scr_get_input_name(5), "obj_fusionmenu_slash_Draw_0_gml_132_0"))
        }
        else if (global.is_console || obj_gamecontroller.gamepad_active)
        {
            var button_x = (global.lang == "en" ? (xx + 165) : (xx + 84))
            draw_sprite_ext(gml_Script_scr_getbuttonsprite(global.input_g[5], 0), 0, button_x, (yy + 402), 2, 2, 0, c_white, 1)
            var x_offset = (global.lang == "en" ? 0 : 38)
            draw_text(((xx + 80) + x_offset), (yy + 400), gml_Script_stringsetloc("Press         to Return", "obj_fusionmenu_slash_Draw_0_gml_199_0"))
        }
        else
            draw_text((xx + 80), (yy + 400), gml_Script_stringsetsubloc("Press ~1 to Return", gml_Script_scr_get_input_name(5), "obj_fusionmenu_slash_Draw_0_gml_136_0"))
    }
}
if (type == 4 && init == 1)
{
    "mainbig"
    if (menu == 0)
        12632256
    else
        4210752
    if jp
    {
        memfont = 
        11
        draw_text_transformed((xx + 60), (yy + 140), gml_Script_stringsetloc("HELD", "obj_fusionmenu_slash_Draw_0_gml_154_0"), 1, 1, 0)
        memfont
    }
    else
    {
        "dotumche"
        draw_text_transformed((xx + 60), (yy + 140), gml_Script_stringset("POCKET"), 1, 1, 0)
    }
    if (menu == 1)
        12632256
    if (menu < 1)
        4210752
    if jp
    {
        memfont = 
        11
        draw_text_transformed((xx + 60), (yy + 290), gml_Script_stringsetloc("RESERVE", "obj_fusionmenu_slash_Draw_0_gml_159_0"), 1, 1, 0)
        memfont
    }
    else
        draw_text_transformed((xx + 60), (yy + 290), "STORAGE", 1, 1, 0)
    if jp
    {
        memfont = 
        11
        draw_text_transformed((xx + 60), ((yy + 360) + 14), gml_Script_stringsetloc("Page ", "obj_fusionmenu_slash_Draw_0_gml_161_0"), 1, 1, 0)
        draw_text_transformed((xx + 60), ((yy + 380) + 14), ((string(((floor(menuScrollCurrent[1]) / 12) + 1)) + "/") + string(floor((global.flag[64] / 12)))), 1, 1, 0)
        memfont
    }
    else
    {
        draw_text_transformed((xx + 60), (yy + 360), gml_Script_stringsetloc("Page ", "obj_fusionmenu_slash_Draw_0_gml_161_0"), 1, 1, 0)
        draw_text_transformed((xx + 60), (yy + 380), ((string(((floor(menuScrollCurrent[1]) / 12) + 1)) + "/") + string(floor((global.flag[64] / 12)))), 1, 1, 0)
    }
}
if (type == 5 && init == 1)
{
    2
    12632256
    draw_text_transformed(480, 280, (((gml_Script_stringsetloc("Page ", "obj_fusionmenu_slash_Draw_0_gml_171_0") + string(((floor(menuScrollCurrent[0]) / 6) + 1))) + " / ") + string(ceil((menuMaximumID[0] / 6)))), 1, 1, 0)
    tickerTimer++
    "dotumche"
    draw_text_transformed(440, 375, gml_Script_stringsetloc("Left / Right: \nChange Pages.", "obj_fusionmenu_slash_Draw_0_gml_181_0"), 1, 1, 0)
    if (subtype == 1)
        draw_text_transformed(440, 410, gml_Script_stringsetloc("The song you play\nwill be the town\nBGM.", "obj_fusionmenu_slash_Draw_0_gml_182_0"), 1, 1, 0)
    else
        draw_text_transformed(440, 410, gml_Script_stringsetloc("Play songs\nfreely.", "obj_fusionmenu_slash_Draw_0_gml_183_0"), 1, 1, 0)
    var tempSongName = (chosenSongName + "    ")
    var songNameLength = tempSongName
    if (songNameLength >= 24)
    {
        var tickerCount = (max(0, ((tickerTimer - 60) / 3)) % songNameLength)
        var tickerSongNamePrep = (tempSongName + chosenSongName)
        var tickerSongName = string_copy(tickerSongNamePrep, (1 + tickerCount), 20)
    }
    else
        tickerSongName = tempSongName
    65280
    draw_text_transformed(440, 320, gml_Script_stringsetloc("Now Playing", "obj_fusionmenu_slash_Draw_0_gml_194_0"), 1, 1, 0)
    draw_text_transformed(440, 345, tickerSongName, 1, 1, 0)
}
