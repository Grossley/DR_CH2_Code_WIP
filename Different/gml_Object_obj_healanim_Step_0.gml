t += 1
if i_ex(target)
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
        with (target)
            scr_oflash()
        if (global.chapter == 2 && target.object_index == obj_kk_enemy)
        {
            with (obj_oflash)
            {
                x += 18
                y += 18
            }
        }
        if (global.chapter == 2 && target.object_index == o_boxingcontroller)
        {
            obj_oflash.image_xscale = -2
            _oflash = instance_create(x, y, obj_oflash)
            _oflash.image_speed = 0
            _oflash.image_index = o_boxingcontroller.image_index
            _oflash.image_xscale = -2
            _oflash.image_yscale = 2
            _oflash.sprite_index = o_boxingcontroller.headsprite
            _oflash.depth = (depth - 1)
        }
    }
    if (t >= 1 && t <= 5)
    {
        for (i = 0; i < 2; i += 1)
        {
            if (global.chapter == 2 && target.object_index == o_boxingcontroller)
                star[starcount] = instance_create(((x - (sw / 2)) + random(sw)), (y - random(sh)), obj_marker)
            else
                star[starcount] = instance_create((x + random(sw)), (y + random(sh)), obj_marker)
            with (star[starcount])
            {
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
            star[starcount].sprite_index = particlesprite
            star[starcount].image_blend = particlecolor
            starcount += 1
        }
    }
    if (t >= 5 && t <= 30)
    {
        for (i = 0; i < starcount; i += 1)
        {
            with (star[i])
            {
                image_angle -= 10
                image_alpha -= 0.1
                if (image_alpha <= 0)
                    instance_destroy()
            }
        }
        if (t >= 30)
            instance_destroy()
    }
}
else
{
    for (i = 0; i < starcount; i += 1)
    {
        with (star[i])
            instance_destroy()
    }
    instance_destroy()
}
