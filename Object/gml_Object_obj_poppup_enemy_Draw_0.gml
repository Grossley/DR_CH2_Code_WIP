if (state == 3)
{
    gml_Script_scr_enemyhurt_tired_after_damage(0.5)
    gml_Script_scr_enemy_drawhurt_generic()
}
var imageSpeed = animspeed
gml_Script_scr_enemy_drawidle_generic(imageSpeed)
if cloning
{
    cloneTimer = clamp((cloneTimer + 0.25), 0, 1)
    gml_Script_draw_sprite_ext_flash(thissprite, siner, x, y, image_xscale, image_yscale, image_angle, image_blend, cloneTimer)
}
if ((!cloning) && cloneTimer > 0)
{
    cloneTimer = clamp((cloneTimer - 0.25), 0, 1)
    gml_Script_draw_sprite_ext_flash(thissprite, siner, x, y, image_xscale, image_yscale, image_angle, image_blend, cloneTimer)
}
if (becomeflash == false)
    flash = false
becomeflash = false
if (actcon == 20.5 && blockTimer == 1)
{
    b = (alarm[4] * 3.56)
    draw_rectangle_color((gml_Script_camerax() + 200), (gml_Script_cameray() + 290), ((gml_Script_camerax() + 200) + b), (gml_Script_cameray() + 300), c_aqua, c_aqua, c_aqua, c_aqua, 0)
    draw_sprite_ext(spr_poppup_hourglass, 1, (gml_Script_camerax() + 200), (gml_Script_cameray() + 295), 2, 2, 0, c_white, image_alpha)
}
