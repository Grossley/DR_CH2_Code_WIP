if (dont == 0)
{
    if (active == false)
    {
        futuredir = point_direction(x, y, (obj_heart.x + 8), (obj_heart.y + 8))
        draw_sprite_ext(spr_diamondbullet_form, 0, x, y, (3 - (image_alpha * 2)), (3 - (image_alpha * 2)), futuredir, c_white, (1 - image_alpha))
        if (image_alpha < 1)
            image_alpha += 0.1
        else
        {
            move_towards_point((obj_heart.x + 8), (obj_heart.y + 8), 2)
            futuredir = direction
            active = true
            speed = 0
        }
    }
    draw_sprite_ext(sprite_index, 0, x, y, (2 - image_alpha), (2 - image_alpha), futuredir, c_white, image_alpha)
    if (active == true)
    {
        activetimer += 1
        if (activetimer >= 5 && times < difficulty)
        {
            mybul = gml_Script_instance_create(x, y, obj_regularbullet)
            if gml_Script_i_ex(mybul)
            {
                mybul.grazepoints = grazepoints
                mybul.damage = damage
                mybul.target = target
                mybul.sprite_index = spr_diamondbullet
                mybul.direction = futuredir
                var _temp_local_var_2 = mybul
                speed = 6
                image_angle = direction
            }
            times += 1
            activetimer = 0
        }
        if (activetimer >= 5 && times >= difficulty)
        {
            image_alpha -= 0.2
            if (image_alpha <= 0)
                instance_destroy()
        }
    }
}
dont = 0
