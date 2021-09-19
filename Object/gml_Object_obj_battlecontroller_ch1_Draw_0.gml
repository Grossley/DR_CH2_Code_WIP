xx = gml_Script___view_get(0, 0)
yy = gml_Script___view_get(1, 0)
tpoff = ((tp - tpy) + yy)
bpoff = (((-bp) + bpy) + yy)
var spell_offset = 500
if (global.lang == "ja")
    spell_offset = 496
if (intro == 1)
{
    if (bp < (bpy - 1))
    {
        if ((bpy - bp) < 40)
            bp += round(((bpy - bp) / 2.5))
        else
            bp += 30
    }
    else
        bp = bpy
    if (bp == bpy)
        intro = 0
}
if (intro == 2)
{
    if (bp > 0)
    {
        if (round(((bpy - bp) / 5)) > 15)
            bp -= round(((bpy - bp) / 2.5))
        else
            bp -= 30
    }
    else
        bp = 0
}
draw_set_color(c_black)
draw_rectangle((xx - 10), (481 + yy), (xx + 700), ((480 - bp) + yy), false)
draw_set_color(bcolor)
draw_rectangle((xx - 10), (((480 - bp) - 2) + yy), (xx + 700), ((480 - bp) + yy), false)
draw_set_color(bcolor)
draw_rectangle((xx - 10), (((480 - bp) + 34) + yy), (xx + 700), (((480 - bp) + 36) + yy), false)
gml_Script_scr_charbox_ch1()
if (global.bmenuno == 1 || global.bmenuno == 3 || global.bmenuno == 11 || global.bmenuno == 12)
{
    if (global.myfight == 0)
    {
        draw_sprite(spr_heart_ch1, 0, (xx + 55), ((yy + 385) + (global.bmenucoord[global.bmenuno][global.charturn] * 30)))
        gml_Script_scr_84_set_draw_font_ch1("mainbig")
        i = 0
        while (i < 3)
        {
            var _temp_local_var_2 = global.monsterinstance[global.bmenucoord[global.bmenuno][global.charturn]]
            if (flash == false)
                fsiner = 0
            flash = true
            becomeflash = true
        }
    }
}
if (global.bmenuno == 2 && global.myfight == 0)
{
    thischar = global.char[global.charturn]
    spellcoord = global.bmenucoord[2][global.charturn]
    page = 0
    if (spellcoord > 5)
    {
        page = 1
        spellcoord -= 6
    }
    icx = 10
    icy = 385
    if (spellcoord == 1 || spellcoord == 3 || spellcoord == 5)
        icx = 230
    if (spellcoord > 1 && spellcoord < 4)
        icy = 415
    if (spellcoord > 3)
        icy = 445
    draw_sprite(spr_heart_ch1, 0, (xx + icx), (yy + icy))
    gml_Script_scr_84_set_draw_font_ch1("mainbig")
    for (i = 0; i < 3; i += 1)
    {
        draw_set_color(c_white)
        if (global.tension < global.spellcost[thischar][((page * 6) + (i * 2))])
            draw_set_color(c_gray)
        else if (global.spell[thischar][((page * 6) + (i * 2))] == 3)
        {
            pacify_glow = false
            for (sglowi = 0; sglowi < 3; sglowi += 1)
            {
                if (global.monster[sglowi] == true && global.monsterstatus[sglowi] == true)
                {
                    if (global.encounterno != 31)
                        pacify_glow = true
                }
            }
            if (pacify_glow == true)
                draw_set_color(merge_color(c_aqua, c_blue, 0.3))
        }
        draw_text((xx + 30), ((yy + 375) + (i * 30)), string_hash_to_newline(global.spellnameb[thischar][((page * 6) + (i * 2))]))
        draw_set_color(c_white)
        if (global.tension < global.spellcost[thischar][(((page * 6) + (i * 2)) + 1)])
            draw_set_color(c_gray)
        draw_text((xx + 260), ((yy + 375) + (i * 30)), string_hash_to_newline(global.spellnameb[thischar][(((page * 6) + (i * 2)) + 1)]))
    }
    draw_set_color(c_gray)
    draw_text((xx + spell_offset), (yy + 375), string_hash_to_newline(global.spelldescb[thischar][((page * 6) + spellcoord)]))
    thiscost = round(((global.spellcost[thischar][((page * 6) + spellcoord)] / global.maxtension) * 100))
    draw_set_color(c_orange)
    draw_text((xx + spell_offset), (yy + 440), string_hash_to_newline((string(thiscost) + gml_Script_scr_84_get_lang_string_ch1("obj_battlecontroller_slash_Draw_0_gml_171_0"))))
}
if (global.bmenuno == 4 && global.myfight == 0)
{
    itemcoord = global.bmenucoord[4][global.charturn]
    page = 0
    if (itemcoord > 5)
    {
        page = 1
        itemcoord -= 6
    }
    icx = 10
    icy = 385
    if (itemcoord == 1 || itemcoord == 3 || itemcoord == 5)
        icx = 230
    if (global.lang == "ja")
    {
        if (itemcoord == 1 || itemcoord == 3 || itemcoord == 5)
            icx = 240
    }
    if (itemcoord > 1 && itemcoord < 4)
        icy = 415
    if (itemcoord > 3)
        icy = 445
    draw_sprite(spr_heart_ch1, 0, (xx + icx), (yy + icy))
    gml_Script_scr_84_set_draw_font_ch1("mainbig")
    for (i = 0; i < 3; i += 1)
    {
        if (global.lang == "ja")
        {
            draw_set_color(c_white)
            jp_string_lengthtest[0] = string_width(string_hash_to_newline(tempitemnameb[((page * 6) + (i * 2))][global.charturn]))
            jp_string_lengthtest[1] = string_width(string_hash_to_newline(tempitemnameb[(((page * 6) + (i * 2)) + 1)][global.charturn]))
            if (jp_string_lengthtest[0] >= 200)
            {
                jp_string_xscale = (200 / jp_string_lengthtest[0])
                draw_text_transformed((xx + 30), ((yy + 375) + (i * 30)), string_hash_to_newline(tempitemnameb[((page * 6) + (i * 2))][global.charturn]), jp_string_xscale, 1, 0)
            }
            else
                draw_text((xx + 30), ((yy + 375) + (i * 30)), string_hash_to_newline(tempitemnameb[((page * 6) + (i * 2))][global.charturn]))
            draw_set_color(c_white)
            if (jp_string_lengthtest[1] >= 200)
            {
                jp_string_xscale = (200 / jp_string_lengthtest[1])
                draw_text_transformed((xx + 260), ((yy + 375) + (i * 30)), string_hash_to_newline(tempitemnameb[(((page * 6) + (i * 2)) + 1)][global.charturn]), jp_string_xscale, 1, 0)
            }
            else
                draw_text((xx + 260), ((yy + 375) + (i * 30)), string_hash_to_newline(tempitemnameb[(((page * 6) + (i * 2)) + 1)][global.charturn]))
        }
        else
        {
            draw_set_color(c_white)
            draw_text((xx + 30), ((yy + 375) + (i * 30)), string_hash_to_newline(tempitemnameb[((page * 6) + (i * 2))][global.charturn]))
            draw_text((xx + 260), ((yy + 375) + (i * 30)), string_hash_to_newline(tempitemnameb[(((page * 6) + (i * 2)) + 1)][global.charturn]))
        }
    }
    if (page == 0 && global.item[6] != 0)
        draw_sprite(spr_morearrow_ch1, 0, (xx + 470), ((yy + 445) + (sin((s_siner / 10)) * 2)))
    if (page == 1)
        draw_sprite_ext(spr_morearrow_ch1, 0, (xx + 470), ((yy + 395) - (sin((s_siner / 10)) * 2)), 1, -1, 0, c_white, 1)
    draw_set_color(c_gray)
    draw_text((xx + spell_offset), (yy + 375), string_hash_to_newline(tempitemdescb[((page * 6) + itemcoord)][global.charturn]))
}
if (global.bmenuno == 9 && global.myfight == 0)
{
    actcoord = global.bmenucoord[9][global.charturn]
    page = 0
    icx = 10
    icy = 385
    if (actcoord == 1 || actcoord == 3 || actcoord == 5)
        icx = 240
    if (actcoord > 1 && actcoord < 4)
        icy = 415
    if (actcoord > 3)
        icy = 445
    draw_sprite(spr_heart_ch1, 0, (xx + icx), (yy + icy))
    gml_Script_scr_84_set_draw_font_ch1("mainbig")
    for (i = 0; i < 6; i += 1)
    {
        cant = false
        chartime = global.actactor[global.bmenucoord[11][global.charturn]][i]
        charoffset = 0
        xoffset = 0
        if (i == 1 || i == 3 || i == 5)
            xoffset = 230
        yoffset = 0
        if (i == 2 || i == 3)
            yoffset = 30
        if (i == 4 || i == 5)
            yoffset = 60
        drawsus = false
        drawral = false
        susblend = c_white
        ralblend = c_white
        if (chartime == 2 || chartime == 4)
        {
            drawsus = true
            if (havechar[1] == false || global.hp[2] <= 0)
            {
                susblend = c_gray
                cant = true
            }
            charoffset = 36
        }
        if (chartime == 3 || chartime == 4)
        {
            drawral = true
            if (havechar[2] == false || global.hp[3] <= 0)
            {
                ralblend = c_gray
                cant = true
            }
            charoffset = 36
        }
        if (global.tension < global.actcost[global.bmenucoord[11][global.charturn]][i])
            cant = true
        if (chartime == 4)
            charoffset = round((charoffset * 1.8))
        draw_set_color(c_white)
        if (cant == true)
            draw_set_color(c_gray)
        if (chartime == 2)
            draw_sprite_ext(spr_headsusie_ch1, 0, ((xx + 30) + xoffset), ((yy + 375) + yoffset), 1, 1, 0, susblend, 1)
        if (chartime == 3)
            draw_sprite_ext(spr_headralsei_ch1, 0, ((xx + 30) + xoffset), ((yy + 375) + yoffset), 1, 1, 0, susblend, 1)
        if (chartime == 4)
        {
            draw_sprite_ext(spr_headsusie_ch1, 0, ((xx + 30) + xoffset), ((yy + 375) + yoffset), 1, 1, 0, susblend, 1)
            draw_sprite_ext(spr_headralsei_ch1, 0, ((xx + 60) + xoffset), ((yy + 375) + yoffset), 1, 1, 0, susblend, 1)
        }
        if (global.lang == "ja")
        {
            jp_string_lengthtest_act = string_width(string_hash_to_newline(global.actname[global.bmenucoord[11][global.charturn]][i]))
            if (((jp_string_lengthtest_act + 30) + charoffset) >= 235 && xoffset == 0)
            {
                jp_string_xscale = ((206 - charoffset) / jp_string_lengthtest_act)
                draw_text_transformed((((xx + 30) + charoffset) + xoffset), ((yy + 375) + yoffset), string_hash_to_newline(global.actname[global.bmenucoord[11][global.charturn]][i]), jp_string_xscale, 1, 0)
            }
            else
                draw_text((((xx + 30) + charoffset) + xoffset), ((yy + 375) + yoffset), string_hash_to_newline(global.actname[global.bmenucoord[11][global.charturn]][i]))
        }
        else
            draw_text((((xx + 30) + charoffset) + xoffset), ((yy + 375) + yoffset), string_hash_to_newline(global.actname[global.bmenucoord[11][global.charturn]][i]))
    }
    draw_set_color(c_gray)
    draw_text((xx + 500), (yy + 375), string_hash_to_newline(global.actdesc[global.bmenucoord[11][global.charturn]][actcoord]))
    if (global.tensionselect > 0)
    {
        thiscost = round(((global.actcost[global.bmenucoord[11][global.charturn]][actcoord] / global.maxtension) * 100))
        draw_set_color(c_orange)
        draw_text((xx + 500), (yy + 440), string_hash_to_newline((string(thiscost) + gml_Script_scr_84_get_lang_string_ch1("obj_battlecontroller_slash_Draw_0_gml_280_0"))))
    }
    var _temp_local_var_32 = global.monsterinstance[global.bmenucoord[11][global.charturn]]
    if (flash == false)
        fsiner = 0
    flash = true
    becomeflash = true
}
if (global.bmenuno == 7 || global.bmenuno == 8)
{
    if (global.myfight == 0)
    {
        draw_sprite(spr_heart_ch1, 0, (xx + 55), ((yy + 385) + (global.bmenucoord[global.bmenuno][global.charturn] * 30)))
        gml_Script_scr_84_set_draw_font_ch1("mainbig")
        for (i = 0; i < 3; i += 1)
        {
            if (global.char[i] != 0)
            {
                var _temp_local_var_34 = global.charinstance[global.bmenucoord[global.bmenuno][global.charturn]]
                if (flash == false)
                    fsiner = 0
                flash = true
                becomeflash = true
            }
        }
    }
}
