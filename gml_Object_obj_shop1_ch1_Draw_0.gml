draw_sprite_ext(spr_shopbg1_ch1, 0, 0, 0, 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_shopbg1_ch1, 2, 0, 0, 2, 2, 0, c_white, (siner / 30))
siner += 1
if (menu == 1 || menu == 2)
{
    if (shopcharx > -20)
        shopcharx -= 4
    if (shopcharx > -40)
        shopcharx -= 4
    if (shopcharx > -80)
        shopcharx -= 4
    if (shopcharx <= -80)
        shopcharx = -80
}
else
{
    if (shopcharx < -50)
        shopcharx += 4
    if (shopcharx < -30)
        shopcharx += 4
    if (shopcharx < 0)
        shopcharx += 4
    if (shopcharx > 0)
        shopcharx = 0
}
talkanim = 0
if 1327
{
    if (obj_writer_ch1.pos < obj_writer_ch1.length)
    {
        if (talkbuffer < 0)
            talkfacer = 0
        talkbuffer = 16
        talkanim = 1
        idletimer = 0
        idlefacer = 0
        talkfacer += 0.2
    }
}
shopkeepsprite = spr_seam_talk_ch1
if (global.fe == 1)
    shopkeepsprite = spr_seam_oh_ch1
if (global.fe == 2)
    shopkeepsprite = spr_seam_laugh_ch1
if (global.fe == 3)
    shopkeepsprite = spr_seam_impatient_ch1
qualify = 0
if (global.fe != 0 && talkbuffer < 0)
    talkbuffer = 0
if (talkbuffer >= 0)
{
    if (talkbuffer < 16)
    {
        if (((talkfacer + 1) % 3) != 0)
            talkfacer += 0.2
    }
    draw_sprite_ext(shopkeepsprite, talkfacer, (shopcharx + 160), 34, 2, 2, 0, c_white, 1)
    qualify = 1
}
if (qualify == 0)
{
    idletimer += 1
    if (idletimer >= 60)
        idlefacer += 0.2
    if (idlefacer >= 5)
    {
        idletimer = 0
        idlefacer = 0
    }
    draw_sprite_ext(spr_seam_idle_ch1, idlefacer, (shopcharx + 160), 34, 2, 2, 0, c_white, 1)
}
talkbuffer -= 1
0
draw_rectangle(0, 240, 640, 480, false)
0
if (menu <= 3 || menu >= 10)
{
    gml_Script_scr_darkbox_black_ch1(0, 240, 415, 480)
    gml_Script_scr_darkbox_black_ch1(400, 240, 640, 480)
}
if (menu == 4)
    gml_Script_scr_darkbox_black_ch1(0, 240, 640, 480)
