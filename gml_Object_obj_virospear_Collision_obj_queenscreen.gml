var _temp_local_var_1, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7, _temp_local_var_8, _temp_local_var_11;
var redscreen = 26
if (id && 64 && active == true && other.aligned == 1 && other.image_index != redscreen && other.image_index != 9 && other.sprite_index != spr_queenscreen_red)
{
    make_simple_bullet = 0
    simple_bullet_index = 0
    cause_explosion = 0
    speed = 0
    active = false
    exploded = 1
    if (other.image_index == 27 || other.image_index == 31)
    {
        other.extflag = 0
        make_simple_bullet = 1
        btype = "dancer"
    }
    if (other.image_index == 28)
    {
        make_simple_bullet = 1
        simple_bullet_index = 2
        btype = "virus"
    }
    if (other.image_index == 29 || other.extflag == 6)
    {
        cause_explosion = 1
        btype = "bomb"
    }
    if (other.image_index == 37)
    {
        cause_explosion = 1
        btype = "tribomb"
    }
    if (other.extflag == 11 && room == room_dw_cyber_viro_ring)
    {
        with (obj_ow_viroring)
            con = 99
        with (obj_virospear)
            exploded = 1
        285
        266
        obj_mainchara.battlemode = 0
        // WARNING: Popz'd an empty stack.
        57
        global.flag[352] = 1
    }
    if (other.extflag == 10)
    {
        global.flag[427] = 1
        plat = gml_Script_scr_dark_marker(758, 1150, 2626)
        plat.depth = 998000
        leftlight = gml_Script_instance_create(760, 1200, obj_cyber_wall_lights_left)
        leftlight.image_xscale = 1
        leftlight.depth = (plat.depth - 10)
        midlight = gml_Script_instance_create(802, 1200, obj_cyber_wall_lights)
        midlight.depth = (plat.depth - 10)
        midlight2 = gml_Script_instance_create(842, 1200, obj_cyber_wall_lights)
        midlight2.depth = (plat.depth - 10)
        rightlight = gml_Script_instance_create(864, 1200, obj_cyber_wall_lights_right)
        rightlight.depth = (plat.depth - 12)
        chest = gml_Script_instance_create(844, 1144, obj_treasure_room)
        shake = gml_Script_instance_create(x, y, obj_shake)
        61
        with (obj_ow_viroring)
        {
            if (trigNum == 3)
                con = 99
        }
        if 266
            obj_overworld_bulletarea.image_yscale = 22
    }
    if (make_simple_bullet == 1)
    {
        b = gml_Script_instance_create(other.x, other.y, obj_overworldbulletparent)
        if (btype != "dancer")
        {
            b.sprite_index = spr_queenscreen_bullets
            b.image_index = simple_bullet_index
            b.image_speed = 0
            b.tolerance = 10
        }
        if (btype == "dancer")
        {
            b.sprite_index = spr_queenscreen_bullet_dance
            b.image_speed = 0.25
            b.tolerance = 10
        }
        b.active = true
        b.target = 3
        b.damage = 16
        b.depth = 200
        alarm[0] = b
        b.image_xscale = 2
        b.image_yscale = 2
        var _temp_local_var_5 = b
        var _temp_local_var_6 = -10
        move_towards_point((obj_mainchara.x + 2), (obj_mainchara.y + 4), 4)
    }
    if (cause_explosion == 1)
    {
        if (btype == "bomb")
        {
            var _temp_local_var_7 = other
            gml_Script_instance_create(x, y, obj_viroroom_bomb)
        }
        if (btype == "tribomb")
        {
            var _temp_local_var_8 = other
            gml_Script_instance_create(x, y, obj_viroroom_tribullet)
        }
    }
    if (other.extflag == 11)
        other.image_index = 42
    else
        other.sprite_index = spr_queenscreen_red
    active = false
    gml_Script_snd_play_pitch(159, 2.5)
}
if (other.image_index == 9)
{
    if (active == true)
        _temp_local_var_8 = other.room == room_dw_mansion_east_1f_d
    else
        var _temp_local_var_11 = 0
}
else
    var _temp_local_var_11 = 0
if (other.room == room_dw_mansion_east_1f_d)
{
    if (other.x >= gml_Script_camerax() && other.x <= (gml_Script_camerax() + 640) && other.y >= gml_Script_cameray() && other.y <= (gml_Script_cameray() + 480))
    {
        other.tasquecon = 1
        global.interact = 1
        if instance_exists(obj_ow_virokun_mansion_east_1f_d)
            obj_ow_virokun_mansion_east_1f_d.con = 1.5
        if instance_exists(obj_mainchara)
            obj_mainchara.battlemode = 0
        if instance_exists(obj_overworld_bulletarea)
        {
            with (obj_overworld_bulletarea)
                instance_destroy()
        }
        other.sprite_index = spr_queenscreen_red
        if instance_exists(obj_overworldbulletparent)
        {
            with (obj_overworldbulletparent)
                instance_destroy()
        }
        if instance_exists(obj_virospear)
        {
            with (obj_virospear)
                instance_destroy()
        }
    }
}
