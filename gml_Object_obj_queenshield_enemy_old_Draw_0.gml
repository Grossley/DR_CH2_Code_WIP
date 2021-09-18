shieldsiner++
if (shieldhurt != 2)
    shieldalpha = (0.7 + (sin((shieldsiner / 7)) * 0.05))
(shieldalpha * 0.8)
if (image_yscale >= 0.1)
{
    65280
    if (appearcon == 2 && sprite_index == spr_queenshield_center_origin)
    {
        draw_triangle(queenhandx, queenhandy, (x + 46), ((y + 3) - (shieldheight * (image_yscale / 4))), (x + 45), ((y - 3) + (shieldheight * (image_yscale / 3))), 1)
        draw_triangle_colour(queenhandx, queenhandy, (x + 46), ((y + 3) - (shieldheight * (image_yscale / 4))), (x + 45), ((y - 3) + (shieldheight * (image_yscale / 3))), 0, 65280, 65280, 0)
    }
    else if (appearcon == 2)
    {
        draw_triangle(queenhandx, queenhandy, (x + 81), (y + 63), (x + 81), (((y - 14) - 3) + (shieldheight * image_yscale)), 1)
        draw_triangle_colour(queenhandx, queenhandy, (x + 81), (y + 63), (x + 81), (((y - 14) - 3) + (shieldheight * image_yscale)), 0, 65280, 65280, 0)
    }
    else if (sprite_index != spr_queenshield)
    {
        draw_triangle(queenhandx, queenhandy, (x + 46), ((y + 3) - (shieldheight * (image_yscale / 3))), (x + 45), ((y - 3) + (shieldheight * (image_yscale / 2))), 1)
        draw_triangle_colour(queenhandx, queenhandy, (x + 46), ((y + 3) - (shieldheight * (image_yscale / 3))), (x + 45), ((y - 3) + (shieldheight * (image_yscale / 2))), 0, 65280, 65280, 0)
    }
    else
    {
        draw_triangle(queenhandx, queenhandy, (x + 79), (y + 49), (x + 79), ((y - 3) + (shieldheight * image_yscale)), 1)
        draw_triangle_colour(queenhandx, queenhandy, (x + 79), (y + 49), (x + 79), ((y - 3) + (shieldheight * image_yscale)), 0, 65280, 65280, 0)
    }
    1
}
y += (sin((shieldsiner / 6)) * 0.5)
var shieldindex = 0
var hptype = 0
if ((obj_queen_enemy.shieldhp / obj_queen_enemy.shieldmaxhp) <= (obj_queen_enemy.shieldacthp / obj_queen_enemy.shieldactmaxhp))
{
    hptype = 0
    repeat (10)
    {
        if (obj_queen_enemy.shieldhp < shieldhpgradual)
            shieldhpgradual -= 1
    }
    repeat (obj_queen_enemy.phase - 1)
    {
        repeat (10)
        {
            if (obj_queen_enemy.shieldhp > shieldhpgradual)
                shieldhpgradual += 1
        }
    }
    var wineheight = lerp(shieldheight, 0, (shieldhpgradual / obj_queen_enemy.shieldmaxhp))
}
else
{
    hptype = 1
    if (shieldhpgradual > obj_queen_enemy.shieldactmaxhp)
        shieldhpgradual = obj_queen_enemy.shieldactmaxhp
    repeat (10)
    {
        if (obj_queen_enemy.shieldacthp < shieldhpgradual)
            shieldhpgradual -= 0.01
    }
    repeat (obj_queen_enemy.phase - 1)
    {
        repeat (10)
        {
            if (obj_queen_enemy.shieldacthp > shieldhpgradual)
                shieldhpgradual += 0.01
        }
    }
    wineheight = lerp(shieldheight, 0, (shieldhpgradual / obj_queen_enemy.shieldactmaxhp))
}
if (appearcon == 1)
{
    image_xscale = 4
    image_yscale = 0
    appearcon = 1.1
    shieldhpgradual = obj_queen_enemy.shieldhp
    if (sprite_index != spr_queenshield_center_origin)
    {
        x += 34
        y += 140
        sprite_index = spr_queenshield_center_origin
    }
}
if (appearcon == 1.1)
{
    if (image_yscale < 2)
    {
        appeartimer++
        image_yscale = lerp(0, 2, (appeartimer / 10))
        image_xscale = lerp(4, 2, (appeartimer / 10))
    }
    else
    {
        appearcon = 0
        appeartimer = 0
        shieldhpgradual = obj_queen_enemy.shieldmaxhp
        if (sprite_index != spr_queenshield)
        {
            x -= 34
            y -= 140
            sprite_index = spr_queenshield
        }
    }
}
if (appearcon == 2)
{
    if (image_yscale > 0)
    {
        appeartimer++
        image_yscale = lerp(2, 0, (appeartimer / 10))
        image_xscale = lerp(2, 4, (appeartimer / 10))
        if (sprite_index != spr_queenshield_center_origin)
        {
            x += 34
            y += 140
            sprite_index = spr_queenshield_center_origin
        }
    }
    else
    {
        image_xscale = 0
        image_yscale = 0
        appearcon = 0
        appeartimer = 0
    }
}
if (shaketimer > 0)
{
    x = ((xstart - shaketimer) + (shaketimer * 2))
    y = ((ystart - shaketimer) + (shaketimer * 2))
    shaketimer--
}
if (shieldhurt == 1)
{
    shieldindex = 2
    shieldx = ((shieldhurttimer - random(shieldhurttimer)) * 2)
    shieldhurttimer--
    if (shieldhurttimer <= 0)
        shieldhurt = 0
}
if (shieldhurt == 2)
{
    1
    // WARNING: Popz'd an empty stack.
}
if (appearcon != 0)
    draw_sprite_ext(sprite_index, 1, (x + 7), (y + 3), image_xscale, image_yscale, 0, c_white, shieldalpha)
else
{
    draw_sprite_part_ext(sprite_index, shieldindex, 0, wineheight, sprite_width, (shieldheight - wineheight), (x + shieldx), (y + (wineheight * image_yscale)), image_xscale, image_yscale, c_white, shieldalpha)
    draw_sprite_part_ext(sprite_index, (shieldindex + 1), 0, 0, sprite_width, wineheight, (x + shieldx), y, image_xscale, image_yscale, c_white, shieldalpha)
    if ((shieldhpgradual <= 5 && hptype == 0) || (shieldhpgradual < 1 && hptype == 1))
    {
        imabouttobreak_siner += 0.5
        imabouttobreak_alpha = (0.1 + (sin(imabouttobreak_siner) / 6))
        gml_Script_d3d_set_fog(true, c_white, 0, 1)
        draw_sprite_part_ext(sprite_index, shieldindex, 0, wineheight, sprite_width, (shieldheight - wineheight), (x + shieldx), (y + (wineheight * image_yscale)), image_xscale, image_yscale, c_white, imabouttobreak_alpha)
        draw_sprite_part_ext(sprite_index, (shieldindex + 1), 0, 0, sprite_width, wineheight, (x + shieldx), y, image_xscale, image_yscale, c_white, imabouttobreak_alpha)
        gml_Script_d3d_set_fog(false, c_black, 0, 0)
    }
}
