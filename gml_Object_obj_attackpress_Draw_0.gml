var _temp_local_var_1, _temp_local_var_2, _temp_local_var_10, _temp_local_var_21;
maxdelaytimer += 1
if (spelluse == 1)
{
    if 0
    {
        for (xyz = 0; xyz < 3; xyz += 1)
        {
            if (maxdelaytimer == spelldelay[xyz])
            {
                if (charitem[xyz] == 1)
                {
                    var _temp_local_var_1 = global.charinstance[xyz]
                    state = 4
                }
                if (charspell[xyz] == 1)
                {
                    var _temp_local_var_2 = global.charinstance[xyz]
                    state = 2
                }
            }
        }
    }
}
if (maxdelaytimer >= maxdelay)
    active = true
if (active == true)
{
    for (i = 0; i < 3; i += 1)
    {
        if (havechar[0] == true || havechar[1] == true || havechar[2] == true)
        {
            bcolor
            if (i == 1 || i == 2)
                draw_rectangle((x + 77), (y + (38 * i)), (x + 300), ((y + (38 * i)) + 1), false)
        }
        if (global.char[i] != 0 && global.charauto[global.char[i]] == 0 && havechar[i] == true)
        {
            bcolor
            j = global.char[i]
            fullbox = 0
            if (j == 1)
            {
                16711680
                if (pressbuffer[1] > 0)
                    merge_color(c_blue, c_white, (pressbuffer[1] / 5))
            }
            if (j == 2)
            {
                8388736
                if (pressbuffer[2] > 0)
                    merge_color(c_purple, c_white, (pressbuffer[2] / 5))
            }
            if (j == 3)
            {
                32768
                if (pressbuffer[3] > 0)
                    merge_color(c_green, c_white, (pressbuffer[3] / 5))
            }
            if (j == 4)
            {
                65535
                if (pressbuffer[2] > 0)
                    merge_color(c_yellow, c_white, (pressbuffer[2] / 5))
            }
            draw_rectangle((x + 78), ((y + (38 * i)) + 1), ((x + 80) + (15 * boltspeed)), ((y + (38 * i)) + 36), true)
            draw_rectangle((x + 79), ((y + (38 * i)) + 2), (((x + 80) + (15 * boltspeed)) - 1), ((y + (38 * i)) + 35), true)
            draw_sprite(spr_pressfront, (j - 1), x, (y + (38 * i)))
            if (global.flag[13] == 0)
                draw_sprite(spr_pressfront_b, 0, x, (y + (38 * i)))
            if (global.flag[13] == 1)
                draw_sprite(spr_pressfront_b, i, x, (y + (38 * i)))
            draw_sprite(spr_pressspot, (j - 1), (x + 80), (y + (38 * i)))
        }
    }
    boltcount[0] = 0
    boltcount[1] = 0
    boltcount[2] = 0
    if (my_method == 1)
    {
        for (i = 0; i < bolttotal; i += 1)
        {
            offset = boltchar[i]
            if ((boltframe[i] - boltx) < -5)
                boltalive[i] = 0
            boltalpha = 1
            if ((boltframe[i] - boltx) < 0)
                boltalpha = (1 + ((boltframe[i] - boltx) / 3))
            else if (imagetimer == 0 && boltalive[i] == 1)
            {
                img = gml_Script_instance_create((((x + 80) + (boltframe[i] * boltspeed)) - (boltx * boltspeed)), (y + (38 * offset)), obj_afterimage)
                var _temp_local_var_10 = img
                sprite_index = spr_attackspot
                image_alpha = 0.4
            }
            if (boltalive[i] == 1)
            {
                draw_sprite_ext(spr_attackspot, 0, (((x + 80) + (boltframe[i] * boltspeed)) - (boltx * boltspeed)), (y + (38 * offset)), 1, 1, 0, c_white, boltalpha)
                boltcount[boltchar[i]] += 1
            }
        }
        for (i = 0; i < 3; i += 1)
        {
            if (boltcount[i] == 0 && havechar[i] == true && attacked[i] == false)
            {
                attacked[i] = true
                target = i
                1
            }
        }
    }
    if 0
    {
        if (global.flag[13] == 1)
        {
            if (havechar[0] == true)
                0
            if (havechar[1] == true)
                1
            if (havechar[2] == true)
                2
        }
        else
            // WARNING: Popz'd an empty stack.
    }
    else
    {
        fakefade = 1
        if (posttimer < (timermax - 35))
            posttimer = (timermax - 34)
    }
    imagetimer += 1
    boltx += 1
    pressbuffer[0] -= 1
    pressbuffer[1] -= 1
    pressbuffer[2] -= 1
    if (imagetimer > 1)
        imagetimer = 0
    goahead = false
    if (attacked[0] == true || havechar[0] == false)
    {
        if (attacked[1] == true || havechar[1] == false)
        {
            if (attacked[2] == true || havechar[2] == false)
                goahead = true
        }
    }
    if 0
        goahead = true
    if (goahead == true)
    {
        posttimer += 1
        if (posttimer > (timermax - 35) ? (haveauto == true ? (autoed == false ? 0 : 0) : 0) : 0)
        {
            global.charinstance[sus].points = 160
            if (global.automiss[global.chartarget[sus]] == true)
                global.charinstance[sus].points = 0
            var _temp_local_var_21 = global.charinstance[sus]
            state = 1
            attacktimer = 0
            is_auto_susie = true
        }
        if (posttimer > timermax)
        {
            fade = 1
            with (obj_heroparent)
            {
                if (state == 1)
                    state = 0
                attacked = false
                itemed = false
            }
            techwon = false
            if (global.charinstance[sus] == 0)
                techwon = true
            if (techwon == true)
                // WARNING: Popz'd an empty stack.
            if (techwon == false)
            {
                global.mnfight = 1
                global.myfight = -1
            }
        }
    }
    if (fade == 1 || fakefade == 1)
    {
        fadeamt += 0.08
        0
        fadeamt
        draw_rectangle((x - 1), y, (x + 640), (y + 300), false)
        1
        if (fade == 1)
        {
            if (fadeamt > 1)
                // WARNING: Popz'd an empty stack.
        }
    }
}
