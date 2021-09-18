var _temp_local_var_1, _temp_local_var_6, _temp_local_var_9, _temp_local_var_14;
t += 1
if target
{
    if (t == 1)
    {
        x = target.x
        y = target.y
        image_xscale = target.image_xscale
        image_yscale = target.image_yscale
        sprite_index = target.sprite_index
        sw = sprite_width
        sh = sprite_height
        herocheck = 0
        if (target.object_index == obj_herokris)
            herocheck = 1
        if (target.object_index == obj_herosusie)
            herocheck = 1
        if (target.object_index == obj_heroralsei)
            herocheck = 1
        if (herocheck == 1)
        {
            sw = target.mywidth
            sh = target.myheight
        }
        var _temp_local_var_1 = target
    }
    if (t >= 1 && t <= 5)
    {
        i = 0
        while (i < 2)
        {
            if (global.chapter == 2 && target.object_index == o_boxingcontroller)
                star[starcount] = gml_Script_instance_create(((x - (sw / 2)) + random(sw)), (y - random(sh)), obj_marker)
            else
                star[starcount] = gml_Script_instance_create((x + random(sw)), (y + random(sh)), obj_marker)
            var _temp_local_var_6 = star[starcount]
            image_angle = random(360)
            depth = -10
            image_xscale = 2
            image_yscale = 2
            image_alpha = 2
            image_speed = 0.25
            hspeed = (2 - random(2))
            vspeed = (-3 - random(2))
            friction = 0.2
        }
    }
    if (t >= 5 && t <= 30)
    {
        i = 0
        while (i < starcount)
        {
            var _temp_local_var_9 = star[i]
            image_angle -= 10
            image_alpha -= 0.1
            if (image_alpha <= 0)
            {
            }
        }
        if (t >= 30)
            // WARNING: Popz'd an empty stack.
    }
}
else
{
    i = 0
    while (i < starcount)
        var _temp_local_var_14 = star[i]
    // WARNING: Popz'd an empty stack.
}
