var _temp_local_var_5, _temp_local_var_6;
if (global.turntimer < 1)
    instance_destroy()
if gml_Script_i_ex(50)
    x += obj_sneo_wall_controller_new.wallspeed[wallnumber]
if (wallcontroller > -1)
{
    if (obj_sneo_wall_controller_new.walltype[wallnumber] == 0)
    {
        timer++
        if (timer < 9)
            obj_sneo_wall_controller_new.wallspeed[wallnumber] = lerp(-16, -6, (timer / 9))
        else if (timer < 150)
            obj_sneo_wall_controller_new.wallspeed[wallnumber] = lerp(-6, -6, ((timer - 9) / 130))
    }
    if (obj_sneo_wall_controller_new.walltype[wallnumber] == 1)
    {
        timer++
        if (timer < 16)
            obj_sneo_wall_controller_new.wallspeed[wallnumber] = lerp(-21, -5, (timer / 15))
        else if (timer < 90)
            obj_sneo_wall_controller_new.wallspeed[wallnumber] = lerp(-5, -13, ((timer - 15) / 70))
    }
}
if (sprite_index == spr_sneo_crew)
{
    hitshot = collision_rectangle((x - 18), (y - 22), (x + 19), (y + 22), obj_yheart_shot, 1, 0)
    if (hitshot != noone)
    {
        if (destroyable == 0 && hitshot.big == 1)
        {
            if ((hitshot.y < y && instance_place(x, (y - 40), obj_sneo_wallbullet_new) && instance_nearest(x, (y - 40), obj_sneo_wallbullet_new).sprite_index == spr_sneo_mail) || (hitshot.y > y && instance_place(x, (y + 40), obj_sneo_wallbullet_new) && instance_nearest(x, (y + 40), obj_sneo_wallbullet_new).sprite_index == spr_sneo_mail))
            {
            }
            else if (abs((hitshot.y - y)) > 12)
                return;
        }
        event_user(0)
        if (destroyable == 1 && active == true)
        {
            if (hitshot.big == 0)
            {
                var _temp_local_var_5 = hitshot
                event_user(0)
            }
            gml_Script_snd_play_pitch(141, (1.1 + random(0.2)))
            gml_Script_scr_afterimage_cut()
            anim = gml_Script_instance_create(x, y, obj_yshot_anim)
            anim.image_xscale = image_xscale
            anim.image_yscale = image_yscale
            var _temp_local_var_6 = anim
            sprite_index = spr_yheart_shot_hit3
        }
    }
}
