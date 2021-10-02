scr_84_set_draw_font("main")
if (TYPE == 1 && SUBTYPE == 0)
{
    draw_sprite_ext(spr_giantdarkdoor, 1, 43, 48, 2, 2, 0, c_white, (0.03 + (sin((BG_SINER / 20)) * 0.04)))
    draw_sprite_ext(spr_giantdarkdoor, 1, 47, 48, 2, 2, 0, c_white, (0.03 + (sin((BG_SINER / 20)) * 0.04)))
    draw_sprite_ext(spr_giantdarkdoor, 1, 43, 52, 2, 2, 0, c_white, (0.03 + (sin((BG_SINER / 20)) * 0.04)))
    draw_sprite_ext(spr_giantdarkdoor, 1, 47, 52, 2, 2, 0, c_white, (0.03 + (sin((BG_SINER / 20)) * 0.04)))
    draw_sprite_ext(spr_giantdarkdoor, 1, 45, 50, 2, 2, 0, c_white, 0.25)
    BG_SINER++
}
if (BGMADE == true && SUBTYPE == 1)
{
    ANIM_SINER += 1
    ANIM_SINER_B += 1
    BG_SINER += 1
    if (BG_ALPHA < 0.5)
        BG_ALPHA += (0.04 - (BG_ALPHA / 14))
    if (BG_ALPHA > 0.5)
        BG_ALPHA = 0.5
    __WAVEHEIGHT = 240
    __WAVEWIDTH = 320
    for (i = 0; i < (__WAVEHEIGHT - 50); i += 1)
    {
        __WAVEMINUS = ((BGMAGNITUDE * (i / __WAVEHEIGHT)) * 1.3)
        if (__WAVEMINUS > BGMAGNITUDE)
            __WAVEMAG = 0
        else
            __WAVEMAG = (BGMAGNITUDE - __WAVEMINUS)
        draw_background_part_ext(IMAGE_MENU, 0, i, __WAVEWIDTH, 1, (sin(((i / 8) + (BG_SINER / 30))) * __WAVEMAG), ((-10 + i) - (BG_ALPHA * 20)), 1, 1, image_blend, (BG_ALPHA * 0.8))
        draw_background_part_ext(IMAGE_MENU, 0, i, __WAVEWIDTH, 1, ((-sin(((i / 8) + (BG_SINER / 30)))) * __WAVEMAG), ((-10 + i) - (BG_ALPHA * 20)), 1, 1, image_blend, (BG_ALPHA * 0.8))
    }
    T_SINER_ADD = ((sin((ANIM_SINER_B / 10)) * 0.6) - 0.25)
    if (T_SINER_ADD >= 0)
        TRUE_ANIM_SINER += T_SINER_ADD
    draw_sprite_ext(IMAGE_MENU_ANIMATION, (ANIM_SINER / 12), 0, (((10 - (BG_ALPHA * 20)) + __WAVEHEIGHT) - 70), 1, 1, 0, image_blend, (BG_ALPHA * 0.46))
    draw_sprite_ext(IMAGE_MENU_ANIMATION, ((ANIM_SINER / 12) + 0.4), 0, (((10 - (BG_ALPHA * 20)) + __WAVEHEIGHT) - 70), 1, 1, 0, image_blend, (BG_ALPHA * 0.56))
    draw_sprite_ext(IMAGE_MENU_ANIMATION, ((ANIM_SINER / 12) + 0.8), 0, (((10 - (BG_ALPHA * 20)) + __WAVEHEIGHT) - 70), 1, 1, 0, image_blend, (BG_ALPHA * 0.7))
}
if (MENU_NO >= 0)
{
    for (i = 0; i < 3; i += 1)
    {
        CONT_THIS = 0
        PREV_MENU = MENU_NO
        if (MENU_NO == 1)
            PREV_MENU = 0
        if (MENU_NO == 4)
            PREV_MENU = 3
        if (MENU_NO == 6)
            PREV_MENU = 5
        if (MENU_NO == 7)
            PREV_MENU = 5
        if (MENU_NO == 11)
            PREV_MENU = 10
        if (MENUCOORD[0] == i && MENU_NO == 1)
            CONT_THIS = 1
        if (MENUCOORD[3] == i && MENU_NO == 4)
            CONT_THIS = 4
        if (MENUCOORD[5] == i && MENU_NO == 6)
            CONT_THIS = 6
        if (MENUCOORD[5] == i && MENU_NO == 7)
            CONT_THIS = 7
        if (MENUCOORD[10] == i && MENU_NO == 11)
            CONT_THIS = 11
        BOX_X1 = 55
        BOX_Y1 = (55 + ((YL + YS) * i))
        BOX_X2 = (55 + XL)
        BOX_Y2 = ((55 + ((YL + YS) * i)) + YL)
        draw_set_alpha(0.5)
        draw_set_color(c_black)
        draw_rectangle(BOX_X1, BOX_Y1, BOX_X2, BOX_Y2, false)
        draw_set_alpha(1)
        draw_set_color(COL_A)
        if (MENU_NO >= 0)
        {
            if (MENUCOORD[PREV_MENU] == i)
                draw_set_color(COL_B)
        }
        if (MENU_NO == 3 || MENU_NO == 4)
        {
            if (MENUCOORD[2] == i)
                draw_set_color(COL_PLUS)
        }
        if (MENU_NO == 7 && MENUCOORD[5] == i)
            draw_set_color(c_red)
        draw_rectangle(BOX_X1, BOX_Y1, BOX_X2, BOX_Y2, true)
        if (TYPE == 1)
        {
            for (j = 0; j < 4; j += 1)
                draw_rectangle((BOX_X1 - (0.5 * j)), (BOX_Y1 - (0.5 * j)), (BOX_X2 + (0.5 * j)), (BOX_Y2 + (0.5 * j)), true)
        }
        if (CONT_THIS < 4 || CONT_THIS == 11)
        {
            var NOWNAME = NAME[i]
            var NOWTIME = TIME_STRING[i]
            if (MENU_NO == 10 || MENU_NO == 11)
            {
                var filefound = false
                if (INCOMPLETE_LOAD == false && COMPLETEFILE_PREV[i] == true)
                    filefound = true
                if (INCOMPLETE_LOAD == true && INCOMPLETEFILE_PREV[i] == 1)
                    filefound = true
                if filefound
                {
                    NOWNAME = COMPLETEFILE_PREV_NAME[i]
                    NOWTIME = COMPLETETIME_STRING[i]
                }
                else if INCOMPLETE_LOAD
                    NOWNAME = stringsetloc("FILE not found.", "DEVICE_MENU_slash_Draw_0_gml_130_0")
                else
                {
                    NOWNAME = stringsetloc("Completion FILE not found.", "DEVICE_MENU_slash_Draw_0_gml_125_0")
                    NOWTIME = " "
                }
            }
            if (global.lang == "en")
            {
                if scr_kana_check(NOWNAME)
                    draw_set_font(fnt_ja_main)
                else
                    draw_set_font(fnt_main)
            }
            else
                draw_set_font(fnt_ja_main)
            draw_text_shadow((BOX_X1 + 25), (BOX_Y1 + 5), NOWNAME)
            scr_84_set_draw_font("main")
            draw_set_halign(fa_right)
            draw_text_shadow((BOX_X1 + 180), (BOX_Y1 + 5), NOWTIME)
            draw_set_halign(fa_left)
        }
        if (CONT_THIS >= 1)
        {
            if (TYPE == 0)
            {
                if (MENU_NO == 1)
                {
                    SELTEXT_C = stringsetloc(" ", "DEVICE_MENU_slash_Draw_0_gml_115_0")
                    SELTEXT_A = stringsetloc("CONTINUE", "DEVICE_MENU_slash_Draw_0_gml_116_0")
                    SELTEXT_B = stringsetloc("BACK", "DEVICE_MENU_slash_Draw_0_gml_116_1")
                    if (FILE[MENUCOORD[0]] == 0)
                    {
                        SELTEXT_A = stringsetloc("BEGIN", "DEVICE_MENU_slash_Draw_0_gml_117_0")
                        SELTEXT_B = stringsetloc("BACK", "DEVICE_MENU_slash_Draw_0_gml_117_1")
                    }
                }
                if (MENU_NO == 4)
                {
                    SELTEXT_A = stringsetloc("OVERWRITE", "DEVICE_MENU_slash_Draw_0_gml_119_0")
                    SELTEXT_B = stringsetloc("DO NOT", "DEVICE_MENU_slash_Draw_0_gml_119_1")
                    SELTEXT_C = stringsetloc("IT WILL BE SUBSUMED.", "DEVICE_MENU_slash_Draw_0_gml_119_2")
                }
                if (MENU_NO == 6)
                {
                    SELTEXT_A = stringsetloc("YES", "DEVICE_MENU_slash_Draw_0_gml_120_0")
                    SELTEXT_B = stringsetloc("NO", "DEVICE_MENU_slash_Draw_0_gml_120_1")
                    SELTEXT_C = stringsetloc("TRULY ERASE IT?", "DEVICE_MENU_slash_Draw_0_gml_120_2")
                }
                if (MENU_NO == 7)
                {
                    SELTEXT_A = stringsetloc("ERASE", "DEVICE_MENU_slash_Draw_0_gml_121_0")
                    SELTEXT_B = stringsetloc("DO NOT", "DEVICE_MENU_slash_Draw_0_gml_121_1")
                    SELTEXT_C = stringsetloc("THEN IT WILL BE DESTROYED.", "DEVICE_MENU_slash_Draw_0_gml_121_2")
                }
            }
            else
            {
                if (MENU_NO == 1)
                {
                    SELTEXT_C = stringsetloc(" ", "DEVICE_MENU_slash_Draw_0_gml_127_0")
                    SELTEXT_A = stringsetloc("Continue", "DEVICE_MENU_slash_Draw_0_gml_128_0")
                    SELTEXT_B = stringsetloc("Back", "DEVICE_MENU_slash_Draw_0_gml_128_1")
                    if (FILE[MENUCOORD[0]] == 0)
                    {
                        SELTEXT_A = stringsetloc("Start", "DEVICE_MENU_slash_Draw_0_gml_129_0")
                        SELTEXT_B = stringsetloc("Back", "DEVICE_MENU_slash_Draw_0_gml_129_1")
                    }
                }
                if (MENU_NO == 4)
                {
                    SELTEXT_A = stringsetloc("Yes", "DEVICE_MENU_slash_Draw_0_gml_131_0")
                    SELTEXT_B = stringsetloc("No", "DEVICE_MENU_slash_Draw_0_gml_131_1")
                    SELTEXT_C = stringsetloc("Copy over this file?", "DEVICE_MENU_slash_Draw_0_gml_131_2")
                }
                if (MENU_NO == 6)
                {
                    SELTEXT_A = stringsetloc("Yes", "DEVICE_MENU_slash_Draw_0_gml_132_0")
                    SELTEXT_B = stringsetloc("No", "DEVICE_MENU_slash_Draw_0_gml_132_1")
                    SELTEXT_C = stringsetloc("Erase this file?", "DEVICE_MENU_slash_Draw_0_gml_132_2")
                }
                if (MENU_NO == 7)
                {
                    SELTEXT_A = stringsetloc("Yes!", "DEVICE_MENU_slash_Draw_0_gml_133_0")
                    SELTEXT_B = stringsetloc("No!", "DEVICE_MENU_slash_Draw_0_gml_133_1")
                    SELTEXT_C = stringsetloc("Really erase it?", "DEVICE_MENU_slash_Draw_0_gml_133_2")
                }
                if (MENU_NO == 11)
                {
                    SELTEXT_A = stringsetloc("Start", "DEVICE_MENU_slash_Draw_0_gml_164_0")
                    SELTEXT_B = stringsetloc("Back", "DEVICE_MENU_slash_Draw_0_gml_165_0")
                    SELTEXT_C = stringsetloc(" ", "DEVICE_MENU_slash_Draw_0_gml_166_0")
                }
            }
            draw_set_color(COL_B)
            if (MENU_NO == 7)
                draw_set_color(c_red)
            draw_text_shadow((BOX_X1 + 25), (BOX_Y1 + 5), SELTEXT_C)
            draw_set_color(COL_A)
            if (MENUCOORD[MENU_NO] == 0)
            {
                draw_set_color(COL_B)
                HEARTX = 75
                HEARTY = (81 + ((YL + YS) * MENUCOORD[PREV_MENU]))
            }
            draw_text_shadow((BOX_X1 + 35), (BOX_Y1 + 22), SELTEXT_A)
            draw_set_color(COL_A)
            if (MENUCOORD[MENU_NO] == 1)
            {
                draw_set_color(COL_B)
                HEARTX = 165
                HEARTY = (81 + ((YL + YS) * MENUCOORD[PREV_MENU]))
            }
            draw_text_shadow((BOX_X1 + 125), (BOX_Y1 + 22), SELTEXT_B)
        }
        else
        {
            var NOWPLACE = PLACE[i]
            if (MENU_NO == 10 || MENU_NO == 11)
            {
                if (COMPLETEFILE_PREV[i] == true)
                    NOWPLACE = stringsetloc("Your Room [Chapter 1 END]", "DEVICE_MENU_slash_Draw_0_gml_194_0")
                else
                    NOWPLACE = stringsetloc("[Made on seeing credits.]", "DEVICE_MENU_slash_Draw_0_gml_195_0")
                if INCOMPLETE_LOAD
                    NOWPLACE = COMPLETEFILE_PREV_PLACE[i]
            }
            draw_text_shadow_width((BOX_X1 + 25), (BOX_Y1 + 22), NOWPLACE, 180)
        }
    }
}
if (MENU_NO >= 0)
{
    if (MENU_NO == 0 || MENU_NO == 2 || MENU_NO == 3 || MENU_NO == 5 || MENU_NO == 10)
    {
        if (MENUCOORD[MENU_NO] >= 0 && MENUCOORD[MENU_NO] <= 2)
        {
            HEARTX = 65
            HEARTY = (72 + ((YL + YS) * MENUCOORD[MENU_NO]))
        }
        if (MENUCOORD[MENU_NO] == 3)
        {
            HEARTX = (40 - jamod)
            HEARTY = 195
        }
        if (MENUCOORD[MENU_NO] == 4)
        {
            HEARTX = 125
            HEARTY = 195
        }
        if (MENUCOORD[MENU_NO] == 5)
        {
            HEARTX = (40 - jamod)
            HEARTY = 215
        }
        if (MENUCOORD[MENU_NO] == 6)
        {
            HEARTX = 125
            HEARTY = 215
        }
        if (MENUCOORD[MENU_NO] == 7)
        {
            HEARTX = 190
            HEARTY = 195
        }
        if (MENUCOORD[MENU_NO] == 8)
        {
            HEARTX = 190
            HEARTY = 215
        }
    }
    if (MENU_NO >= 2)
    {
        CANCELTEXT = stringsetloc("CANCEL", "DEVICE_MENU_slash_Draw_0_gml_189_0")
        if (TYPE == 1)
            CANCELTEXT = stringsetloc("Cancel", "DEVICE_MENU_slash_Draw_0_gml_190_0")
        if (MENU_NO == 10 || MENU_NO == 11)
            CANCELTEXT = stringsetloc("Don't Use Chapter 1 FILE", "DEVICE_MENU_slash_Draw_0_gml_242_0")
        draw_set_color(COL_A)
        if (MENU_NO < 20)
        {
            if (MENUCOORD[PREV_MENU] == 3)
                draw_set_color(COL_B)
        }
        draw_text_shadow(55, 190, CANCELTEXT)
    }
    if (MENU_NO == 0 || MENU_NO == 1)
    {
        jamod = 0
        if (global.lang == "ja")
            jamod = 10
        COPYTEXT = stringsetloc("COPY", "DEVICE_MENU_slash_Draw_0_gml_199_0")
        ERASETEXT = stringsetloc("ERASE", "DEVICE_MENU_slash_Draw_0_gml_200_0")
        CH1TEXT = stringsetloc("Ch 1 Files", "DEVICE_MENU_slash_Draw_0_gml_253_0")
        CHSELECTTEXT = stringsetloc("Chapter Select", "DEVICE_MENU_slash_Draw_0_gml_284_0")
        QUITTEXT = stringsetloc("End Program", "DEVICE_MENU_slash_Draw_0_gml_285_0")
        LANGUAGETEXT = (global.lang == "en" ? stringset("日本語") : stringset("English"))
        if (TYPE == 1)
        {
            COPYTEXT = stringsetloc("Copy", "DEVICE_MENU_slash_Draw_0_gml_201_0")
            ERASETEXT = stringsetloc("Erase", "DEVICE_MENU_slash_Draw_0_gml_201_1")
        }
        draw_set_color(COL_A)
        if (MENUCOORD[0] == 3)
            draw_set_color(COL_B)
        draw_text_shadow((54 - jamod), 190, COPYTEXT)
        draw_set_color(COL_A)
        if (MENUCOORD[0] == 4)
            draw_set_color(COL_B)
        draw_text_shadow(140, 190, ERASETEXT)
        draw_set_color(COL_A)
        if (MENUCOORD[0] == 5)
            draw_set_color(COL_B)
        draw_text_shadow((54 - jamod), 210, CH1TEXT)
        draw_set_color(COL_A)
        if (MENUCOORD[0] == 7)
            draw_set_color(COL_B)
        draw_text_shadow(204, 190, CHSELECTTEXT)
        draw_set_color(COL_A)
        if (MENUCOORD[0] == 8)
            draw_set_color(COL_B)
        if CANQUIT
            draw_text_shadow(204, 210, QUITTEXT)
        if (global.lang == "en")
            draw_set_font(fnt_ja_main)
        else
            draw_set_font(fnt_main)
        draw_set_color(COL_A)
        if (MENUCOORD[0] == 6)
            draw_set_color(COL_B)
        var languagex = 140
        if (global.lang == "en")
            languagex = 136
        draw_text_shadow(languagex, 210, LANGUAGETEXT)
        scr_84_set_draw_font("main")
    }
    draw_set_font(fnt_main)
    if (TYPE == 1)
    {
        draw_set_alpha(0.4)
        draw_set_color(c_white)
        draw_text_transformed(195, 230, (("DELTARUNE " + version_text) + " (C) Toby Fox 2018-2021 "), 0.5, 0.5, 0)
    }
    else
    {
        draw_set_color(COL_A)
        draw_text_transformed(248, 230, version_text, 0.5, 0.5, 0)
        draw_set_color(c_white)
    }
    scr_84_set_draw_font("main")
    draw_set_alpha(1)
    if (MESSAGETIMER <= 0)
    {
        if (TYPE == 0)
        {
            if (MENU_NO == 0 || MENU_NO == 1)
                TEMPCOMMENT = stringsetloc(" ", "DEVICE_MENU_slash_Draw_0_gml_215_0")
            if (MENU_NO == 2)
                TEMPCOMMENT = stringsetloc("CHOOSE THE ONE TO COPY.", "DEVICE_MENU_slash_Draw_0_gml_216_0")
            if (MENU_NO == 3)
                TEMPCOMMENT = stringsetloc("CHOOSE THE TARGET FOR THE REFLECTION.", "DEVICE_MENU_slash_Draw_0_gml_217_0")
            if (MENU_NO == 4)
                TEMPCOMMENT = stringsetloc("IT WILL BE SUBSUMED.", "DEVICE_MENU_slash_Draw_0_gml_218_0")
            if (MENU_NO == 5 || MENU_NO == 6 || MENU_NO == 7)
                TEMPCOMMENT = stringsetloc("SELECT THE ONE TO ERASE.", "DEVICE_MENU_slash_Draw_0_gml_219_0")
        }
        if (TYPE == 1)
        {
            if (MENU_NO == 0 || MENU_NO == 1)
                TEMPCOMMENT = stringsetloc("Please select a file.", "DEVICE_MENU_slash_Draw_0_gml_223_0")
            if (MENU_NO == 2)
                TEMPCOMMENT = stringsetloc("Choose a file to copy.", "DEVICE_MENU_slash_Draw_0_gml_224_0")
            if (MENU_NO == 3)
                TEMPCOMMENT = stringsetloc("Choose a file to copy to.", "DEVICE_MENU_slash_Draw_0_gml_225_0")
            if (MENU_NO == 4)
                TEMPCOMMENT = stringsetloc("The file will be overwritten.", "DEVICE_MENU_slash_Draw_0_gml_226_0")
            if (MENU_NO == 5 || MENU_NO == 6 || MENU_NO == 7)
                TEMPCOMMENT = stringsetloc("Choose a file to erase.", "DEVICE_MENU_slash_Draw_0_gml_227_0")
            if (MENU_NO == 10)
                TEMPCOMMENT = stringsetloc("Start Chapter 2 from Chapter 1's FILE.", "DEVICE_MENU_slash_Draw_0_gml_291_0")
            if (MENU_NO == 11)
                TEMPCOMMENT = stringsetsubloc("This will start Chapter 2 in FILE Slot ~1.", (MENUCOORD[10] + 1), "DEVICE_MENU_slash_Draw_0_gml_292_0")
        }
    }
    draw_set_color(COL_B)
    draw_text_shadow(40, 30, TEMPCOMMENT)
    MESSAGETIMER -= 1
}
if (abs((HEARTX - HEARTXCUR)) <= 2)
    HEARTXCUR = HEARTX
if (abs((HEARTY - HEARTYCUR)) <= 2)
    HEARTYCUR = HEARTY
HEARTXCUR += ((HEARTX - HEARTXCUR) / 2)
HEARTYCUR += ((HEARTY - HEARTYCUR) / 2)
if (MENU_NO >= 0)
    draw_sprite(spr_heartsmall, 0, HEARTXCUR, HEARTYCUR)
draw_set_font(fnt_main)
draw_set_color(c_white)
draw_text_shadow((camerax() + 8), (cameray() + 4), ("CHAPTER " + string(global.chapter)))
scr_84_set_draw_font("main")
