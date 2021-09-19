if (hurtstate2 == 1)
{
    draw_sprite_ext(spr_hatguy_dance, 0, x, y, 2, 2, 0, c_white, 1)
    return;
}
if (state == 3)
    gml_Script_scr_enemy_drawhurt_generic()
if (state == 0)
{
    if dancing
    {
        siner += 0.16666666666666666
        gml_Script_draw_monster_body_part(1752, siner, x, y)
        musicalnotetimer++
        if (musicalnotetimer == 14)
        {
            musicalnotetimer = 0
            anim = gml_Script_instance_create((((x + (sprite_width / 2)) - 20) + random(40)), y, obj_afterimage)
            anim.sprite_index = spr_musicalbattlenote1
            anim.depth = (depth - 5)
            anim.image_xscale = 2
            anim.image_yscale = 2
            anim.direction = 270
            anim.gravity = -0.2
            anim.hspeed = (random_range(0.1, 0.8) * choose(1, -1))
        }
    }
    else
        gml_Script_scr_enemy_drawidle_generic(0.16666666666666666)
}
if (becomeflash == false)
    flash = false
becomeflash = false
draw_set_color(c_white)
if (global.bmenuno == 1 || global.bmenuno == 3 || global.bmenuno == 11 || global.bmenuno == 12 || global.bmenuno == 13)
{
    siner2++
    var xoffset = 0
    var yoffset = 0
    if (global.charturn > 0 && global.bmenuno == 13)
    {
        xoffset = 140
        yoffset = 6
    }
    if (global.myfight == 0)
    {
        gml_Script_scr_84_set_draw_font("mainbig")
        if (danceCounter == 1)
        {
            draw_text_ext_transformed(((gml_Script___view_get(0, 0) + 258) + xoffset), (((gml_Script___view_get(1, 0) + 369) + 60) + yoffset), gml_Script_stringsetloc("Dancing!", "obj_hatguy_enemy_slash_Draw_0_gml_60_0"), 9999, 9999, 0.7, 1, 0)
            draw_sprite(spr_musical_dancing_ui, 0, (((gml_Script___view_get(0, 0) + 228) + xoffset) + (sin((siner2 / 4)) * 3)), (((gml_Script___view_get(1, 0) + 386) + yoffset) + 60))
        }
        else if (danceCounter == 2)
        {
            draw_text_ext_transformed(((gml_Script___view_get(0, 0) + 258) + xoffset), (((gml_Script___view_get(1, 0) + 369) + yoffset) + 60), gml_Script_stringsetloc("2 Turns!", "obj_hatguy_enemy_slash_Draw_0_gml_65_0"), 9999, 9999, 0.7, 1, 0)
            draw_sprite(spr_musical_dancing_ui, 0, (((gml_Script___view_get(0, 0) + 228) + xoffset) + (sin((siner2 / 0.8)) * 3)), (((gml_Script___view_get(1, 0) + 386) + yoffset) + 60))
        }
        else
        {
            draw_text(((gml_Script___view_get(0, 0) + 258) + xoffset), (((gml_Script___view_get(1, 0) + 369) + yoffset) + 60), gml_Script_stringsetloc("Not Dancing", "obj_hatguy_enemy_slash_Draw_0_gml_70_0"))
            draw_sprite(spr_musical_notdancing_ui, 0, (((gml_Script___view_get(0, 0) + 228) + xoffset) + (sin((siner2 / 10)) * 3)), (((gml_Script___view_get(1, 0) + 386) + yoffset) + 60))
        }
    }
}
