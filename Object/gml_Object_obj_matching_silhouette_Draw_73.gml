if (target_char == noone)
    return;
if (init == 0)
{
    if instance_exists(obj_caterpillarchara)
    {
        second_char = obj_caterpillarchara
        second_sprite = obj_caterpillarchara.sprite_index
    }
    depth = 0
}
if copy_sprite
{
    sprite_index = target_char.sprite_index
    image_index = target_char.image_index
}
else if (target_char.sprite_index == target_char.usprite)
    sprite_index = usprite
else if (target_char.sprite_index == target_char.dsprite)
    sprite_index = dsprite
else if (target_char.sprite_index == target_char.lsprite)
    sprite_index = lsprite
else if (target_char.sprite_index == target_char.rsprite)
    sprite_index = rsprite
else
    sprite_index = target_char.sprite_index
if gml_Script_i_ex(second_char)
{
    if (second_char.sprite_index == second_char.usprite)
        second_sprite = spr_noelle_walk_up_lw
    else if (second_char.sprite_index == second_char.dsprite)
        second_sprite = spr_noelle_walk_down_lw
    else if (second_char.sprite_index == second_char.lsprite)
        second_sprite = spr_noelle_walk_left_lw
    else if (second_char.sprite_index == second_char.rsprite)
        second_sprite = spr_noelle_walk_right_lw
    else
        second_sprite = second_char.sprite_index
}
draw_set_color(0xF0882E)
draw_rectangle((298 - (gml_Script_camerax() / 4)), 40, (402 - (gml_Script_camerax() / 4)), 480, false)
draw_rectangle((598 - (gml_Script_camerax() / 4)), 80, (702 - (gml_Script_camerax() / 4)), 480, false)
draw_set_color(c_black)
draw_rectangle((300 - (gml_Script_camerax() / 4)), 42, (400 - (gml_Script_camerax() / 4)), 480, false)
draw_rectangle((600 - (gml_Script_camerax() / 4)), 82, (700 - (gml_Script_camerax() / 4)), 480, false)
draw_set_color(c_white)
gpu_set_blendenable(0)
gpu_set_colorwriteenable(0, 0, 0, 1)
draw_set_alpha(0)
0
draw_set_alpha(1)
draw_rectangle((300 - (gml_Script_camerax() / 4)), 0, (400 - (gml_Script_camerax() / 4)), 480, false)
draw_rectangle((600 - (gml_Script_camerax() / 4)), 0, (700 - (gml_Script_camerax() / 4)), 480, false)
gpu_set_blendenable(1)
gpu_set_colorwriteenable(1, 1, 1, 1)
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha)
gpu_set_alphatestenable(1)
var _temp_local_var_1 = 0
var _temp_local_var_2 = (obj_sneo_friedpipis).room_height.room_width
if ((!gml_Script_i_ex(second_char)) || (target_char.y - 18) < second_char.y)
{
    gml_Script_d3d_set_fog(true, color, 0, 1)
    if outline
    {
        draw_sprite_ext(sprite_index, target_char.image_index, (target_char.x - 2), target_char.y, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1)
        draw_sprite_ext(sprite_index, target_char.image_index, (target_char.x + 2), target_char.y, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1)
        draw_sprite_ext(sprite_index, target_char.image_index, target_char.x, (target_char.y - 2), target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1)
        draw_sprite_ext(sprite_index, target_char.image_index, target_char.x, (target_char.y + 2), target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1)
        gml_Script_d3d_set_fog(true, c_black, 0, 1)
    }
    draw_sprite_ext(sprite_index, target_char.image_index, target_char.x, target_char.y, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1)
}
gml_Script_d3d_set_fog(true, c_yellow, 0, 1)
if gml_Script_i_ex(second_char)
{
    if outline
    {
        draw_sprite_ext(second_sprite, second_char.image_index, (second_char.x - 2), second_char.y, second_char.image_xscale, second_char.image_yscale, 0, image_blend, 1)
        draw_sprite_ext(second_sprite, second_char.image_index, (second_char.x + 2), second_char.y, second_char.image_xscale, second_char.image_yscale, 0, image_blend, 1)
        draw_sprite_ext(second_sprite, second_char.image_index, second_char.x, (second_char.y - 2), second_char.image_xscale, second_char.image_yscale, 0, image_blend, 1)
        draw_sprite_ext(second_sprite, second_char.image_index, second_char.x, (second_char.y + 2), second_char.image_xscale, second_char.image_yscale, 0, image_blend, 1)
        gml_Script_d3d_set_fog(true, c_black, 0, 1)
    }
    draw_sprite_ext(second_sprite, second_char.image_index, second_char.x, second_char.y, second_char.image_xscale, second_char.image_yscale, 0, image_blend, 1)
    if ((target_char.y - 18) >= second_char.y)
    {
        gml_Script_d3d_set_fog(true, color, 0, 1)
        if outline
        {
            draw_sprite_ext(sprite_index, target_char.image_index, (target_char.x - 2), target_char.y, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1)
            draw_sprite_ext(sprite_index, target_char.image_index, (target_char.x + 2), target_char.y, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1)
            draw_sprite_ext(sprite_index, target_char.image_index, target_char.x, (target_char.y - 2), target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1)
            draw_sprite_ext(sprite_index, target_char.image_index, target_char.x, (target_char.y + 2), target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1)
            gml_Script_d3d_set_fog(true, c_black, 0, 1)
        }
        draw_sprite_ext(sprite_index, target_char.image_index, target_char.x, target_char.y, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1)
        gpu_set_alphatestenable(0)
    }
}
gml_Script_d3d_set_fog(false, c_black, 0, 0)
gpu_set_alphatestenable(0)
gpu_set_blendmode(bm_normal)
