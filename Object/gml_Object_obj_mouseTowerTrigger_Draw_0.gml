draw_self()
if (rotate == 1)
{
    image_index = 0
    if (left == 1)
        draw_sprite_ext(spr_rotationController_directions, 0, (x + 6), (y + 20), 2, 2, 0, c_white, 1)
    if (right == 1)
        draw_sprite_ext(spr_rotationController_directions, 2, (x + 6), (y + 20), 2, 2, 0, c_white, 1)
    if (down == 1)
        draw_sprite_ext(spr_rotationController_directions, 1, (x + 6), (y + 20), 2, 2, 0, c_white, 1)
}
else
    image_index = 1
if (rotate == 1 && blocked == 0)
    inUse = 1
else
    inUse = 0
if gml_Script_i_ex(1186)
{
    if (obj_controller_city_mice3.micescore > 2)
        inUse = 0
}
if (instructionLerp > 0 || inUse)
{
    if (instructionLerp < 1 && inUse)
        instructionLerp += 0.1
    else if (!inUse)
        instructionLerp -= 0.1
    var _easedLerp = gml_Script_scr_ease_out(instructionLerp, 3)
    gml_Script_scr_84_set_draw_font("mainbig")
    draw_set_halign(fa_left)
    draw_set_color(c_white)
    gml_Script_scr_84_draw_text_outline(((gml_Script_camerax() - 80) + (_easedLerp * 100)), (gml_Script_cameray() + 400), gml_Script_stringsetloc("[Left / Right]", "obj_controller_city_mice2_slash_Draw_0_gml_28_0"))
    gml_Script_scr_84_draw_text_outline(((gml_Script_camerax() - 80) + (_easedLerp * 100)), (gml_Script_cameray() + 432), gml_Script_stringsetloc("Rotate", "obj_controller_city_mice2_slash_Draw_0_gml_29_0"))
    draw_set_halign(fa_right)
    gml_Script_scr_84_draw_text_outline(((gml_Script_camerax() + 720) - (_easedLerp * 100)), (gml_Script_cameray() + 400), gml_Script_stringsetloc("[Down]", "obj_controller_city_mice2_slash_Draw_0_gml_32_0"))
    gml_Script_scr_84_draw_text_outline(((gml_Script_camerax() + 720) - (_easedLerp * 100)), (gml_Script_cameray() + 432), gml_Script_stringsetloc("Mice", "obj_controller_city_mice2_slash_Draw_0_gml_33_0"))
    draw_set_halign(fa_left)
}
