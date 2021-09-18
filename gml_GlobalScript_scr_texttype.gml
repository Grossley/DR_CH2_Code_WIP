var font_set = 1
var extra_ja_vspace = 0
textscale = 1
switch global.typer
{
    case 0:
        font_set = 0
        break
    case 1:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 32, 8, 18, 0)
        break
    case 2:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 258, 8, 18, 0)
        break
    case 3:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 32, 8, 18, 1)
        break
    case 4:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 32, 16, 28, 1)
        extra_ja_vspace = 2
        break
    case 5:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 32, 8, 18, 0)
        break
    case 6:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 32, 16, 36, 1)
        break
    case 7:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 31, 8, 18, 0)
        break
    case 8:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 31, 8, 18, 0)
        break
    case 10:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 23, 8, 18, 0)
        break
    case 11:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 23, 8, 18, 0)
        break
    case 12:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 24, 8, 18, 0)
        break
    case 13:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 25, 8, 18, 0)
        break
    case 14:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("comicsans"), 16777215, x, y, 33, 0, 1, 21, 8, 18, 0)
        break
    case 15:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 32, 8, 18, 0)
        break
    case 16:
        font_set = 0
        break
    case 17:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 22, 8, 18, 0)
        break
    case 18:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 19, 8, 18, 0)
        break
    case 19:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 32, 8, 18, 0)
        break
    case 20:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 30, 8, 18, 0)
        break
    case 21:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 30, 8, 18, 0)
        break
    case 22:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("tinynoelle"), 16777215, x, (y + 7), 33, 0, 1, 30, 6, 18, 0)
        break
    case 23:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("tinynoelle"), 16777215, x, (y + 7), 33, 0, 1, 24, 6, 18, 0)
        break
    case 30:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 23, 16, 36, 1)
        break
    case 31:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 26, 16, 36, 1)
        break
    case 32:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 29, 16, 36, 1)
        break
    case 33:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 113, 16, 36, 1)
        break
    case 35:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 28, 16, 36, 1)
        break
    case 36:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 258, 16, 36, 1)
        break
    case 37:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 3, 23, 18, 36, 1)
        break
    case 40:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 258, 8, 18, 0)
        break
    case 41:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 3, 258, 8, 18, 0)
        break
    case 42:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 2, 258, 16, 36, 1)
        break
    case 45:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 26, 16, 28, 1)
        extra_ja_vspace = 2
        break
    case 46:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 29, 16, 28, 1)
        extra_ja_vspace = 2
        break
    case 47:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 23, 16, 28, 1)
        extra_ja_vspace = 2
        break
    case 48:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 113, 16, 28, 1)
        extra_ja_vspace = 2
        break
    case 50:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 32, 9, 20, 0)
        break
    case 51:
        var rate = gml_Script_langopt(10, 14)
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, rate, 32, 16, 36, 1)
        break
    case 52:
        rate = gml_Script_langopt(6, 4)
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, rate, 32, 16, 36, 1)
        break
    case 53:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 23, 9, 20, 0)
        break
    case 54:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("dotumche"), 0, x, y, 33, 0, 2, 23, 9, 20, 0)
        break
    case 55:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 27, 8, 18, 0)
        break
    case 56:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 24, 16, 36, 1)
        break
    case 57:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 25, 16, 36, 1)
        break
    case 58:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 7, 16, 36, 1)
        break
    case 59:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 24, 16, 28, 1)
        extra_ja_vspace = 2
        break
    case 60:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 26, 12, 20, 0)
        break
    case 61:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 23, 12, 20, 0)
        break
    case 62:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 33, 16, 36, 1)
        break
    case 63:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 24, 8, 18, 0)
        break
    case 64:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 1, 2, 24, 8, 18, 0)
        break
    case 65:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 36, 16, 36, 1)
        break
    case 66:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 34, 16, 36, 1)
        break
    case 67:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 35, 16, 36, 1)
        break
    case 68:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 34, 9, 20, 0)
        break
    case 69:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 25, 9, 20, 0)
        extra_ja_vspace = 2
        break
    case 70:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 7, 9, 20, 0)
        extra_ja_vspace = 2
        break
    case 71:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 7, 9, 20, 0)
        extra_ja_vspace = 2
        break
    case 72:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 35, 9, 20, 0)
        extra_ja_vspace = 2
        break
    case 74:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 26, 9, 20, 0)
        extra_ja_vspace = 2
        break
    case 75:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 23, 9, 20, 0)
        extra_ja_vspace = 2
        break
    case 76:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 24, 9, 20, 0)
        extra_ja_vspace = 2
        break
    case 77:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 25, 16, 28, 1)
        extra_ja_vspace = 2
        break
    case 78:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("mainbig"), 16777215, x, y, 36, 0, 1, 32, 16, 36, 1)
        break
    case 666:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 4, 258, 12, 20, 2)
        break
    case 667:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 258, 12, 20, 2)
        break
    case 999:
        gml_Script_scr_textsetup(gml_Script_scr_84_get_font("main"), 16777215, x, y, 33, 0, 4, 255, 8, 18, 3)
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
    {
        textscale = 0.5
        hspace = (((hspace * 13) / 8) + 1)
    }
    else if (myfont == fnt_ja_dotumche)
        hspace = (((hspace * 26) / 16) + 1)
    else if (myfont == fnt_ja_small)
        hspace = (((hspace * 13) / 8) + 1)
    vspace += extra_ja_vspace
}
return;
