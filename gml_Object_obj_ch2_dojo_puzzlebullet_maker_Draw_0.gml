var _temp_local_var_1;
futuredir = point_direction(x, y, (obj_heart.x + 8), (obj_heart.y + 8))
if (active == false)
{
    draw_sprite_ext(sprite_index, image_index, x, y, (3 - (image_alpha * 2)), (3 - (image_alpha * 2)), futuredir, c_white, (1 - image_alpha))
    if (image_alpha < 1)
        image_alpha += 0.1
    else
    {
        active = true
        activetimer = (timetarg - 1)
    }
}
draw_sprite_ext(sprite_index, image_index, x, y, (2 - image_alpha), (2 - image_alpha), futuredir, c_white, image_alpha)
if (active == true)
{
    activetimer++
    if (activetimer == timetarg)
    {
        snd = 55
        gml_Script_snd_pitch(snd, (1 + ((timesfired / times) / 2)))
        mybul = gml_Script_instance_create(x, y, obj_regularbullet)
        mybul.grazepoints = grazepoints
        mybul.damage = damage
        mybul.target = target
        mybul.sprite_index = spr_ch2_dojo_puzzlebullet_solid
        mybul.image_index = image_index
        mybul.direction = futuredir
        var _temp_local_var_1 = mybul
        spin = 1
        spinspeed = 12
        image_speed = 0
        speed = other.bulletspeed
        image_angle = direction
        depth = other.depth
        bottomfade = 246
    }
}
if (active == 2)
{
    image_alpha *= 0.7
    if (image_alpha <= 0.01)
    {
    }
}
