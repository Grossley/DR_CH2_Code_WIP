var _temp_local_var_3, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7;
if (image_alpha < 1)
    image_alpha += 0.25
else
    image_alpha = 1
if (t == 0)
{
    if (battlemode == 1)
    {
        if instance_exists(obj_queenshield_enemy)
        {
            depth = (obj_queenshield_enemy.depth - 1)
            targetx = (obj_queenshield_enemy.x + 24)
            targety = (obj_queenshield_enemy.y + 140)
        }
        else
        {
            targetx = global.monsterx[target.myself]
            targety = global.monstery[target.myself]
        }
    }
    else if gml_Script_i_ex(target)
    {
        targetx = (target.x + (target.sprite_width / 2))
        targety = (target.y + (target.sprite_height / 2))
    }
    cx = targetx
    cy = targety
    direction = (point_direction(x, y, cx, cy) - 20)
    speed = 24
    friction = -1.5
    image_angle = direction
    if (red == 1)
    {
        sprite_index = spr_rudebuster_beam_red
        image_xscale = 2.5
        image_yscale = 2.5
    }
}
if (t >= 1 && explode == 0)
{
    bolt_timer += 1
    if (gml_Script_button1_p() && bolt_timer >= 4 && chosen_bolt == 0)
        chosen_bolt = bolt_timer
    dir = point_direction(x, y, cx, cy)
    direction += (angle_difference(dir, direction) / 4)
    image_angle = direction
    if (point_distance(x, y, cx, cy) <= 40)
    {
        final_bolt = chosen_bolt
        visible = false
        explode = 1
        t = 1
    }
}
if (explode == 1)
{
    if (t == 1)
    {
        bonus_anim = 0
        if (chosen_bolt > 0)
        {
            if (chosen_bolt == final_bolt)
                damage += 30
            if (chosen_bolt == (final_bolt - 1))
                damage += 28
            if (chosen_bolt == (final_bolt - 2))
                damage += 22
            if (chosen_bolt == (final_bolt - 3))
                damage += 20
            if (chosen_bolt == (final_bolt - 4))
                damage += 13
            if (chosen_bolt == (final_bolt - 5))
                damage += 11
            if (chosen_bolt == (final_bolt - 6))
                damage += 10
            if (abs((chosen_bolt - final_bolt)) <= 2)
            {
                bonus_anim = 1
                gml_Script_snd_play(223)
            }
        }
        if (red == 1)
            damage += 90
        if (battlemode == 1)
        {
            global.hittarget[star] = 0
            if instance_exists(obj_queenshield_enemy)
            {
                obj_queen_enemy.shieldhp -= damage
                with (obj_queenshield_enemy)
                    con = 1
                with (obj_queenshield_enemy)
                    event_user(0)
            }
            else
                gml_Script_scr_damage_enemy(star, damage)
            if (global.monstertype[0] != 20)
            {
                var _temp_local_var_3 = target
                __of = gml_Script_scr_oflash()
            }
        }
        else
        {
            _temp_local_var_3 = target
            __of = gml_Script_scr_oflash()
        }
        gml_Script_snd_play(107)
        for (i = 0; i < 4; i += 1)
        {
            burst[i] = gml_Script_scr_afterimage()
            burst[i].image_speed = 0.5
            burst[i].x = cx
            burst[i].y = cy
            burst[i].image_angle = (45 + (i * 90))
            burst[i].direction = burst[i].image_angle
            burst[i].speed = 25
            burst[i].depth = (depth - 10)
        }
        for (i = 4; i < 8; i += 1)
        {
            burst[i] = gml_Script_scr_afterimage()
            burst[i].image_speed = 0.5
            burst[i].x = cx
            burst[i].y = cy
            burst[i].image_angle = (45 + (i * 90))
            burst[i].direction = burst[i].image_angle
            burst[i].speed = 25
            burst[i].depth = (depth - 10)
        }
    }
    if (t >= 2)
    {
        i = 0
        while (i < 4)
        {
            var _temp_local_var_5 = burst[i]
            speed *= 0.75
            image_xscale *= 0.8
        }
        i = 4
        while (i < 8)
        {
            var _temp_local_var_6 = burst[i]
            speed *= 0.8
            image_xscale *= 0.8
        }
    }
    if (t >= 18)
        instance_destroy()
}
if (explode == 0)
{
    aft[maxaft] = gml_Script_scr_afterimage()
    aft[maxaft].image_yscale = 1.8
    aft[maxaft].image_angle = image_angle
    aft[maxaft].image_index = 4
    aft[maxaft].image_speed = 0.5
    aft[maxaft].image_alpha = (image_alpha - 0.2)
    maxaft += 1
}
i = 0
while (i < maxaft)
{
    var _temp_local_var_7 = aft[i]
    image_yscale -= 0.1
    if (image_yscale <= 0.1)
        instance_destroy()
}
a += 1
t += 1