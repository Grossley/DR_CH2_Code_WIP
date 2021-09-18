if (argument0 == 0)
{
    if (menu == 1 || menu == 2)
    {
        gml_Script_scr_darkbox_black_ch1(400, minimenuy, 640, 255)
        16777215
        "mainbig"
        if (menuc[1] == 0)
            draw_text(440, (minimenuy + 28), shopdesc[0])
        if (menuc[1] == 1)
            draw_text(440, (minimenuy + 28), shopdesc[1])
        if (menuc[1] == 2)
            draw_text(440, (minimenuy + 28), shopdesc[2])
        if (menuc[1] == 3)
            draw_text(440, (minimenuy + 28), shopdesc[3])
        "dotumche"
        if (itemtype[menuc[1]] == "weapon" || itemtype[menuc[1]] == "armor")
        {
            for (i = 0; i < 3; i += 1)
            {
                can_index = 0
                facetype = spr_headkris_ch1
                which = global.char[i]
                if (global.char[i] == 1)
                    facetype = spr_headkris_ch1
                if (global.char[i] == 2)
                    facetype = spr_headsusie_ch1
                if (global.char[i] == 3)
                    facetype = spr_headralsei_ch1
                if (which != 0)
                {
                    if (i == 0)
                    {
                        locx = 0
                        locy = 0
                    }
                    if (i == 1)
                    {
                        locx = 100
                        locy = 0
                    }
                    if (i == 2)
                    {
                        locx = 0
                        locy = 45
                    }
                    if (canequip[menuc[1]][which] == false)
                        can_index = 8
                    draw_sprite(facetype, can_index, (426 + locx), ((minimenuy + 140) + locy))
                    if (itemtype[menuc[1]] == "weapon" && can_index != 8)
                    {
                        16777215
                        sum[0] = (itematk[menuc[1]] - global.itemat[which][0])
                        sum[1] = (itemmagic[menuc[1]] - global.itemmag[which][0])
                        for (j = 0; j < 2; j += 1)
                        {
                            dcolor = c_white
                            addt = ""
                            16777215
                            if (sum[j] > 0)
                            {
                                65535
                                addt = "+"
                            }
                            if (sum[j] < 0)
                                16776960
                            draw_sprite_ext(spr_shopicon_ch1, j, (470 + locx), (((minimenuy + locy) + 135) + (20 * j)), 1, 1, 0, dcolor, 1)
                            draw_text((490 + locx), (((minimenuy + locy) + 135) + (20 * j)), (addt + string(sum[j])))
                        }
                    }
                    if (itemtype[menuc[1]] == "armor" && can_index != 8)
                    {
                        sum[0] = (itemdef[menuc[1]] - global.itemdf[which][1])
                        sum[1] = (itemdef[menuc[1]] - global.itemdf[which][2])
                        for (j = 0; j < 2; j += 1)
                        {
                            dcolor = c_white
                            addt = ""
                            16777215
                            if (sum[j] > 0)
                            {
                                65535
                                addt = "+"
                            }
                            if (sum[j] < 0)
                                16776960
                            draw_sprite_ext(spr_shopicon_ch1, (2 + j), (470 + locx), (((minimenuy + locy) + 135) + (20 * j)), 1, 1, 0, dcolor, 1)
                            draw_text((490 + locx), (((minimenuy + 135) + (20 * j)) + locy), (addt + string(sum[j])))
                        }
                    }
                }
            }
        }
    }
}
if (argument0 == 4)
{
    if (menu == 11 || menu == 15)
    {
        16777215
        "mainbig"
        0
        menumax = (11 - itemcount)
        if (menumax < 0)
            menumax = 0
        if (menu == 11)
        {
            _up_pressed = 0
            _down_pressed = 0
            hold_up = 0
            _down_pressed = 1
            hold_down += 1
            if (hold_down >= 8)
            {
                _down_pressed = 1
                hold_down = 6
            }
            if (_down_pressed == 1)
            {
                if (menuc[menu] < menumax)
                {
                    menuc[menu] += 1
                    if (menuc[menu] > (pagemax + 4))
                        pagemax += 1
                }
            }
            hold_down = 0
            _up_pressed = 1
            hold_up += 1
            if (hold_up >= 8)
            {
                _up_pressed = 1
                hold_up = 6
            }
            if (_up_pressed == 1)
            {
                if (menuc[menu] > 0)
                {
                    menuc[menu] -= 1
                    if (menuc[menu] < pagemax)
                        pagemax -= 1
                }
            }
        }
        j = 0
        for (i = pagemax; i < (5 + pagemax); i += 1)
        {
            draw_sprite(spr_heart_ch1, 0, 30, (270 + ((menuc[11] - pagemax) * 40)))
            g = 0
            16777215
            _itempname = global.itemnameb[i]
            if (_itempname == " ")
            {
                _itempname = "--------"
                4210752
            }
            draw_text(60, (260 + (j * 40)), _itempname)
            if (global.itemvalue[i] > 1)
                draw_text(300, (260 + (j * 40)), ("$" + string(ceil((global.itemvalue[i] / 2)))))
            j += 1
        }
        16777215
        if (menu == 11)
        {
            if (onebuffer < 0)
            {
                if (global.itemvalue[menuc[11]] > 1)
                    menu = 15
                else
                    sidemessage2 = 3
                sellvalue = (global.itemvalue[menuc[11]] / 2)
                tempmenu = 11
                onebuffer = 2
                with (obj_writer_ch1)
                    // WARNING: Popz'd an empty stack.
            }
            if (twobuffer < 0 && onebuffer < 2)
            {
                sidemessage = 0
                menu = 10
                twobuffer = 2
                with (obj_writer_ch1)
                    // WARNING: Popz'd an empty stack.
            }
        }
        // WARNING: Popz'd an empty stack.
        if (menumax > 4)
        {
            for (i = 0; i <= menumax; i += 1)
            {
                buff = 0
                if (menuc[11] == i)
                    buff = 3
                draw_rectangle((375 - buff), ((295 + (i * (130 / menumax))) - buff), (377 + buff), ((297 + (i * (130 / menumax))) + buff), false)
            }
        }
    }
    if (menu == 12 || menu == 16)
    {
        16777215
        "mainbig"
        menumax = 11
        if (menu == 12)
        {
            _up_pressed = 0
            _down_pressed = 0
            hold_up = 0
            _down_pressed = 1
            hold_down += 1
            if (hold_down >= 8)
            {
                _down_pressed = 1
                hold_down = 6
            }
            if (_down_pressed == 1)
            {
                if (menuc[menu] < menumax)
                {
                    menuc[menu] += 1
                    if (menuc[menu] > (pagemax + 4))
                        pagemax += 1
                }
            }
            hold_down = 0
            _up_pressed = 1
            hold_up += 1
            if (hold_up >= 8)
            {
                _up_pressed = 1
                hold_up = 6
            }
            if (_up_pressed == 1)
            {
                if (menuc[menu] > 0)
                {
                    menuc[menu] -= 1
                    if (menuc[menu] < pagemax)
                        pagemax -= 1
                }
            }
        }
        j = 0
        for (i = pagemax; i < (5 + pagemax); i += 1)
        {
            draw_sprite(spr_heart_ch1, 0, 30, (270 + ((menuc[12] - pagemax) * 40)))
            g = 0
            16777215
            _itempname = weaponname[i]
            if (_itempname == " ")
            {
                _itempname = "--------"
                4210752
            }
            draw_text(60, (260 + (j * 40)), _itempname)
            if (weaponvalue[i] > 1)
                draw_text(300, (260 + (j * 40)), ("$" + string(ceil((weaponvalue[i] / 2)))))
            j += 1
        }
        16777215
        if (menu == 12)
        {
            if (onebuffer < 0)
            {
                if (weaponvalue[menuc[12]] > 1)
                    menu = 16
                else
                    sidemessage2 = 4
                sellvalue = (weaponvalue[menuc[12]] / 2)
                tempmenu = 12
                onebuffer = 2
                with (obj_writer_ch1)
                    // WARNING: Popz'd an empty stack.
            }
            if (twobuffer < 0 && onebuffer < 2)
            {
                sidemessage = 0
                menu = 10
                twobuffer = 2
                with (obj_writer_ch1)
                    // WARNING: Popz'd an empty stack.
            }
        }
        // WARNING: Popz'd an empty stack.
        if (menumax > 1)
        {
            for (i = 0; i <= menumax; i += 1)
            {
                buff = 0
                if (menuc[12] == i)
                    buff += 3
                if (global.weapon[i] == 0)
                    buff -= 1
                draw_rectangle((375 - buff), ((295 + (i * (130 / menumax))) - buff), (377 + buff), ((297 + (i * (130 / menumax))) + buff), false)
            }
        }
    }
    if (menu == 13 || menu == 17)
    {
        16777215
        "mainbig"
        menumax = 11
        if (menu == 13)
        {
            _up_pressed = 0
            _down_pressed = 0
            hold_up = 0
            _down_pressed = 1
            hold_down += 1
            if (hold_down >= 8)
            {
                _down_pressed = 1
                hold_down = 6
            }
            if (_down_pressed == 1)
            {
                if (menuc[menu] < menumax)
                {
                    menuc[menu] += 1
                    if (menuc[menu] > (pagemax + 4))
                        pagemax += 1
                }
            }
            hold_down = 0
            _up_pressed = 1
            hold_up += 1
            if (hold_up >= 8)
            {
                _up_pressed = 1
                hold_up = 6
            }
            if (_up_pressed == 1)
            {
                if (menuc[menu] > 0)
                {
                    menuc[menu] -= 1
                    if (menuc[menu] < pagemax)
                        pagemax -= 1
                }
            }
        }
        j = 0
        for (i = pagemax; i < (5 + pagemax); i += 1)
        {
            draw_sprite(spr_heart_ch1, 0, 30, (270 + ((menuc[13] - pagemax) * 40)))
            g = 0
            16777215
            _itempname = armorname[i]
            if (_itempname == " ")
            {
                _itempname = "--------"
                4210752
            }
            draw_text(60, (260 + (j * 40)), _itempname)
            if (armorvalue[i] > 1)
                draw_text(300, (260 + (j * 40)), ("$" + string(ceil((armorvalue[i] / 2)))))
            j += 1
        }
        16777215
        if (menu == 13)
        {
            if (onebuffer < 0)
            {
                if (armorvalue[menuc[13]] > 1)
                    menu = 17
                else
                    sidemessage2 = 4
                sellvalue = (armorvalue[menuc[13]] / 2)
                tempmenu = 13
                onebuffer = 2
                with (obj_writer_ch1)
                    // WARNING: Popz'd an empty stack.
            }
            if (twobuffer < 0 && onebuffer < 2)
            {
                sidemessage = 0
                menu = 10
                twobuffer = 2
                with (obj_writer_ch1)
                    // WARNING: Popz'd an empty stack.
            }
        }
        // WARNING: Popz'd an empty stack.
        if (menumax > 1)
        {
            for (i = 0; i <= menumax; i += 1)
            {
                buff = 0
                if (menuc[13] == i)
                    buff += 3
                if (global.armor[i] == 0)
                    buff -= 1
                draw_rectangle((375 - buff), ((295 + (i * (130 / menumax))) - buff), (377 + buff), ((297 + (i * (130 / menumax))) + buff), false)
            }
        }
    }
}
if (argument0 == 5)
{
    if (menu == 15)
    {
        if (twobuffer < 0)
        {
            menu = tempmenu
            sidemessage2 = 2
            twobuffer = 2
            onebuffer = 2
        }
        if (onebuffer < 0 && twobuffer < 0)
        {
            if (menuc[15] == 0)
            {
                376
                global.gold += sellvalue
                gml_Script_scr_itemshift_ch1(menuc[11], 0)
                // WARNING: Popz'd an empty stack.
                0
                if (global.item[menuc[11]] == 0)
                {
                    menuc[11] -= 1
                    if (pagemax > 0)
                        pagemax -= 1
                }
                if (itemcount == 12)
                {
                    menu = 10
                    sidemessage = 1
                }
                else
                {
                    menu = 11
                    sidemessage2 = 1
                }
            }
            if (menuc[15] == 1)
            {
                sidemessage2 = 2
                menu = 11
            }
        }
    }
    if (menu == 16)
    {
        if (twobuffer < 0)
        {
            menu = tempmenu
            sidemessage2 = 2
            twobuffer = 2
            onebuffer = 2
        }
        if (onebuffer < 0 && twobuffer < 0)
        {
            if (menuc[16] == 0)
            {
                376
                global.gold += sellvalue
                global.weapon[menuc[12]] = 0
                // WARNING: Popz'd an empty stack.
                0
                if (itemcount == 12)
                {
                    menu = 10
                    sidemessage = 1
                }
                else
                {
                    menu = 12
                    sidemessage2 = 1
                }
            }
            if (menuc[16] == 1)
            {
                sidemessage2 = 2
                menu = 12
            }
        }
    }
    if (menu == 17)
    {
        if (twobuffer < 0)
        {
            menu = tempmenu
            sidemessage2 = 2
            twobuffer = 2
            onebuffer = 2
        }
        if (onebuffer < 0 && twobuffer < 0)
        {
            if (menuc[17] == 0)
            {
                376
                global.gold += sellvalue
                global.armor[menuc[13]] = 0
                // WARNING: Popz'd an empty stack.
                0
                if (itemcount == 12)
                {
                    menu = 10
                    sidemessage = 1
                }
                else
                {
                    menu = 13
                    sidemessage2 = 1
                }
            }
            if (menuc[17] == 1)
            {
                sidemessage2 = 2
                menu = 13
            }
        }
    }
}
return;
