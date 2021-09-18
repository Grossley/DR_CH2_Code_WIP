var _temp_local_var_1, _temp_local_var_3, _temp_local_var_7, _temp_local_var_10;
timer++
image_alpha = 0.25
if 869
{
    if (x >= ((obj_growtangle.x + (obj_growtangle.sprite_width / 2)) - 16))
    {
        hspeed = (-hspeed)
        x -= 4
    }
    if (x <= (obj_growtangle.x - (obj_growtangle.sprite_width / 2)))
    {
        hspeed = hspeed
        x += 4
    }
}
if (mode == 0)
{
    if (timer >= 30)
    {
        with (obj_heart)
            wspeed = 5
        bul = gml_Script_instance_create(x, 480, obj_collidebullet)
        bul.sprite_index = spr_musicenemy_musicbar
        bul.vspeed = -4
        bul.active = true
        bul.mask_index = spr_musicenemy_musicbar_mask
        hspeed = random_range(-3, 3)
        timer = 0
    }
}
if (mode == 1)
{
    if (timer >= 14)
    {
        with (obj_heart)
            wspeed = 6
        triple = choose(0, 1)
        triple = 1
        if (triple == 1)
        {
            0
            var _temp_local_var_1 = bul[choose(0, 1, 2)]
        }
        if (triple == 0)
        {
            bul = gml_Script_instance_create(x, 480, obj_collidebullet)
            bul.sprite_index = spr_musicenemy_damagebox
            bul.x = (obj_growtangle.x + choose(-15, 15))
            bul.gravity = -0.1
            bul.vspeed = -4
            bul.image_yscale = 8
            bul.image_xscale = 1.5
            bul.active = true
        }
        hspeed = random_range(-4, 4)
        timer = 0
    }
}
if (input_memorizer == 1)
{
    with (obj_heart)
        wspeed = 8
    timer = 0
    input_memorizer = 2
    framecount = 0
    pressed[0] = 0
    pressed[1] = 0
    pressed[2] = 0
    mybutton[0] = ord("Z")
    mybutton[1] = ord("X")
    mybutton[2] = ord("C")
    remframecount[0] = 0
    remframecount[1] = 0
    remframecount[2] = 0
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
            mybul[i][j] = self
    }
    file = "bulletpattern.txt"
}
if (input_memorizer == 2)
{
    framecount++
    timer = 0
    if 32
        file
    makebullet = 0
    which = 0
    for (i = 0; i < 3; i++)
    {
        if (mybutton[i] && pressed[i] == 1)
        {
            var _temp_local_var_3 = mybul[i][0]
            image_yscale += 0.5
        }
        if (keyboard_check(mybutton[i]) && pressed[i] == 0)
        {
            remframecount[i] = framecount
            event_user(0)
            mybul[i][0] = bul[0]
            mybul[i][1] = bul[1]
            mybul[i][2] = bul[2]
            var _temp_local_var_7 = bul[i]
            instance_destroy()
        }
        if keyboard_check_released(mybutton[i])
        {
            finalheight = 1
            if gml_Script_i_ex(mybul[i][0])
                finalheight = mybul[i][0].image_yscale
            if gml_Script_i_ex(mybul[i][1])
                finalheight = mybul[i][1].image_yscale
            if gml_Script_i_ex(mybul[i][2])
                finalheight = mybul[i][2].image_yscale
            file_text_write_real(file, remframecount[i])
            file_text_write_string(file, ",")
            file_text_write_real(file, i)
            file_text_write_string(file, ",")
            file_text_write_real(file, finalheight)
            file_text_writeln(file)
            pressed[i] = 0
        }
    }
}
if (mode == 3)
{
    if (mframecount >= remframe)
    {
        0
        bul[0].image_yscale = bullet_height[bulletcount]
        bul[1].image_yscale = bullet_height[bulletcount]
        bul[2].image_yscale = bullet_height[bulletcount]
        var _temp_local_var_10 = bul[bullet_pos[bulletcount]]
    }
    mframecount++
    if (bulletcount >= bulletmax)
    {
        bulletcount = 0
        mframecount = 0
        remframe = 15
    }
}
