var _temp_local_var_2;
if (grazed == 1)
{
    grazetimer += 1
    if (grazetimer >= 30)
    {
        grazetimer = 0
        grazed = 0
    }
}
if 869
{
    if (con == 0)
    {
        timer++
        if (type == 1)
        {
            plugxend = -23
            plugx = lerp(plugx, plugxend, 0.2)
        }
        else
        {
            plugxend = 0
            plugx = lerp(plugx, plugxend, 0.15)
        }
        plugalpha = lerp(plugalpha, 1, 0.1)
        if (timer >= 15 && timer <= 25)
        {
            obj_growtangle.x = (obj_growtangle.xstart + random_range(((-35 + timer) / 2), ((35 - timer) / 2)))
            obj_growtangle.y = (obj_growtangle.ystart + random_range(((-35 + timer) / 2), ((35 - timer) / 2)))
        }
        if (timer >= 15)
        {
            plugalpha = 1
            plugx = plugxend
            image_alpha += 0.1
            if (image_alpha >= 1)
                active = true
            else
                active = false
        }
        if (timer >= 25)
        {
            con = 1
            timer = 0
            plugx = 0
        }
    }
    if (con == 1)
    {
        timer++
        shottimer++
        if (type == 0)
            moveamount = ((timer / 20) * amplitude)
        if (type == 1)
            moveamount = 1
        shotthreshold = 8
        if (type == 1)
            shotthreshold = 15
        if (shottimer >= shotthreshold)
        {
            shottimer = 0
            lightning = gml_Script_instance_create(-100, y, obj_growtangle_spark)
            var _temp_local_var_2 = lightning
            destroyonhit = 1
        }
        if (timer >= 150)
        {
            if (amplitude > 0)
                amplitude -= 2
        }
        else
            amplitude = lerp(amplitude, maxamplitude, 0.1)
        if (type == 0)
            obj_growtangle.x = (obj_growtangle.xstart + moveamount)
        if (type == 1)
        {
            moveamount = (sin((timer / 20)) * amplitude)
            obj_growtangle.x = (obj_growtangle.xstart + moveamount)
            obj_growtangle.image_angle += 1.9565217391304348
        }
        if (amplitude <= 0 && timer >= 230 && global.turntimer > 2)
            global.turntimer = 2
    }
    x = (obj_growtangle.x - xx)
    y = (obj_growtangle.y - yy)
    image_xscale = obj_growtangle.image_xscale
    image_yscale = obj_growtangle.image_yscale
    image_angle = obj_growtangle.image_angle
}
else
    // WARNING: Popz'd an empty stack.
