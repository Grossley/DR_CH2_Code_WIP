if (init == 1)
{
    init = 2
    input_timer = 0
}
if 628
{
    if (obj_heart.color == 0x000001)
    {
        if (con < 19)
        {
            var presstext = gml_Script_stringsetloc("PRESS ", "obj_ch2_sceneex2_special_slash_Draw_0_gml_16_0")
            if (!589)
                input_timer++
            else
                input_timer = 0
        }
        if (con >= 19)
        {
            presstext = gml_Script_stringsetloc("HOLD  ", "obj_ch2_sceneex2_special_slash_Draw_0_gml_23_0")
            var bigcheck = 0
            with (obj_yheart_shot)
            {
                if (big == 1)
                    bigcheck = 1
            }
            if (obj_heart.z_hold >= 40)
                presstext = gml_Script_stringsetloc("RELEASE ", "obj_ch2_sceneex2_special_slash_Draw_0_gml_27_0")
            if (bigcheck == 0)
                input_timer++
            else
                input_timer = 0
        }
    }
    if (input_timer >= 240)
    {
        16777215
        "main"
        if (global.is_console || obj_gamecontroller.gamepad_active)
        {
            if (global.lang == "en")
            {
                (((input_timer / 8) * 0.1) + 0.8)
                draw_sprite_ext(gml_Script_scr_getbuttonsprite(global.input_g[4], 0), 0, (obj_heart.x + 26), (obj_heart.y - 26), 2, 2, 0, c_white, 1)
                draw_text((obj_heart.x - 30), (obj_heart.y - 20), presstext)
            }
            else
            {
                (((input_timer / 8) * 0.1) + 0.8)
                draw_sprite_ext(gml_Script_scr_getbuttonsprite(global.input_g[4], 0), 0, (obj_heart.x - 26), (obj_heart.y - 32), 2, 2, 0, c_white, 1)
                draw_text((obj_heart.x + 8), (obj_heart.y - 26), presstext)
            }
        }
        else
        {
            var buttontext = gml_Script_stringsetsubloc("~1", gml_Script_scr_get_input_name(4), "obj_ch2_sceneex2_special_slash_Draw_0_gml_39_0")
            (((input_timer / 8) * 0.1) + 0.8)
            draw_text((obj_heart.x - 30), (obj_heart.y - 20), (presstext + buttontext))
        }
        1
    }
}