if (menu == 0)
{
    sell = 0
    selling = 0
    sidemessage = 0
    menuc[1] = 0
    menuc[2] = 0
    menuc[3] = 0
    menuc[4] = 0
    if (1327 == 0)
    {
        global.typer = 6
        global.msg[0] = "obj_shop1_slash_Draw_0_gml_98_0"
        if (mainmessage == 0)
            global.msg[0] = "obj_shop1_slash_Draw_0_gml_99_0"
        gml_Script_instance_create_ch1(30, 270, 1327)
    }
    menumax = 3
    16777215
    "mainbig"
    draw_text(480, 260, "obj_shop1_slash_Draw_0_gml_106_0")
    draw_text(480, 300, "obj_shop1_slash_Draw_0_gml_107_0")
    draw_text(480, 340, "obj_shop1_slash_Draw_0_gml_108_0")
    draw_text(480, 380, "obj_shop1_slash_Draw_0_gml_109_0")
    draw_sprite(spr_heart_ch1, 0, 450, ((135 + (menuc[0] * 20)) * 2))
    onebuffer = 2
    mainmessage = 1
    with (obj_writer_ch1)
        // WARNING: Popz'd an empty stack.
    if (menuc[0] == 0)
        menu = 1
    if (menuc[0] == 1)
    {
        menu = 10
        sidemessage = 0
    }
    if (menuc[0] == 2)
        menu = 3
    if (menuc[0] == 3)
    {
        sell = 2
        menu = 4
    }
}
if (menu == 1 || menu == 2)
{
    16777215
    "mainbig"
    for (i = 0; i < itemtotal; i += 1)
    {
        draw_text(60, (260 + (i * 40)), shopitemname[i])
        draw_text(300, (260 + (i * 40)), ("$" + string(buyvalue[i])))
    }
    draw_text(60, (260 + (itemtotal * 40)), "obj_shop1_slash_Draw_0_gml_139_0")
    if (menu == 1)
    {
        menumax = 4
        if (1327 == 0)
        {
            if (sidemessage == 0)
                global.msg[0] = "obj_shop1_slash_Draw_0_gml_148_0"
            if (sidemessage == 1)
                global.msg[0] = "obj_shop1_slash_Draw_0_gml_149_0"
            if (sidemessage == 2)
                global.msg[0] = "obj_shop1_slash_Draw_0_gml_150_0"
            if (sidemessage == 3)
                global.msg[0] = "obj_shop1_slash_Draw_0_gml_151_0"
            if (sidemessage == 4)
                global.msg[0] = "obj_shop1_slash_Draw_0_gml_152_0"
            if (murder == 1)
                global.msg[0] = "obj_shop1_slash_Draw_0_gml_153_0"
            gml_Script_instance_create_ch1(450, 260, 1327)
        }
        draw_sprite(spr_heart_ch1, 0, 30, (270 + (menuc[1] * 40)))
        if (onebuffer < 0)
        {
            menu = 2
            onebuffer = 2
            with (obj_writer_ch1)
                // WARNING: Popz'd an empty stack.
            if (menuc[1] == menumax)
                menu = 0
        }
        if (twobuffer < 0 && onebuffer < 2)
        {
            menu = 0
            twobuffer = 2
            minimenuy = 220
            with (obj_writer_ch1)
                // WARNING: Popz'd an empty stack.
        }
        menuc[2] = 0
    }
    if (menu == 2)
    {
        menumax = 1
        16777215
        "mainbig"
        if (global.lang == "ja")
        {
            draw_text(460, 290, "obj_shop1_slash_Draw_0_gml_167_0")
            draw_text(460, 260, ("$" + string_hash_to_newline((string(buyvalue[menuc[1]]) + gml_Script_scr_84_get_lang_string_ch1("obj_shop1_slash_Draw_0_gml_168_0")))))
        }
        else
        {
            draw_text(460, 260, "obj_shop1_slash_Draw_0_gml_167_0")
            draw_text(460, 290, ("$" + string_hash_to_newline((string(buyvalue[menuc[1]]) + gml_Script_scr_84_get_lang_string_ch1("obj_shop1_slash_Draw_0_gml_168_0")))))
        }
        draw_text(480, 340, "obj_shop1_slash_Draw_0_gml_169_0")
        draw_text(480, 370, "obj_shop1_slash_Draw_0_gml_170_0")
        draw_sprite(spr_heart_ch1, 0, 450, (350 + (menuc[2] * 30)))
        if (twobuffer < 0)
        {
            menu = 1
            sidemessage = 2
            twobuffer = 2
            onebuffer = 2
        }
        if (onebuffer < 0 && twobuffer < 0)
        {
            if (menuc[2] == 0)
            {
                afford = false
                if (global.gold >= buyvalue[menuc[1]])
                    afford = true
                if (afford == true)
                {
                    if (itemtype[menuc[1]] == "item")
                        item[menuc[1]]
                    if (itemtype[menuc[1]] == "weapon")
                        item[menuc[1]]
                    if (itemtype[menuc[1]] == "armor")
                        item[menuc[1]]
                    if (noroom == false)
                    {
                        global.gold -= buyvalue[menuc[1]]
                        sidemessage = 1
                        376
                    }
                    if (noroom == true)
                        sidemessage = 4
                }
                else
                    sidemessage = 3
            }
            if (menuc[2] == 1)
                sidemessage = 2
            menu = 1
        }
    }
    if (menuc[1] != 4)
    {
        if (minimenuy <= 20)
            minimenuy = 20
        if (minimenuy > 20)
            minimenuy -= 5
        if (minimenuy > 50)
            minimenuy -= 5
        if (minimenuy > 100)
            minimenuy -= 8
        if (minimenuy > 150)
            minimenuy -= 10
    }
    else if (minimenuy < 200)
        minimenuy += 40
    if (minimenuy >= 200)
        minimenuy = 200
}
if (menu == 3)
{
    menumax = 4
    16777215
    "mainbig"
    draw_text(80, 260, "obj_shop1_slash_Draw_0_gml_217_0")
    draw_text(80, 300, "obj_shop1_slash_Draw_0_gml_218_0")
    if (global.flag[241] < 6)
        draw_text(80, 340, "obj_shop1_slash_Draw_0_gml_220_0")
    else
    {
        65535
        draw_text(80, 340, "obj_shop1_slash_Draw_0_gml_224_0")
    }
    if (global.flag[241] == 0)
        draw_text(80, 380, "obj_shop1_slash_Draw_0_gml_227_0")
    else
    {
        _legendstring = "obj_shop1_slash_Draw_0_gml_230_0"
        65535
        if (global.flag[115] >= 1)
            16777215
        if (global.flag[241] >= 6)
        {
            65535
            _legendstring = "obj_shop1_slash_Draw_0_gml_233_0"
        }
        draw_text(80, 380, _legendstring)
    }
    16777215
    draw_text(80, 420, "obj_shop1_slash_Draw_0_gml_240_0")
    if (1327 == 0)
    {
        global.msg[0] = "obj_shop1_slash_Draw_0_gml_244_0"
        gml_Script_instance_create_ch1(440, 260, 1327)
    }
    draw_sprite(spr_heart_ch1, 0, 50, (270 + (menuc[3] * 40)))
    if (onebuffer < 0)
    {
        onebuffer = 2
        with (obj_writer_ch1)
            // WARNING: Popz'd an empty stack.
        if (menuc[3] < menumax)
        {
            sell = (menuc[3] + 3)
            menu = 4
        }
        else
            menu = 0
    }
    else if (twobuffer < 0 && onebuffer < 0)
    {
        twobuffer = 2
        menu = 0
        with (obj_writer_ch1)
            // WARNING: Popz'd an empty stack.
    }
}
if (menu == 10)
{
    menuc[11] = 0
    menuc[12] = 0
    menuc[13] = 0
    menumax = 3
    16777215
    "mainbig"
    draw_text(80, 260, "obj_shop1_slash_Draw_0_gml_278_0")
    draw_text(80, 300, "obj_shop1_slash_Draw_0_gml_279_0")
    draw_text(80, 340, "obj_shop1_slash_Draw_0_gml_280_0")
    draw_text(80, 380, "obj_shop1_slash_Draw_0_gml_281_0")
    if (1327 == 0)
    {
        if (sidemessage == 0)
            global.msg[0] = "obj_shop1_slash_Draw_0_gml_285_0"
        if (sidemessage == 1)
            global.msg[0] = "obj_shop1_slash_Draw_0_gml_286_0"
        if (sidemessage == 2)
            global.msg[0] = "obj_shop1_slash_Draw_0_gml_287_0"
        gml_Script_instance_create_ch1(460, 260, 1327)
    }
    draw_sprite(spr_heart_ch1, 0, 50, (270 + (menuc[10] * 40)))
    if (onebuffer < 0)
    {
        pagemax = 0
        sidemessage2 = 0
        onebuffer = 2
        with (obj_writer_ch1)
            // WARNING: Popz'd an empty stack.
        can = 1
        idealmenu = (menuc[10] + 11)
        if (idealmenu == 11)
        {
            0
            if (itemcount == 12)
            {
                sidemessage = 2
                can = 0
            }
            // WARNING: Popz'd an empty stack.
        }
        if (idealmenu == 12)
        {
            0
            if (itemcount == 12)
            {
                sidemessage = 2
                can = 0
            }
            // WARNING: Popz'd an empty stack.
        }
        if (idealmenu == 13)
        {
            0
            if (itemcount == 12)
            {
                sidemessage = 2
                can = 0
            }
            // WARNING: Popz'd an empty stack.
        }
        if (menuc[10] < menumax)
        {
            if (can == 1)
                menu = (menuc[10] + 11)
            sidemessage1 = 0
        }
        else
            menu = 0
        submenu = 0
        submenuc[1] = 0
    }
    if (twobuffer < 0 && onebuffer < 0)
    {
        twobuffer = 2
        menu = 0
        with (obj_writer_ch1)
            // WARNING: Popz'd an empty stack.
    }
}
if (menu == 11 || menu == 12 || menu == 13)
{
    if (1327 == 0)
    {
        if (sidemessage2 == 0 && menu == 11)
            global.msg[0] = "obj_shop1_slash_Draw_0_gml_347_0"
        if (sidemessage2 == 0 && menu == 12)
            global.msg[0] = "obj_shop1_slash_Draw_0_gml_348_0"
        if (sidemessage2 == 0 && menu == 13)
            global.msg[0] = "obj_shop1_slash_Draw_0_gml_349_0"
        if (sidemessage2 == 1)
            global.msg[0] = "obj_shop1_slash_Draw_0_gml_350_0"
        if (sidemessage2 == 2)
            global.msg[0] = "obj_shop1_slash_Draw_0_gml_351_0"
        if (sidemessage2 == 3)
            global.msg[0] = "obj_shop1_slash_Draw_0_gml_352_0"
        if (sidemessage2 == 4)
            global.msg[0] = "obj_shop1_slash_Draw_0_gml_353_0"
        gml_Script_instance_create_ch1(450, 260, 1327)
    }
}
4
if (menu == 15 || menu == 16 || menu == 17)
{
    menumax = 1
    16777215
    "mainbig"
    if (global.lang == "ja")
    {
        draw_text(460, 290, "obj_shop1_slash_Draw_0_gml_365_0")
        draw_text(460, 260, ("$" + string_hash_to_newline((string(sellvalue) + gml_Script_scr_84_get_lang_string_ch1("obj_shop1_slash_Draw_0_gml_366_0")))))
    }
    else
    {
        draw_text(460, 260, "obj_shop1_slash_Draw_0_gml_365_0")
        draw_text(460, 290, ("$" + string_hash_to_newline((string(sellvalue) + gml_Script_scr_84_get_lang_string_ch1("obj_shop1_slash_Draw_0_gml_366_0")))))
    }
    draw_text(480, 340, "obj_shop1_slash_Draw_0_gml_367_0")
    draw_text(480, 370, "obj_shop1_slash_Draw_0_gml_368_0")
    draw_sprite(spr_heart_ch1, 0, 450, (350 + (menuc[menu] * 30)))
}
5
if (menu == 4)
{
    if (sell == 0)
        menu = 0
    if (1327 == 0 && selling == 0)
    {
        if (sell == 1)
        {
        }
        if (sell == 2)
            global.msg[0] = "obj_shop1_slash_Draw_0_gml_395_0"
        if (sell == 3)
        {
            global.msg[0] = ("obj_shop1_slash_Draw_0_gml_399_0" + "/")
            global.msg[1] = "obj_shop1_slash_Draw_0_gml_400_0"
            global.msg[2] = "obj_shop1_slash_Draw_0_gml_401_0"
            global.msg[3] = "obj_shop1_slash_Draw_0_gml_402_0"
            global.msg[4] = "obj_shop1_slash_Draw_0_gml_403_0"
        }
        if (sell == 4)
        {
            global.msg[0] = "obj_shop1_slash_Draw_0_gml_411_0"
            global.msg[1] = "obj_shop1_slash_Draw_0_gml_412_0"
            global.msg[2] = "obj_shop1_slash_Draw_0_gml_413_0"
            global.msg[3] = "obj_shop1_slash_Draw_0_gml_414_0"
            global.msg[4] = "obj_shop1_slash_Draw_0_gml_415_0"
        }
        if (sell == 5)
        {
            global.msg[0] = "obj_shop1_slash_Draw_0_gml_421_0"
            global.msg[1] = "obj_shop1_slash_Draw_0_gml_422_0"
            global.msg[2] = "obj_shop1_slash_Draw_0_gml_423_0"
            global.msg[3] = "obj_shop1_slash_Draw_0_gml_424_0"
            global.msg[4] = "obj_shop1_slash_Draw_0_gml_425_0"
            if (global.flag[241] >= 6)
            {
                global.msg[0] = "obj_shop1_slash_Draw_0_gml_429_0"
                global.msg[1] = "obj_shop1_slash_Draw_0_gml_430_0"
                global.msg[2] = "obj_shop1_slash_Draw_0_gml_431_0"
                global.msg[3] = "obj_shop1_slash_Draw_0_gml_432_0"
                global.msg[4] = "obj_shop1_slash_Draw_0_gml_433_0"
                global.msg[5] = "obj_shop1_slash_Draw_0_gml_434_0"
                global.msg[6] = "obj_shop1_slash_Draw_0_gml_435_0"
                global.msg[7] = "obj_shop1_slash_Draw_0_gml_436_0"
                global.msg[8] = "obj_shop1_slash_Draw_0_gml_437_0"
                global.msg[9] = "obj_shop1_slash_Draw_0_gml_438_0"
                global.msg[10] = "obj_shop1_slash_Draw_0_gml_439_0"
                global.msg[11] = "obj_shop1_slash_Draw_0_gml_440_0"
                global.msg[12] = "obj_shop1_slash_Draw_0_gml_441_0"
                global.msg[13] = "obj_shop1_slash_Draw_0_gml_442_0"
            }
        }
        if (sell == 6)
        {
            global.msg[0] = "obj_shop1_slash_Draw_0_gml_448_0"
            global.msg[1] = "obj_shop1_slash_Draw_0_gml_449_0"
            global.msg[2] = "obj_shop1_slash_Draw_0_gml_450_0"
            if (global.flag[241] >= 1 && global.flag[115] == 1)
            {
                global.msg[0] = "obj_shop1_slash_Draw_0_gml_459_0"
                global.msg[1] = "obj_shop1_slash_Draw_0_gml_460_0"
                global.msg[2] = "obj_shop1_slash_Draw_0_gml_461_0"
            }
            if (global.flag[241] >= 1 && global.flag[115] == 0)
            {
                global.msg[0] = "obj_shop1_slash_Draw_0_gml_472_0"
                global.msg[1] = "obj_shop1_slash_Draw_0_gml_473_0"
                global.msg[2] = "obj_shop1_slash_Draw_0_gml_474_0"
                global.msg[3] = "obj_shop1_slash_Draw_0_gml_475_0"
                global.msg[4] = "obj_shop1_slash_Draw_0_gml_476_0"
                global.msg[5] = "obj_shop1_slash_Draw_0_gml_477_0"
                global.msg[6] = "obj_shop1_slash_Draw_0_gml_478_0"
                global.msg[7] = "obj_shop1_slash_Draw_0_gml_479_0"
                global.msg[8] = "obj_shop1_slash_Draw_0_gml_480_0"
                global.writersnd[0] = snd_item_ch1
                global.msg[9] = "obj_shop1_slash_Draw_0_gml_482_0"
                global.msg[10] = "obj_shop1_slash_Draw_0_gml_483_0"
                global.msg[11] = "obj_shop1_slash_Draw_0_gml_484_0"
                global.msg[12] = "obj_shop1_slash_Draw_0_gml_485_0"
                global.msg[13] = "obj_shop1_slash_Draw_0_gml_486_0"
                4
                global.flag[115] = 1
            }
            if (global.flag[115] == 1 && global.flag[241] >= 5)
            {
                global.msg[0] = "obj_shop1_slash_Draw_0_gml_493_0"
                global.msg[1] = "obj_shop1_slash_Draw_0_gml_494_0"
                global.msg[2] = "obj_shop1_slash_Draw_0_gml_495_0"
            }
            if (global.flag[115] == 1 && global.flag[241] >= 6)
            {
                global.msg[0] = "obj_shop1_slash_Draw_0_gml_500_0"
                global.msg[1] = "obj_shop1_slash_Draw_0_gml_501_0"
                global.msg[2] = "obj_shop1_slash_Draw_0_gml_502_0"
                global.msg[3] = "obj_shop1_slash_Draw_0_gml_503_0"
                global.msg[4] = "obj_shop1_slash_Draw_0_gml_504_0"
                global.msg[5] = "obj_shop1_slash_Draw_0_gml_505_0"
                global.msg[6] = "obj_shop1_slash_Draw_0_gml_506_0"
                global.msg[7] = "obj_shop1_slash_Draw_0_gml_507_0"
            }
        }
        gml_Script_instance_create_ch1(30, 270, 1327)
        selling = 1
    }
    if (selling == 1 && 1327 == 0)
    {
        if (sell == 2)
        {
            selling = 2
            1
        }
        else
        {
            if (sell == 1 || sell == 7)
                menu = 0
            else
                menu = 3
            sell = 0
            selling = 0
        }
    }
}
if (menu != 11 && menu != 12 && menu != 13)
{
    menuc[menu] += 1
    if (menuc[menu] > menumax)
        menuc[menu] = 0
}
if (menu != 11 && menu != 12 && menu != 13)
{
    menuc[menu] -= 1
    if (menuc[menu] < 0)
        menuc[menu] = menumax
}
if (menu < 4 || menu >= 10)
{
    draw_text(440, 420, ("$" + string_hash_to_newline(string(global.gold))))
    if (menu == 1 || menu == 2)
    {
        if (menuc[1] < 4)
        {
            if (itemtype[menuc[1]] == "item")
                0
            if (itemtype[menuc[1]] == "armor")
                0
            if (itemtype[menuc[1]] == "weapon")
                0
            "dotumche"
            if (itemcount < 10)
                roomstring = ("0" + string(itemcount))
            else
                roomstring = itemcount
            if (itemcount > 0)
                draw_text(520, 430, ("obj_shop1_slash_Draw_0_gml_568_0" + roomstring))
            if (itemcount == 0)
                draw_text(520, 430, "obj_shop1_slash_Draw_0_gml_571_0")
        }
    }
}
onebuffer -= 1
twobuffer -= 1
