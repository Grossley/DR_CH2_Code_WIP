if (fresh == false)
{
    image_alpha = 1
    if (skipsound == 0)
        snd_play(snd_petrify)
    if (global.flag[55] != 0 && global.flag[56] != 0)
        returntoxy = 1
    fresh = 2
}
if (fresh == true)
{
    image_alpha = 0
    scr_lerpvar_instance(id, "image_alpha", 0, 1, 2)
    timer = 1
    fresh = 2
    if (depth < 1000)
        scr_depth_alt()
    if (skipsolid == 0)
        mysolid = scr_create_hitbox_solid()
}
if (global.fighting == false && fresh == 2)
{
    fresh = 3
    if (returntoxy == 1)
    {
        fresh = 5
        remx = global.flag[55]
        remy = global.flag[56]
        if (sprite_index == spr_virovirokun_hurt && room == room_dw_city_big_1)
        {
            remx = 224
            remy = 72
        }
        if (sprite_index == spr_virovirokun_hurt && room == room_dw_city_roadblock)
        {
            remx = 1000
            remy = 588
        }
        global.flag[55] = 0
        global.flag[56] = 0
        if (remx == 0)
            instance_destroy()
    }
}
if (fresh == 5)
{
    image_alpha -= 0.2
    if (image_alpha < 0)
        fresh = 6
}
if (fresh == 6)
{
    x = remx
    y = remy
    if (depth < 1000)
        scr_depth_alt()
    if (image_alpha < 1)
        image_alpha += 0.2
}
draw_self()
if (timer < 1)
    timer += 0.05
var t = ((sprite_height / 2) - (timer * (sprite_height / 2)))
d3d_set_fog(true, specialcolor, 0, 0)
yoffset = (-(sprite_get_yoffset(sprite_index) * image_yscale))
xoffset = (-(sprite_get_xoffset(sprite_index) * image_xscale))
draw_sprite_part_ext(sprite_index, image_index, 0, t, sprite_width, (sprite_height - t), ((x - 2) + xoffset), (((y - 2) + (t * 2)) + yoffset), image_xscale, image_yscale, c_blue, (image_alpha * 0.8))
draw_sprite_part_ext(sprite_index, image_index, 0, t, sprite_width, (sprite_height - t), ((x + 2) + xoffset), (((y - 2) + (t * 2)) + yoffset), image_xscale, image_yscale, c_blue, (image_alpha * 0.4))
draw_sprite_part_ext(sprite_index, image_index, 0, t, sprite_width, (sprite_height - t), ((x - 2) + xoffset), (((y + 2) + (t * 2)) + yoffset), image_xscale, image_yscale, c_blue, (image_alpha * 0.4))
draw_sprite_part_ext(sprite_index, image_index, 0, t, sprite_width, (sprite_height - t), ((x + 2) + xoffset), (((y + 2) + (t * 2)) + yoffset), image_xscale, image_yscale, c_blue, (image_alpha * 0.8))
d3d_set_fog(false, c_white, 0, 0)
draw_set_blend_mode(1)
draw_sprite_part_ext(sprite_index, image_index, 0, t, sprite_width, (sprite_height - t), (x + xoffset), ((y + (t * 2)) + yoffset), image_xscale, image_yscale, specialcolor, (image_alpha * 0.4))
draw_set_blend_mode(0)
if (room == room_dw_city_berdly)
{
    timer++
    if (timer > 60)
        image_alpha = lerp(image_alpha, 0, 0.1)
    if (image_alpha == 0)
        instance_destroy()
}
