if (454 && obj_tm_whip_animation.visible == true)
    return;
if (state == 3)
    // WARNING: Popz'd an empty stack.
if (state == 0)
{
    if (flash == true)
        fsiner++
    var mercy = global.mercymod[myself] >= global.mercymax[myself]
    timer += 1.5
    var tailsprite = (mercy ? sparesprite[2] : sprite[2])
    gml_Script_draw_monster_body_part_ext(tailsprite, 0, (x + xOffset[2]), (y + yOffset[2]), 2, 2, ((-sin((timer / 6))) * 10), 16777215, image_alpha)
    var handSprite = (mercy ? sparesprite[4] : sprite[4])
    gml_Script_draw_monster_body_part_ext(handSprite, 0, ((x + xOffset[4]) + (sin((timer / 6)) * 2)), ((y + yOffset[4]) + (sin((timer / 6)) * 2)), 2, 2, 0, 16777215, image_alpha)
    var whipSprite = (mercy ? sparesprite[3] : sprite[3])
    gml_Script_draw_monster_body_part_ext(whipSprite, 0, ((x + xOffset[3]) + (cos((timer / 6)) * 2)), ((y + yOffset[3]) + (sin((timer / 6)) * 2)), 2, 2, (sin((timer / 6)) * 15), 16777215, image_alpha)
    var legSprite = (mercy ? sparesprite[5] : sprite[5])
    gml_Script_draw_monster_body_part_ext(legSprite, 0, ((x + xOffset[5]) + (sin((timer / 6)) * 0)), (y + yOffset[5]), 2, 2, 0, 16777215, image_alpha)
    var bodySprite = (mercy ? sparesprite[1] : sprite[1])
    gml_Script_draw_monster_body_part_ext(bodySprite, 0, (x + xOffset[1]), ((y + yOffset[1]) + (sin((timer / 6)) * 2)), 2, 2, 0, 16777215, image_alpha)
    var headSprite = (mercy ? sparesprite[0] : sprite[0])
    gml_Script_draw_monster_body_part_ext(headSprite, 0, (x + xOffset[0]), ((y + yOffset[0]) + (sin((timer / 6)) * 3)), 2, 2, (sin((timer / 6)) * 10), 16777215, image_alpha)
}
if (becomeflash == false)
    flash = false
becomeflash = false
