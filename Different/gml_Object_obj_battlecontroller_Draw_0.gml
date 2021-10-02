xx = __view_get((0 << 0), 0)
yy = __view_get((1 << 0), 0)
if (global.chapter == 2 && instance_exists(obj_gigaqueen_enemy))
{
    if (gigaqueencon == 1)
    {
        gigaqueentimer++
        gigaqueeny = lerp(0, 100, (gigaqueentimer / 10))
        if (gigaqueentimer == 10)
            gigaqueencon = 0
    }
    if (gigaqueencon == 2)
    {
        gigaqueentimer++
        gigaqueeny = lerp(100, 0, (gigaqueentimer / 10))
        if (gigaqueentimer == 10)
            gigaqueencon = 0
    }
    if (gigaqueencon == 3)
        gigaqueeny = 200
    if (gigaqueencon == 4)
    {
        gigaqueentimer++
        gigaqueeny = lerp(200, 0, (gigaqueentimer / 10))
        if (gigaqueentimer == 10)
            gigaqueencon = 0
    }
    if (gigaqueencon == 5)
    {
        gigaqueentimer++
        gigaqueeny = lerp(0, 200, (gigaqueentimer / 10))
        if (gigaqueentimer == 10)
            gigaqueencon = 0
    }
    yy = (__view_get((1 << 0), 0) + gigaqueeny)
}
tpoff = ((tp - tpy) + yy)
bpoff = (((-bp) + bpy) + yy)
var spell_offset = langopt(500, 496)
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
draw_rectangle((xx - 10), (481 + yy), (xx + 700), (((480 - bp) + yy) - 4), false)
draw_set_color(bcolor)
draw_rectangle((xx - 10), (((480 - bp) - 3) + yy), (xx + 700), (((480 - bp) - 2) + yy), false)
draw_set_color(bcolor)
draw_rectangle((xx - 10), (((480 - bp) + 34) + yy), (xx + 700), (((480 - bp) + 36) + yy), false)
scr_charbox()
if (global.bmenuno == 1 || global.bmenuno == 3 || global.bmenuno == 11 || global.bmenuno == 12 || global.bmenuno == 13)
{
    if (global.myfight == 0)
    {
        draw_sprite(spr_heart, 0, (xx + 55), ((yy + 385) + (global.bmenucoord[global.bmenuno][global.charturn] * 30)))
        scr_84_set_draw_font("mainbig")
        namewidthb[0] = string_width(string_hash_to_newline(global.monstername[0]))
        namewidthb[1] = string_width(string_hash_to_newline(global.monstername[1]))
        namewidthb[2] = string_width(string_hash_to_newline(global.monstername[2]))
        var namewidthmax = 0
        for (i = 0; i < 3; i++)
        {
            if (namewidthb[i] > namewidthmax)
                namewidthmax = namewidthb[i]
        }
        for (i = 0; i < 3; i += 1)
        {
            with (global.monsterinstance[global.bmenucoord[global.bmenuno][global.charturn]])
            {
                if (flash == false)
                    fsiner = 0
                flash = true
                becomeflash = true
            }
            if (global.monster[i] == true)
            {
                draw_set_color(c_white)
                mercydraw = false
                tireddraw = false
                mnamecolor1 = c_white
                mnamecolor2 = c_white
                aqcolor = merge_color(c_aqua, c_blue, 0.3)
                if (global.monsterstatus[i] == true)
                    tireddraw = true
                if (global.mercymod[i] >= global.mercymax[i])
                    mercydraw = true
                namewidth = string_width(string_hash_to_newline(global.monstername[i]))
                if (tireddraw == true)
                {
                    if (global.encounterno != 31)
                    {
                        draw_set_color(aqcolor)
                        mnamecolor1 = aqcolor
                        mnamecolor2 = aqcolor
                    }
                    draw_sprite(spr_tiredmark, 0, (((xx + 80) + namewidth) + 40), ((yy + 385) + (i * 30)))
                }
                if (mercydraw == true)
                {
                    draw_set_color(c_yellow)
                    mnamecolor1 = c_yellow
                    if (tireddraw == false)
                        mnamecolor2 = c_yellow
                    if (hidemercy == 0)
                        draw_sprite(spr_sparestar, 0, (((xx + 80) + namewidth) + 20), ((yy + 385) + (i * 30)))
                }
                draw_text_colour((xx + 80), ((yy + 375) + (i * 30)), string_hash_to_newline(global.monstername[i]), mnamecolor1, mnamecolor2, mnamecolor2, mnamecolor1, 1)
                var __drawstatus = 0
                if (global.bmenuno == 13)
                    __drawstatus = 1
                if (__drawstatus == 0)
                {
                    draw_set_color(c_gray)
                    if (global.lang != "ja")
                        draw_text((((xx + 80) + namewidth) + 60), ((yy + 375) + (i * 30)), string_hash_to_newline(global.monstercomment[i]))
                    else if ((((80 + namewidth) + 60) + (string_width(global.monstercomment[i]) / 2)) < 415)
                        draw_text_transformed((((xx + 80) + namewidth) + 60), ((yy + 375) + (i * 30)), string_hash_to_newline(global.monstercomment[i]), 0.5, 1, 0)
                    draw_set_color(c_maroon)
                    draw_rectangle((xx + 420), ((yy + 380) + (i * 30)), (xx + 500), (((yy + 380) + (i * 30)) + 15), false)
                    draw_set_color(c_lime)
                    draw_rectangle((xx + 420), ((yy + 380) + (i * 30)), ((xx + 420) + ((global.monsterhp[i] / global.monstermaxhp[i]) * 80)), (((yy + 380) + (i * 30)) + 15), false)
                    draw_set_color(c_white)
                    draw_text_transformed((xx + 424), (yy + 364), stringsetloc("HP", "obj_battlecontroller_slash_Draw_0_gml_173_0"), 1, 0.5, 0)
                    draw_text_transformed((xx + 424), ((yy + 380) + (i * 30)), (string(ceil(((global.monsterhp[i] / global.monstermaxhp[i]) * 100))) + "%"), 1, 0.5, 0)
                }
                else
                {
                    var __actname = stringsetloc("Standard", "obj_battlecontroller_slash_Draw_0_gml_172_0")
                    var __plainactname = __actname
                    if (global.char[global.charturn] == 2)
                        __actname = global.actnamesus[i][global.bmenucoord[2][global.charturn]]
                    if (global.char[global.charturn] == 3)
                        __actname = global.actnameral[i][global.bmenucoord[2][global.charturn]]
                    if (global.char[global.charturn] == 4)
                        __actname = global.actnamenoe[i][global.bmenucoord[2][global.charturn]]
                    if (__actname == "S-Action")
                        __actname = __plainactname
                    if (__actname == "R-Action")
                        __actname = __plainactname
                    if (__actname == "N-Action")
                        __actname = __plainactname
                    draw_set_color(hpcolorsoft[(global.char[global.charturn] - 1)])
                    draw_text_width((((xx + 80) + namewidthmax) + 60), ((yy + 375) + (i * 30)), string_hash_to_newline(__actname), (514 - ((80 + namewidthmax) + 60)))
                }
                mercyamt = global.mercymod[i]
                if (mercyamt >= 100)
                    mercyamt = 100
                if (hidemercy == 0)
                {
                    var mercypercent = ceil(((global.mercymod[i] / global.mercymax[i]) * 100))
                    if (mercypercent > 100)
                        mercypercent = 100
                    draw_set_color(merge_color(c_orange, c_red, 0.5))
                    draw_rectangle((xx + 520), ((yy + 380) + (i * 30)), (xx + 600), (((yy + 380) + (i * 30)) + 15), false)
                    draw_set_color(c_yellow)
                    if (mercyamt > 0 && cantspare[i] == 0)
                        draw_rectangle((xx + 520), ((yy + 380) + (i * 30)), ((xx + 520) + (mercypercent * 0.8)), (((yy + 380) + (i * 30)) + 15), false)
                    draw_set_color(c_white)
                    var mercywidth = 1
                    if (global.lang == "ja")
                        mercywidth = 0.5
                    draw_text_transformed((xx + 524), (yy + 364), stringsetloc("MERCY", "obj_battlecontroller_slash_Draw_0_gml_208_0"), mercywidth, 0.5, 0)
                    draw_set_color(c_maroon)
                    if (cantspare[i] == 0)
                        draw_text_transformed((xx + 524), ((yy + 380) + (i * 30)), (string(mercypercent) + "%"), 1, 0.5, 0)
                    if (cantspare[i] == 1)
                    {
                        draw_line_width_color(((xx + 520) - 1), ((yy + 380) + (i * 30)), (xx + 600), (((yy + 380) + (i * 30)) + 15), 2, c_maroon, c_maroon)
                        draw_line_width_color(((xx + 520) - 1), (((yy + 380) + (i * 30)) + 15), (xx + 600), ((yy + 380) + (i * 30)), 2, c_maroon, c_maroon)
                    }
                }
            }
        }
    }
}
if (global.bmenuno == 2 && global.myfight == 0 && global.flag[34] == 1)
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
    draw_sprite(spr_heart, 0, (xx + icx), (yy + icy))
    scr_84_set_draw_font("mainbig")
    for (i = 0; i < 3; i += 1)
    {
        var currentspell = global.spell[thischar][((page * 6) + (i * 2))]
        draw_set_color(c_white)
        if (global.tension < global.spellcost[thischar][((page * 6) + (i * 2))])
            draw_set_color(c_gray)
        else if (currentspell == 3 || currentspell == 8)
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
    draw_text((xx + spell_offset), (yy + 440), string_hash_to_newline((string(thiscost) + "% TP")))
}
if (global.bmenuno == 2 && global.myfight == 0 && global.flag[34] == 0)
{
    thischar = global.charturn
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
    draw_sprite(spr_heart, 0, (xx + icx), (yy + icy))
    scr_84_set_draw_font("mainbig")
    for (i = 0; i < 3; i += 1)
    {
        var __n = 0
        var __isact = 0
        repeat (2)
        {
            draw_set_color(c_white)
            if (global.battlespellspecial[thischar][(((page * 6) + (i * 2)) + __n)] >= 1)
                draw_set_color(hpcolorsoft[(global.char[thischar] - 1)])
            if (global.tension < global.battlespellcost[thischar][(((page * 6) + (i * 2)) + __n)])
                draw_set_color(c_gray)
            else if (global.battlespell[thischar][(((page * 6) + (i * 2)) + __n)] == 3 || global.battlespell[thischar][(((page * 6) + (i * 2)) + __n)] == 8)
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
            draw_text(((xx + 30) + (__n * 230)), ((yy + 375) + (i * 30)), string_hash_to_newline(global.battlespellname[thischar][(((page * 6) + (i * 2)) + __n)]))
            __n++
        }
    }
    draw_set_color(c_gray)
    draw_text((xx + spell_offset), (yy + 375), string_hash_to_newline(global.battlespelldesc[thischar][((page * 6) + spellcoord)]))
    thiscost = round(((global.battlespellcost[thischar][((page * 6) + spellcoord)] / global.maxtension) * 100))
    draw_set_color(c_orange)
    if (thiscost > 0)
        draw_text((xx + spell_offset), (yy + 440), string_hash_to_newline((string(thiscost) + "% TP")))
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
        icx = langopt(230, 240)
    if (itemcoord > 1 && itemcoord < 4)
        icy = 415
    if (itemcoord > 3)
        icy = 445
    draw_sprite(spr_heart, 0, (xx + icx), (yy + icy))
    scr_84_set_draw_font("mainbig")
    for (i = 0; i < 3; i += 1)
    {
        var s1 = string_hash_to_newline(tempitemnameb[((page * 6) + (i * 2))][global.charturn])
        var s2 = string_hash_to_newline(tempitemnameb[(((page * 6) + (i * 2)) + 1)][global.charturn])
        var s1_width = string_width(s1)
        var s2_width = string_width(s2)
        var s1_xscale = min(1, (200 / s1_width))
        var s2_xscale = min(1, (200 / s2_width))
        draw_set_color(c_white)
        draw_text_transformed((xx + 30), ((yy + 375) + (i * 30)), s1, s1_xscale, 1, 0)
        draw_text_transformed((xx + 260), ((yy + 375) + (i * 30)), s2, s2_xscale, 1, 0)
    }
    if (page == 0 && global.item[6] != 0)
        draw_sprite(spr_morearrow, 0, (xx + 470), ((yy + 445) + (sin((s_siner / 10)) * 2)))
    if (page == 1)
        draw_sprite_ext(spr_morearrow, 0, (xx + 470), ((yy + 395) - (sin((s_siner / 10)) * 2)), 1, -1, 0, c_white, 1)
    draw_set_color(c_gray)
    draw_text((xx + spell_offset), (yy + 375), string_hash_to_newline(tempitemdescb[((page * 6) + itemcoord)][global.charturn]))
}
if (global.bmenuno == 9 && global.myfight == 0)
{
    actcoord = global.bmenucoord[9][global.charturn]
    for (__acti = 0; __acti < 6; __acti++)
    {
        canact[__acti] = false
        if (global.char[global.charturn] == 1)
        {
            canact[__acti] = global.canact[thisenemy][__acti]
            acttpcost[__acti] = global.actcost[thisenemy][__acti]
            actsimul[__acti] = global.actsimul[thisenemy][__acti]
            actname[__acti] = global.actname[thisenemy][__acti]
            actdesc[__acti] = global.actdesc[thisenemy][__acti]
        }
        if (global.char[global.charturn] == 2)
        {
            canact[__acti] = global.canactsus[thisenemy][__acti]
            acttpcost[__acti] = global.actcostsus[thisenemy][__acti]
            actsimul[__acti] = global.actsimulsus[thisenemy][__acti]
            actname[__acti] = global.actnamesus[thisenemy][__acti]
            actdesc[__acti] = global.actdescsus[thisenemy][__acti]
        }
        if (global.char[global.charturn] == 3)
        {
            canact[__acti] = global.canactral[thisenemy][__acti]
            acttpcost[__acti] = global.actcostral[thisenemy][__acti]
            actsimul[__acti] = global.actsimulral[thisenemy][__acti]
            actname[__acti] = global.actnameral[thisenemy][__acti]
            actdesc[__acti] = global.actdescral[thisenemy][__acti]
        }
        if (global.char[global.charturn] == 4)
        {
            canact[__acti] = global.canactnoe[thisenemy][__acti]
            acttpcost[__acti] = global.actcostnoe[thisenemy][__acti]
            actsimul[__acti] = global.actsimulnoe[thisenemy][__acti]
            actname[__acti] = global.actnamenoe[thisenemy][__acti]
            actdesc[__acti] = global.actdescnoe[thisenemy][__acti]
        }
    }
    page = 0
    icx = 10
    icy = 385
    if (actcoord == 1 || actcoord == 3 || actcoord == 5)
        icx = 230
    if (actcoord > 1 && actcoord < 4)
        icy = 415
    if (actcoord > 3)
        icy = 445
    draw_sprite(spr_heart, 0, (xx + icx), (yy + icy))
    scr_84_set_draw_font("mainbig")
    for (i = 0; i < 6; i += 1)
    {
        cant = false
        chartime = 0
        if (global.char[global.charturn] == 1)
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
        drawnoe = 0
        susblend = c_white
        ralblend = c_white
        noeblend = c_white
        if (chartime == 2 || chartime == 4)
        {
            drawsus = true
            if (havechar[1] == false || global.hp[2] <= 0)
            {
                susblend = c_gray
                cant = true
            }
            charoffset = 30
        }
        if (chartime == 3 || chartime == 4)
        {
            drawral = true
            if (havechar[2] == false || global.hp[3] <= 0)
            {
                ralblend = c_gray
                cant = true
            }
            charoffset = 30
        }
        if (chartime == 5)
        {
            drawnoe = 1
            if (havechar[3] == false || global.hp[4] <= 0)
            {
                noeblend = c_gray
                cant = true
            }
            charoffset = 30
        }
        if (global.tension < acttpcost[i])
            cant = true
        if (chartime == 4)
            charoffset *= 2
        draw_set_color(c_white)
        if (cant == true)
            draw_set_color(c_gray)
        if (chartime == 2)
            draw_sprite_ext(spr_headsusie, 0, ((xx + 30) + xoffset), ((yy + 375) + yoffset), 1, 1, 0, susblend, 1)
        if (chartime == 3)
            draw_sprite_ext(spr_headralsei, 0, ((xx + 30) + xoffset), ((yy + 375) + yoffset), 1, 1, 0, susblend, 1)
        if (chartime == 4)
        {
            draw_sprite_ext(spr_headsusie, 0, ((xx + 30) + xoffset), ((yy + 375) + yoffset), 1, 1, 0, susblend, 1)
            draw_sprite_ext(spr_headralsei, 0, ((xx + 60) + xoffset), ((yy + 375) + yoffset), 1, 1, 0, susblend, 1)
        }
        if (chartime == 5)
            draw_sprite_ext(spr_headnoelle, 0, ((xx + 30) + xoffset), ((yy + 375) + yoffset), 1, 1, 0, noeblend, 1)
        if (global.chapter == 2 && instance_exists(obj_spamton_neo_enemy) && obj_spamton_neo_enemy.savemeactcon > 0)
        {
            if (obj_spamton_neo_enemy.savemeactcon == 1)
                draw_sprite_ext(spr_headralsei, 0, (xx + 30), (yy + 380), 1, 1, 0, noeblend, 1)
            if (obj_spamton_neo_enemy.savemeactcon == 2)
                draw_sprite_ext(spr_headralsei, 0, (xx + 30), (yy + 380), 1, 1, 0, noeblend, 1)
            if (obj_spamton_neo_enemy.savemeactcon == 3)
                draw_sprite_ext(spr_headsusie, 0, (xx + 30), (yy + 380), 1, 1, 0, noeblend, 1)
            if (obj_spamton_neo_enemy.savemeactcon == 4)
                draw_sprite_ext(spr_headsusie, 0, (xx + 30), (yy + 380), 1, 1, 0, noeblend, 1)
            if (obj_spamton_neo_enemy.savemeactcon > 4)
                draw_sprite_ext(spr_headnoelle, 0, (xx + 30), (yy + 380), 1, 1, 0, noeblend, 1)
        }
        s1 = string_hash_to_newline(actname[i])
        s1_width = max(1, string_width(s1))
        s1_xscale = ((206 - charoffset) / s1_width)
        if (s1_xscale > 1)
            s1_xscale = 1
        if (s1_xscale < 0.5)
            s1_xscale = 0.5
        draw_text_transformed((((xx + 30) + charoffset) + xoffset), ((yy + 375) + yoffset), string_hash_to_newline(actname[i]), s1_xscale, 1, 0)
    }
    draw_set_color(c_gray)
    draw_text((xx + 500), (yy + 375), string_hash_to_newline(actdesc[actcoord]))
    if (global.tensionselect > 0)
    {
        thiscost = round(((acttpcost[actcoord] / global.maxtension) * 100))
        draw_set_color(c_orange)
        draw_text((xx + 500), (yy + 440), string_hash_to_newline((string(thiscost) + "% TP")))
    }
    with (global.monsterinstance[global.bmenucoord[11][global.charturn]])
    {
        if (flash == false)
            fsiner = 0
        flash = true
        becomeflash = true
    }
}
if (global.bmenuno == 7 || global.bmenuno == 8)
{
    if (global.myfight == 0)
    {
        draw_sprite(spr_heart, 0, (xx + 55), ((yy + 385) + (global.bmenucoord[global.bmenuno][global.charturn] * 30)))
        scr_84_set_draw_font("mainbig")
        for (i = 0; i < 3; i += 1)
        {
            if (global.char[i] != 0)
            {
                with (global.charinstance[global.bmenucoord[global.bmenuno][global.charturn]])
                {
                    if (flash == false)
                        fsiner = 0
                    flash = true
                    becomeflash = true
                }
                draw_set_color(c_white)
                draw_text((xx + 80), ((yy + 375) + (i * 30)), string_hash_to_newline(global.charname[global.char[i]]))
                draw_set_color(c_maroon)
                draw_rectangle((xx + 400), ((yy + 380) + (i * 30)), (xx + 500), (((yy + 380) + (i * 30)) + 15), false)
                draw_set_color(c_lime)
                draw_rectangle((xx + 400), ((yy + 380) + (i * 30)), ((xx + 400) + ((global.hp[global.char[i]] / global.maxhp[global.char[i]]) * 100)), (((yy + 380) + (i * 30)) + 15), false)
            }
        }
    }
}
if keyboard_check(ord("A"))
{
    if (global.flag[34] == 0 && global.myfight == 0)
    {
        if (global.bmenuno == 11 || global.bmenuno == 13 || global.bmenuno == 2)
        {
            var remfont = draw_get_font()
            for (i = 0; i < 3; i++)
            {
                var __y = 0
                var __x = 0
                var __offsetx = 0
                var __offsety = 0
                if global.monster[i]
                {
                    with (global.monsterinstance[i])
                    {
                        __offsetx = sactionboxx
                        __offsety = sactionboxy
                    }
                    scr_84_set_draw_font("main")
                    if scr_havechar(2)
                    {
                        for (__n = 0; __n < 3; __n++)
                        {
                            draw_set_color(hpcolorsoft[1])
                            if (global.canactsus[i][__n] == true)
                            {
                                var __actnamestring = global.actnamesus[i][__n]
                                var __actnamestringwidth = string_width(__actnamestring)
                                if ((__actnamestringwidth - 45) > __x)
                                    __x = (__actnamestringwidth - 45)
                                if (__actnamestring != "S-Action")
                                    draw_text(((global.monsterx[i] - 200) + __offsetx), ((global.monstery[i] + __y) + __offsety), ("S-Action - " + __actnamestring))
                                else
                                    draw_text(((global.monsterx[i] - 200) + __offsetx), ((global.monstery[i] + __y) + __offsety), __actnamestring)
                                __y += 18
                            }
                        }
                    }
                    if scr_havechar(3)
                    {
                        for (__n = 0; __n < 3; __n++)
                        {
                            draw_set_color(hpcolorsoft[2])
                            if (global.canactral[i][__n] == true)
                            {
                                __actnamestring = global.actnameral[i][__n]
                                __actnamestringwidth = string_width(__actnamestring)
                                if ((__actnamestringwidth - 45) > __x)
                                    __x = (__actnamestringwidth - 45)
                                if (global.actnameral[i][__n] != "R-Action")
                                    draw_text(((global.monsterx[i] - 200) + __offsetx), ((global.monstery[i] + __y) + __offsety), ("R-Action - " + global.actnameral[i][__n]))
                                else
                                    draw_text(((global.monsterx[i] - 200) + __offsetx), ((global.monstery[i] + __y) + __offsety), "R-Action - Standard")
                                __y += 18
                            }
                        }
                    }
                    if scr_havechar(4)
                    {
                        for (__n = 0; __n < 3; __n++)
                        {
                            draw_set_color(hpcolorsoft[3])
                            if (global.canactnoe[i][__n] == true)
                            {
                                __actnamestring = global.actnamenoe[i][__n]
                                __actnamestringwidth = string_width(__actnamestring)
                                if ((__actnamestringwidth - 45) > __x)
                                    __x = (__actnamestringwidth - 45)
                                if (global.actnamenoe[i][__n] != "N-Action")
                                    draw_text(((global.monsterx[i] - 200) + __offsetx), ((global.monstery[i] + __y) + __offsety), ("N-Action - " + global.actnamenoe[i][__n]))
                                else
                                    draw_text(((global.monsterx[i] - 200) + __offsetx), ((global.monstery[i] + __y) + __offsety), "N-Action - Standard")
                                __y += 18
                            }
                        }
                    }
                    draw_set_color(c_fuchsia)
                    if (__y > 0)
                        draw_rectangle(((global.monsterx[i] - 210) + __offsetx), (global.monstery[i] + __offsety), (((global.monsterx[i] - 80) + __x) + __offsetx), ((global.monstery[i] + __y) + __offsety), true)
                }
            }
            draw_set_font(remfont)
        }
    }
}
if (global.myfight == 0 && global.chapter == 2 && instance_exists(obj_queen_enemy) && (global.bmenuno == 1 || global.bmenuno == 3 || global.bmenuno == 11 || global.bmenuno == 12 || global.bmenuno == 13))
{
    if i_ex(obj_berdlyplug_enemy)
    {
        draw_set_color(c_gray)
        draw_text_ext_transformed((__view_get((0 << 0), 0) + 80), (__view_get((1 << 0), 0) + 407), stringsetloc("Berdly", "obj_battlecontroller_slash_Draw_0_gml_653_0"), 9999, 9999, 1, 1, 0)
        draw_set_color(c_white)
        draw_healthbar((__view_get((0 << 0), 0) + 520), (__view_get((1 << 0), 0) + 418), (__view_get((0 << 0), 0) + 600), (__view_get((1 << 0), 0) + 433), obj_queen_enemy.bardlymercy, c_gray, c_yellow, c_yellow, 0, 1, 0)
    }
    else
    {
        draw_set_color(c_gray)
        draw_text_ext_transformed((__view_get((0 << 0), 0) + 80), (__view_get((1 << 0), 0) + 407), stringsetloc("Shield", "obj_queen_enemy_slash_Draw_0_gml_67_0"), 9999, 9999, 1, 1, 0)
        draw_set_color(c_white)
        draw_healthbar((__view_get((0 << 0), 0) + 520), (__view_get((1 << 0), 0) + 418), (__view_get((0 << 0), 0) + 600), (__view_get((1 << 0), 0) + 433), ((obj_queen_enemy.shieldacthp / obj_queen_enemy.shieldactmaxhp) * 10), c_gray, c_yellow, c_yellow, 0, 1, 0)
    }
    var xx2 = 0
    if (global.charturn > 0 && global.bmenuno == 13)
        xx2 = 100
    if (global.lang != "ja")
    {
        if (obj_queen_enemy.shieldhp > 1)
            draw_text_ext_transformed(((__view_get((0 << 0), 0) + 210) + xx2), (__view_get((1 << 0), 0) + 376), stringsetloc("(Protected)", "obj_queen_enemy_slash_Draw_0_gml_78_0"), 9999, 9999, 1, 1, 0)
        else
            draw_text_ext_transformed(((__view_get((0 << 0), 0) + 210) + xx2), (__view_get((1 << 0), 0) + 376), stringsetloc("(Defenseless)", "obj_queen_enemy_slash_Draw_0_gml_82_0"), 9999, 9999, 1, 1, 0)
    }
}
