textscale = 1
var extra_ja_vspace = 0
if (!"chemg_typer")
    global.chemg_typer = -1
if (global.chemg_typer != global.typer)
    global.chemg_typer = global.typer
var font_set = 1
switch global.typer
{
    case 0:
        font_set = 0
        break
    case 1:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 356, 8, 18, 0)
        break
    case 2:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 2, 491, 8, 18, 0)
        break
    case 3:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 2, 356, 8, 18, 1)
        break
    case 4:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 356, 16, 28, 1)
        extra_ja_vspace = 2
        break
    case 5:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 356, 8, 18, 0)
        break
    case 6:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 356, 16, 36, 1)
        break
    case 7:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 355, 8, 18, 0)
        break
    case 8:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 2, 355, 8, 18, 0)
        break
    case 10:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 347, 8, 18, 0)
        break
    case 11:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 347, 8, 18, 0)
        break
    case 12:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 348, 8, 18, 0)
        break
    case 13:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 349, 8, 18, 0)
        break
    case 14:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("comicsans"), 16777215, x, y, 33, 0, 1, 345, 8, 18, 0)
        break
    case 15:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 356, 8, 18, 0)
        break
    case 16:
        font_set = 0
        break
    case 17:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 346, 8, 18, 0)
        break
    case 18:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 343, 8, 18, 0)
        break
    case 19:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 356, 8, 18, 0)
        break
    case 20:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 354, 8, 18, 0)
        break
    case 21:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 354, 8, 18, 0)
        break
    case 22:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("tinynoelle"), 16777215, x, (y + 7), 33, 0, 1, 354, 6, 18, 0)
        break
    case 23:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("tinynoelle"), 16777215, x, (y + 7), 33, 0, 1, 348, 6, 18, 0)
        break
    case 30:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 347, 16, 36, 1)
        break
    case 31:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 350, 16, 36, 1)
        break
    case 32:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 353, 16, 36, 1)
        break
    case 33:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 404, 16, 36, 1)
        break
    case 35:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 352, 16, 36, 1)
        break
    case 36:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 491, 16, 36, 1)
        break
    case 37:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 3, 347, 18, 36, 1)
        break
    case 40:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 2, 491, 8, 18, 0)
        break
    case 41:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 3, 491, 8, 18, 0)
        break
    case 42:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 2, 491, 16, 36, 1)
        break
    case 45:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 350, 16, 28, 1)
        extra_ja_vspace = 2
        break
    case 46:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 353, 16, 28, 1)
        extra_ja_vspace = 2
        break
    case 47:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 347, 16, 28, 1)
        extra_ja_vspace = 2
        break
    case 48:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 404, 16, 28, 1)
        extra_ja_vspace = 2
        break
    case 50:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("dotumche"), 0, x, y, 33, 0, 1, 356, 9, 20, 0)
        break
    case 51:
        if (global.lang == "ja")
            gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 14, 356, 16, 36, 1)
        else
            gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 10, 356, 16, 36, 1)
        break
    case 52:
        if (global.lang == "ja")
            gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 6, 356, 16, 36, 1)
        else
            gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 4, 356, 16, 36, 1)
        break
    case 53:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("dotumche"), 0, x, y, 33, 0, 1, 347, 9, 20, 0)
        break
    case 54:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("dotumche"), 0, x, y, 33, 0, 2, 347, 9, 20, 0)
        break
    case 55:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 351, 8, 18, 0)
        break
    case 60:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 8, 491, 8, 18, 0)
        break
    case 666:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 4, 491, 12, 20, 2)
        break
    case 667:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 2, 491, 12, 20, 2)
        break
    case 999:
        gml_Script_scr_textsetup_ch1(gml_Script_scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 4, 488, 8, 18, 3)
        break
    default:
        font_set = 0
        break
}

if (font_set && global.lang == "ja")
{
    if (myfont == fnt_ja_main)
    {
        hspace = (((hspace * 26) / 16) + 1)
        if (vspace == 32)
            vspace = 36
    }
    else if (myfont == fnt_ja_mainbig)
        hspace = (((hspace * 13) / 8) + 1)
    else if (myfont == fnt_ja_comicsans)
    {
        textscale = 0.5
        hspace = (((hspace * 13) / 8) + 3)
    }
    else if (myfont == fnt_ja_tinynoelle)
        hspace = (((hspace * 13) / 8) + 1)
    else if (myfont == fnt_ja_dotumche)
        hspace = (((hspace * 26) / 16) + 1)
    else if (myfont == fnt_ja_small)
        hspace = (((hspace * 13) / 8) + 1)
    vspace += extra_ja_vspace
}
return;
