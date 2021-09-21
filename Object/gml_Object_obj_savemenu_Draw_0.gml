xx = gml_Script___view_get(0, 0)
yy = gml_Script___view_get(1, 0)
if (saved == 0)
    time_current = global.time
gml_Script_scr_84_set_draw_font("main")
if (d == 2)
    gml_Script_scr_84_set_draw_font("mainbig")
if (menuno == 0)
{
    if (d == 1)
    {
        draw_set_color(c_white)
        draw_rectangle((50 + xx), (49 + yy), (269 + xx), (135 + yy), false)
        draw_set_color(c_black)
        draw_rectangle(((53 * d) + xx), ((52 * d) + yy), ((266 * d) + xx), ((132 * d) + yy), false)
    }
    else
    {
        gml_Script_scr_darkbox((((54 * d) + xx) - 16), ((49 * d) + yy), (((265 * d) + xx) + 16), (((135 * d) + yy) + (type * 45)))
        draw_set_color(c_black)
        draw_rectangle((((64 * d) + xx) - 16), ((59 * d) + yy), (((255 * d) + xx) + 16), (((125 * d) + yy) + (type * 45)), false)
    }
    draw_set_color(c_white)
    if (xcoord == 2)
        draw_set_color(c_yellow)
    draw_set_halign(fa_left)
    if (!gml_Script_scr_kana_check(name))
        draw_text(((60 * d) + xx), ((60 * d) + yy), string_hash_to_newline(name))
    else
    {
        draw_set_font(fnt_ja_mainbig)
        draw_text(((60 * d) + xx), ((60 * d) + yy), string_hash_to_newline(name))
        if (global.lang != "ja")
            draw_set_font(fnt_mainbig)
    }
    draw_set_halign(fa_right)
    draw_text(((200 * d) + xx), ((60 * d) + yy), string_hash_to_newline(gml_Script_stringsetsubloc("LV ~1", global.chapter, "obj_savemenu_slash_Draw_0_gml_34_0")))
    draw_text(((261 * d) + xx), ((60 * d) + yy), gml_Script_scr_timedisp(time_current))
    draw_set_halign(fa_center)
    gml_Script_draw_text_width(((160 * d) + xx), ((85 * d) + yy), string_hash_to_newline(gml_Script_scr_roomname(room)), 360)
    draw_set_halign(fa_left)
    if (xcoord < 2)
        draw_sprite(heartsprite, 0, ((xx + (71 * d)) + ((xcoord * 90) * d)), ((yy + (114 * d)) + (ycoord * 42)))
    if (xcoord < 2)
    {
        draw_text((xx + (85 * d)), (yy + (110 * d)), string_hash_to_newline(gml_Script_stringsetloc("Save", "obj_savemenu_slash_Draw_0_gml_47_0")))
        draw_text((xx + (175 * d)), (yy + (110 * d)), string_hash_to_newline(gml_Script_stringsetloc("Return", "obj_savemenu_slash_Draw_0_gml_48_0")))
        if (type == 1)
        {
            draw_text((xx + (85 * d)), (yy + (130 * d)), gml_Script_stringsetloc("Storage", "obj_savemenu_slash_Draw_0_gml_52_0_b"))
            if (!haverecruited)
                draw_set_color(c_gray)
            draw_text((xx + (175 * d)), (yy + (130 * d)), gml_Script_stringsetloc("Recruits", "obj_savemenu_slash_Draw_0_gml_54_0"))
        }
    }
    else
        draw_text((xx + (85 * d)), (yy + (110 * d)), string_hash_to_newline(gml_Script_stringsetloc("File saved.", "obj_savemenu_slash_Draw_0_gml_52_0")))
}
else if (menuno == 1)
{
    if (overwrite == 0)
    {
        draw_set_color(c_black)
        draw_set_alpha(0.8)
        draw_rectangle((xx - 10), (yy - 10), ((xx + 640) + 10), ((yy + 480) + 10), false)
        draw_set_alpha(1)
    }
    var yoff = 0
    var wmod = 28
    var mwidth = 520
    var mheight = 105
    var mx = 60
    var my = (12 + yoff)
    gml_Script_scr_darkbox_black((gml_Script_camerax() + mx), (gml_Script_cameray() + my), ((gml_Script_camerax() + mx) + mwidth), ((gml_Script_cameray() + my) + mheight))
    mwidth = 520
    mheight = 321
    mx = 60
    my = (124 + yoff)
    gml_Script_scr_darkbox_black((gml_Script_camerax() + mx), (gml_Script_cameray() + my), ((gml_Script_camerax() + mx) + mwidth), ((gml_Script_cameray() + my) + mheight))
    for (var i = 0; i < 3; i++)
        draw_sprite_ext(spr_textbox_top, 0, ((gml_Script_camerax() + mx) + 14), (((gml_Script_cameray() + 208) + (84 * i)) + yoff), (mwidth * 0.948), 2, 0, c_white, 1)
    draw_set_color(c_white)
    draw_set_halign(fa_center)
    draw_text((gml_Script_camerax() + 320), ((gml_Script_cameray() + 32) + yoff), global.truename)
    draw_set_halign(fa_left)
    draw_text(((gml_Script_camerax() + mx) + 40), ((gml_Script_cameray() + 32) + yoff), string_hash_to_newline(gml_Script_stringsetsubloc("LV ~1", global.chapter, "obj_savemenu_slash_Draw_0_gml_34_0")))
    draw_set_halign(fa_right)
    draw_text(((gml_Script_camerax() + mx) + 483), ((gml_Script_cameray() + 32) + yoff), gml_Script_scr_timedisp(time_current))
    draw_set_halign(fa_center)
    draw_text((gml_Script_camerax() + 320), ((gml_Script_cameray() + 64) + yoff), room_current)
    draw_set_halign(fa_left)
    newfile = gml_Script_stringsetloc("New File", "obj_savemenu_slash_Draw_0_gml_115_0")
    var mspace = 84
    for (i = 0; i < 3; i++)
    {
        draw_set_color(c_white)
        if (mpos == i)
            draw_set_color(c_yellow)
        if (level_file[i] != 0)
        {
            draw_set_halign(fa_left)
            draw_text((((gml_Script_camerax() + mx) + 40) + 24), (((gml_Script_cameray() + my) + 20) + (i * mspace)), string_hash_to_newline(gml_Script_stringsetsubloc("LV ~1", global.chapter, "obj_savemenu_slash_Draw_0_gml_34_0")))
            draw_set_halign(fa_right)
            draw_text(((gml_Script_camerax() + mx) + 483), (((gml_Script_cameray() + my) + 20) + (i * mspace)), gml_Script_scr_timedisp(time_file[i]))
            draw_set_halign(fa_center)
            draw_text((gml_Script_camerax() + 320), (((gml_Script_cameray() + my) + 52) + (i * mspace)), gml_Script_scr_roomname(roome_file[i]))
            if (!gml_Script_scr_kana_check(name_file[i]))
                draw_text((gml_Script_camerax() + 320), (((gml_Script_cameray() + my) + 20) + (i * mspace)), name_file[i])
            else
            {
                draw_set_font(fnt_ja_mainbig)
                draw_text((gml_Script_camerax() + 320), (((gml_Script_cameray() + my) + 20) + (i * mspace)), name_file[i])
                if (global.lang != "ja")
                    draw_set_font(fnt_mainbig)
            }
            draw_set_halign(fa_left)
            draw_set_color(c_white)
        }
        else
        {
            draw_set_halign(fa_center)
            draw_text((gml_Script_camerax() + 320), (((gml_Script_cameray() + my) + 36) + (i * mspace)), newfile)
            draw_set_halign(fa_left)
            draw_set_color(c_white)
        }
    }
    draw_set_halign(fa_center)
    if (mpos == 3)
        draw_set_color(c_yellow)
    returntxt = gml_Script_stringsetloc("Return", "obj_savemenu_slash_Draw_0_gml_48_0")
    draw_text((gml_Script_camerax() + 320), ((gml_Script_cameray() + my) + 270), string_hash_to_newline(returntxt))
    draw_set_halign(fa_left)
    draw_set_color(c_white)
    if (overwrite == 0)
    {
        if (mpos < 3)
        {
            if (level_file[mpos] != 0)
                draw_sprite(heartsprite, 0, ((gml_Script_camerax() + mx) + 32), ((((gml_Script_cameray() + my) + (mspace * mpos)) + 62) - 34))
            else
                draw_sprite(heartsprite, 0, (((gml_Script_camerax() + 320) - (string_width(newfile) / 2)) - 32), ((((gml_Script_cameray() + my) + 36) + (mpos * mspace)) + (string_height(newfile) / 4)))
        }
        else
            draw_sprite(heartsprite, 0, ((gml_Script_camerax() + 320) - string_width(returntxt)), (((gml_Script_cameray() + my) + 270) + (string_height(returntxt) / 4)))
    }
    if (overwrite == 0)
    {
        if gml_Script_down_p()
            mpos++
        if gml_Script_up_p()
            mpos--
        mpos = clamp(mpos, 0, 3)
        if (gml_Script_button1_p() && buffer < 0)
        {
            if (mpos == 3)
            {
                menuno = 0
                buffer = 3
                mpos = global.filechoice
                gml_Script_snd_play(snd_select)
            }
            else if (level_file[mpos] != 0 && mpos != global.filechoice)
            {
                overwrite = 0.5
                buffer = 3
                overcoord = 0
            }
            else
            {
                menuno = 2
                global.filechoice = mpos
                gml_Script_snd_play(snd_save)
                gml_Script_scr_save()
                saved = 1
                xcoord = 2
                buffer = 3
                if (d == 2)
                {
                    name = global.truename
                    love = global.llv
                }
                gml_Script_scr_roomname(room)
                level = global.lv
                time = global.time
                minutes = floor((time / 1800))
                seconds = round((((time / 1800) - minutes) * 60))
                if (seconds == 60)
                    seconds = 59
                if (seconds < 10)
                    seconds = ("0" + string(seconds))
            }
        }
        if (gml_Script_button2_p() && buffer < 0)
        {
            menuno = 0
            buffer = 3
            mpos = global.filechoice
            gml_Script_snd_play(snd_select)
        }
    }
    if (overwrite == 1)
    {
        draw_set_color(c_black)
        draw_set_alpha(0.8)
        draw_rectangle((xx - 10), (yy - 10), ((xx + 640) + 10), ((yy + 480) + 10), false)
        draw_set_alpha(1)
        saved = 2
        gml_Script_scr_darkbox_black((gml_Script_camerax() + 10), (gml_Script_cameray() + 100), ((gml_Script_camerax() + 640) - 10), ((gml_Script_cameray() + 480) - 100))
        overwritetext = gml_Script_stringsetsubloc("Overwrite Slot ~1?", (mpos + 1), "obj_savemenu_slash_Draw_0_gml_215_0")
        draw_set_color(c_white)
        draw_set_halign(fa_center)
        draw_text((gml_Script_camerax() + 320), ((((gml_Script_cameray() + 120) - 4) + 19) - 12), string_hash_to_newline(overwritetext))
        draw_set_color(c_yellow)
        var currentSpace = 70
        var horzspace = 80
        draw_set_halign(fa_left)
        draw_text((gml_Script_camerax() + horzspace), ((((15 + gml_Script_cameray()) + 180) - 30) + currentSpace), string_hash_to_newline(gml_Script_stringsetsubloc("LV ~1", global.chapter, "obj_savemenu_slash_Draw_0_gml_34_0")))
        draw_set_halign(fa_right)
        draw_text(((gml_Script_camerax() + 640) - horzspace), ((((15 + gml_Script_cameray()) + 180) - 30) + currentSpace), gml_Script_scr_timedisp(time_current))
        draw_set_halign(fa_center)
        draw_text((gml_Script_camerax() + 320), (((15 + gml_Script_cameray()) + 180) + currentSpace), room_current)
        if gml_Script_scr_kana_check(name_current)
            draw_set_font(fnt_ja_mainbig)
        draw_text((gml_Script_camerax() + 320), ((((15 + gml_Script_cameray()) + 180) - 30) + currentSpace), name_current)
        if (global.lang == "en")
            draw_set_font(fnt_mainbig)
        draw_set_halign(fa_left)
        draw_set_color(c_white)
        draw_set_color(c_white)
        draw_set_halign(fa_left)
        draw_text((gml_Script_camerax() + horzspace), (((15 + gml_Script_cameray()) + 180) - 30), string_hash_to_newline(gml_Script_stringsetsubloc("LV ~1", global.chapter, "obj_savemenu_slash_Draw_0_gml_34_0")))
        draw_set_halign(fa_right)
        draw_text(((gml_Script_camerax() + 640) - horzspace), (((15 + gml_Script_cameray()) + 180) - 30), gml_Script_scr_timedisp(time_file[mpos]))
        draw_set_halign(fa_center)
        draw_text((gml_Script_camerax() + 320), ((15 + gml_Script_cameray()) + 180), gml_Script_scr_roomname(roome_file[mpos]))
        if gml_Script_scr_kana_check(name_file[mpos])
            draw_set_font(fnt_ja_mainbig)
        draw_text((gml_Script_camerax() + 320), (((15 + gml_Script_cameray()) + 180) - 30), name_file[mpos])
        if (global.lang == "en")
            draw_set_font(fnt_mainbig)
        draw_set_halign(fa_left)
        draw_set_color(c_white)
        savetxt = gml_Script_stringsetloc("Save", "obj_savemenu_slash_Draw_0_gml_47_0")
        returntxt = gml_Script_stringsetloc("Return", "obj_savemenu_slash_Draw_0_gml_48_0")
        if (gml_Script_left_p() || gml_Script_right_p())
            overcoord = (1 - overcoord)
        if (overcoord == 0)
            draw_set_color(c_yellow)
        else
            draw_set_color(c_white)
        draw_text((xx + 170), (((yy + 300) + 12) + 12), string_hash_to_newline(savetxt))
        if (overcoord == 1)
            draw_set_color(c_yellow)
        else
            draw_set_color(c_white)
        draw_text((xx + 350), (((yy + 300) + 12) + 12), string_hash_to_newline(returntxt))
        if (overcoord == 0)
            draw_sprite(heartsprite, 0, 142, (324 + (string_height(savetxt) / 4)))
        else
            draw_sprite(heartsprite, 0, 322, (324 + (string_height(returntxt) / 4)))
        if (gml_Script_button1_p() && buffer < 0)
        {
            if (overcoord == 0)
            {
                menuno = 2
                global.filechoice = mpos
                gml_Script_snd_play(snd_save)
                script_execute(gml_Script_scr_save)
                saved = 1
                xcoord = 2
                buffer = 3
                if (d == 2)
                {
                    name = global.truename
                    love = global.llv
                }
                gml_Script_scr_roomname(room)
                level = global.lv
                time = global.time
                minutes = floor((time / 1800))
                seconds = round((((time / 1800) - minutes) * 60))
                if (seconds == 60)
                    seconds = 59
                if (seconds < 10)
                    seconds = ("0" + string(seconds))
            }
            else
            {
                overwrite = 0
                buffer = 3
                saved = 0
            }
        }
        if (gml_Script_button2_p() && buffer < 0)
        {
            overwrite = 0
            buffer = 3
            saved = 0
        }
    }
    if (overwrite == 0.5)
        overwrite = 1
}
else if (menuno == 2)
{
    draw_set_color(c_black)
    draw_set_alpha(0.8)
    draw_rectangle((xx - 10), (yy - 10), ((xx + 640) + 10), ((yy + 480) + 10), false)
    draw_set_alpha(1)
    yoff = 0
    wmod = 28
    mwidth = 520
    mheight = 105
    mx = 60
    my = (12 + yoff)
    gml_Script_scr_darkbox_black((gml_Script_camerax() + mx), (gml_Script_cameray() + my), ((gml_Script_camerax() + mx) + mwidth), ((gml_Script_cameray() + my) + mheight))
    mwidth = 520
    mheight = 273
    mx = 60
    my = (124 + yoff)
    gml_Script_scr_darkbox_black((gml_Script_camerax() + mx), (gml_Script_cameray() + my), ((gml_Script_camerax() + mx) + mwidth), ((gml_Script_cameray() + my) + mheight))
    for (i = 0; i < 2; i++)
        draw_sprite_ext(spr_textbox_top, 0, ((gml_Script_camerax() + mx) + 14), (((gml_Script_cameray() + 208) + (84 * i)) + yoff), (mwidth * 0.948), 2, 0, c_white, 1)
    draw_set_color(c_yellow)
    draw_set_halign(fa_center)
    draw_text((gml_Script_camerax() + 320), ((gml_Script_cameray() + 32) + yoff), global.truename)
    draw_set_halign(fa_left)
    draw_text(((gml_Script_camerax() + mx) + 40), ((gml_Script_cameray() + 32) + yoff), string_hash_to_newline(gml_Script_stringsetsubloc("LV ~1", global.chapter, "obj_savemenu_slash_Draw_0_gml_34_0")))
    draw_set_halign(fa_right)
    draw_text(((gml_Script_camerax() + mx) + 483), ((gml_Script_cameray() + 32) + yoff), gml_Script_scr_timedisp(time_current))
    draw_set_halign(fa_center)
    draw_text((gml_Script_camerax() + 320), ((gml_Script_cameray() + 64) + yoff), room_current)
    draw_set_halign(fa_left)
    draw_set_color(c_white)
    newfile = gml_Script_stringsetloc("New File", "obj_savemenu_slash_Draw_0_gml_115_0")
    mspace = 84
    for (i = 0; i < 3; i++)
    {
        draw_set_color(c_white)
        if (mpos == i)
            draw_set_color(c_yellow)
        if (mpos != i)
        {
            draw_set_color(0x444444)
            if (level_file[i] != 0)
            {
                draw_set_halign(fa_left)
                draw_text(((gml_Script_camerax() + mx) + 40), (((gml_Script_cameray() + my) + 20) + (i * mspace)), string_hash_to_newline(gml_Script_stringsetsubloc("LV ~1", global.chapter, "obj_savemenu_slash_Draw_0_gml_34_0")))
                draw_set_halign(fa_right)
                draw_text(((gml_Script_camerax() + mx) + 483), (((gml_Script_cameray() + my) + 20) + (i * mspace)), gml_Script_scr_timedisp(time_file[i]))
                draw_set_halign(fa_center)
                draw_text((gml_Script_camerax() + 320), (((gml_Script_cameray() + my) + 52) + (i * mspace)), gml_Script_scr_roomname(roome_file[i]))
                if gml_Script_scr_kana_check(name_file[i])
                    draw_set_font(fnt_ja_mainbig)
                draw_text((gml_Script_camerax() + 320), (((gml_Script_cameray() + my) + 20) + (i * mspace)), name_file[i])
                if (global.lang == "en")
                    draw_set_font(fnt_mainbig)
                draw_set_halign(fa_left)
                draw_set_color(c_white)
            }
            else
            {
                draw_set_halign(fa_center)
                draw_text((gml_Script_camerax() + 320), (((gml_Script_cameray() + my) + 36) + (i * mspace)), newfile)
                draw_set_halign(fa_left)
                draw_set_color(c_white)
            }
        }
        else
        {
            filesaved = gml_Script_stringsetloc("File Saved", "obj_savemenu_slash_Draw_0_gml_371_0")
            draw_set_halign(fa_center)
            draw_text((gml_Script_camerax() + 320), (((gml_Script_cameray() + my) + 36) + (i * mspace)), filesaved)
            draw_set_halign(fa_left)
            draw_set_color(c_white)
        }
    }
    draw_set_halign(fa_center)
    draw_set_halign(fa_left)
    draw_set_color(c_white)
    if (gml_Script_button1_p() || gml_Script_button2_p())
    {
        if (buffer < 0)
        {
            global.interact = 0
            with (obj_mainchara)
                onebuffer = 3
            instance_destroy()
        }
    }
}
