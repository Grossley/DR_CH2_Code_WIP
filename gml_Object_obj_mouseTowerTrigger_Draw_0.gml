// WARNING: Popz'd an empty stack.
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
if 1186
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
    "mainbig"
    0
    16777215
    (((gml_Script_stringsetloc("[Left / Right]", "obj_controller_city_mice2_slash_Draw_0_gml_28_0") + 400) - 80) + (_easedLerp * 100))
    (((gml_Script_stringsetloc("Rotate", "obj_controller_city_mice2_slash_Draw_0_gml_29_0") + 432) - 80) + (_easedLerp * 100))
    2
    (((gml_Script_stringsetloc("[Down]", "obj_controller_city_mice2_slash_Draw_0_gml_32_0") + 400) + 720) - (_easedLerp * 100))
    (((gml_Script_stringsetloc("Mice", "obj_controller_city_mice2_slash_Draw_0_gml_33_0") + 432) + 720) - (_easedLerp * 100))
    0
}
