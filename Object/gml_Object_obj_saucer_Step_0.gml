var _temp_local_var_1, _temp_local_var_2, _temp_local_var_11, _temp_local_var_15, _temp_local_var_17, _temp_local_var_22;
gml_Script_scr_depth()
if (mode == 0 || mode == 3)
{
    if (con == 0 && myinteract == 1)
    {
        gml_Script_snd_play(51)
        lid = gml_Script_instance_create(x, y, obj_marker)
        lid.depth = (depth - 100)
        lid.vspeed = (-4 * multiplier)
        lid.friction = (-0.2 * multiplier)
        lid.sprite_index = sprite_index
        lid.image_speed = 0
        lid.image_index = 2
        lid.image_xscale = 2
        lid.image_yscale = 2
        image_index = 1
        myinteract = 0
        con = 1
        makecontent = 0
        if (content >= 2)
        {
            makecontent = 1
            contentmarker = gml_Script_instance_create((x + xoffset), (y + yoffset), obj_marker)
            contentmarker.depth = (depth - 1)
            contentmarker.sprite_index = contentsprite
            contentmarker.image_speed = (0.1 * multiplier)
            contentmarker.image_xscale = 2
            contentmarker.image_yscale = 2
        }
        if (mode == 3 && contentsprite == spr_ch2_gimmick_saucer_key)
        {
            gml_Script_snd_play(231)
            with (obj_saucer)
            {
                if (mode == 3)
                    mode = -1
            }
            mode = 3
            var myKeyXpos = contentmarker.x
            var myKeyYpos = contentmarker.y
            if (room == room_dw_mansion_east_2f_a || room == room_dw_mansion_east_2f_shortcut)
            {
                contentmarker.image_alpha = 0
                if instance_exists(obj_ch2_room_mansion_east_2f_a)
                {
                    with (obj_ch2_room_mansion_east_2f_a)
                    {
                        keyXPos = myKeyXpos
                        keyYPos = myKeyYpos
                        con = 1
                    }
                }
                if instance_exists(obj_ch2_room_mansion_2f_shortcut)
                {
                    with (obj_ch2_room_mansion_2f_shortcut)
                    {
                        keyXPos = myKeyXpos
                        keyYPos = myKeyYpos
                        con = 1
                    }
                }
            }
        }
        if (mode == 3 && contentsprite == spr_ch2_gimmick_saucer_bomb)
        {
            if (contentsprite == spr_ch2_gimmick_saucer_bomb)
                activated_bomb = 1
            with (obj_saucer)
            {
                if (mode == 3)
                {
                    mode = 4
                    con = 1
                }
            }
            with (obj_saucer_monty)
                con = 6
            return;
        }
    }
}
if (mode == 1)
{
    if (con == 0 && myinteract == 1)
    {
        if (montyboss == 0 || montyboss == 1)
            gml_Script_snd_play(51)
        if (room == room_dw_mansion_dining3)
            global.interact = 1
        siner = 0
        lid = gml_Script_instance_create(x, y, obj_marker)
        lid.depth = (depth - 100)
        lid.sprite_index = sprite_index
        lid.image_speed = 0
        lid.image_index = 2
        lid.image_xscale = 2
        lid.image_yscale = 2
        image_index = 1
        myinteract = 0
        con = 1
        makecontent = 0
        if (content == 1 && floor(random(5)) == 1)
        {
            makecontent = 1
            contentmarker = gml_Script_instance_create(x, y, obj_marker)
            contentmarker.depth = (depth - 1)
            contentmarker.sprite_index = spr_ch2_gimmick_saucer_dog
            contentmarker.image_speed = (0.1 * multiplier)
            contentmarker.image_xscale = 2
            contentmarker.image_yscale = 2
        }
        if (content >= 2)
        {
            makecontent = 1
            contentmarker = gml_Script_instance_create(x, y, obj_marker)
            contentmarker.depth = (depth - 1)
            contentmarker.sprite_index = contentsprite
            contentmarker.image_speed = (0.1 * multiplier)
            contentmarker.image_xscale = 2
            contentmarker.image_yscale = 2
        }
    }
    if (con == 1)
    {
        done = 0
        siner += 1
        if (content == 1)
            height = (sin((siner / (8 / multiplier))) * 60)
        else
            height = (sin((siner / (15 / multiplier))) * 80)
        lid.y = (lid.ystart - height)
        if (siner >= 10 && height <= 0)
        {
            if (montyboss == 0 || montyboss == 1)
                gml_Script_snd_play(114)
            height = 0
            siner = 0
            con = 0
            myinteract = 0
            lid.y = lid.ystart
            image_index = 0
            var _temp_local_var_11 = lid
            instance_destroy()
        }
    }
}
if (mode == 2)
{
    if (con == 0)
    {
        if (myinteract == 1)
        {
            if (global.facing != 2)
                _temp_local_var_11 = lid.room == room_dw_mansion_east_2f_c_a
            else
                var _temp_local_var_22 = 0
        }
        else
            var _temp_local_var_22 = 0
    }
    else
        var _temp_local_var_22 = 0
    if (lid.room == room_dw_mansion_east_2f_c_a)
        myinteract = 0
    if (con == 0 && myinteract == 1)
    {
        gml_Script_snd_play_pitch(104, 1.4)
        ufo = gml_Script_instance_create(x, y, obj_saucer_ufo)
        image_index = 3
        myinteract = 0
        con = 1
    }
    yrange = 30
    if (con == 0 && activated && gml_Script_charaY() > (y - yrange) && gml_Script_charaY() < ((y + yrange) + sprite_height))
    {
        gml_Script_snd_play_pitch(104, 1.4)
        ufo = gml_Script_instance_create(x, y, obj_saucer_ufo)
        image_index = 3
        myinteract = 0
        con = 1
    }
}
if (mode == 4)
{
    if (con == 1)
    {
        timer = 0
        flashtimer = 0
        con = 2
    }
    if (con == 2)
    {
        flashtimer += (1 * multiplier)
        if (flashtimer >= 8)
        {
            if activated_bomb
            {
                if (image_index != 6)
                    image_index = 6
                else
                    image_index = 1
            }
            else if (image_index != 5)
                image_index = 5
            else
                image_index = 0
            flashtimer = 0
        }
        timer += (1 * multiplier)
        if (timer >= 120)
        {
            if (montyboss == 1)
                gml_Script_snd_play(134)
            midx = (x + (sprite_width / 2))
            midy = (y + (sprite_height / 2))
            explosion = gml_Script_instance_create(midx, midy, obj_textbomb_explosion)
            explosion.image_xscale = 3
            explosion.image_yscale = 3
            for (i = 0; i < 8; i += 1)
            {
                bullet = gml_Script_instance_create(midx, midy, obj_saucer_ufo_bullet)
                bullet.direction = (i * 45)
                bullet.speed = (1 * multiplier)
                bullet.friction = (-0.08 * multiplier)
                bullet.image_angle = bullet.direction
                bullet.explosiontype = 1
            }
            if (makecontent == 1)
            {
                var _temp_local_var_15 = contentmarker
                instance_destroy()
            }
            if gml_Script_i_ex(collider)
                instance_destroy(collider)
            instance_destroy()
        }
    }
}
if (mode == 5)
{
    if (con == 0 && myinteract == 1)
    {
        lid = gml_Script_instance_create(x, y, obj_marker)
        lid.depth = (depth - 100)
        lid.vspeed = (-4 * multiplier)
        lid.friction = (-0.2 * multiplier)
        lid.sprite_index = sprite_index
        lid.image_speed = 0
        lid.image_index = 2
        lid.image_xscale = 2
        lid.image_yscale = 2
        image_index = 1
        myinteract = 0
        con = 1
        makecontent = 0
        if (content >= 2)
        {
            makecontent = 1
            contentmarker = gml_Script_instance_create((x + 30), (y + 12), obj_treasure_room)
            contentmarker.depth = (depth - 1)
            contentmarker.sprite_index = spr_treasurebox
            contentmarker.image_speed = 0
            contentmarker.image_xscale = 2
            contentmarker.image_yscale = 2
            var _temp_local_var_17 = contentmarker
            itemid = other.itemid
            itemtype = other.itemtype
            itemflag = other.itemflag
        }
    }
}
if (mode == 6)
    image_index = 3