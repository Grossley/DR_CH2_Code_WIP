var _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_8;
if (con == 0 && global.interact == 0 && susiestart == 1)
{
    susid = noone
    var bossid = id
    with (obj_caterpillarchara)
    {
        if (name == "susie")
        {
            visible = false
            bossid.caterpillarid = id
            bossid.susid = gml_Script_instance_create(x, y, obj_actor)
            var _temp_local_var_2 = bossid.susid
            gml_Script_scr_set_facing_sprites("susie")
            sprite_index = rsprite
        }
    }
    if (susid == noone)
    {
    }
    else
        con = 1
}
if (con == 1)
{
    if (global.interact == 0)
    {
        if 1254
        {
            var _temp_local_var_3 = susid
            nearestpot = instance_nearest((x + (sprite_width / 2)), ((y + sprite_height) - 2), obj_queenvase)
            if (collision_line((x + (sprite_width / 2)), ((y + sprite_height) - 2), (nearestpot.x + 20), (nearestpot.y + 52), obj_solidblock, true, false) == -4)
            {
                direction = point_direction((x + (sprite_width / 2)), ((y + sprite_height) - 2), (nearestpot.x + 20), ((nearestpot.y + 52) - 10))
                fake_speed = gml_Script_scr_move_step_solids_direction(8, direction)
                fake_direction = direction
            }
            else
                other.con = 2
            if place_meeting(x, y, obj_queenvase)
            {
                other.timer = 0
                other.con = 1.1
                image_index = 0
                sprite_index = spr_susie_right_diagonal_kick_dw
            }
        }
        else
            con = 2
    }
}
if (con == 1.1)
{
    if (!kick)
    {
        kick = gml_Script_instance_create(susid.x, susid.y, obj_marker)
        kick.sprite_index = spr_susie_right_diagonal_kick_dw
        kick.visible = true
        if ((susid.x + (susid.sprite_width / 2)) > susid.nearestpot.x)
            kick.sprite_index = spr_susie_left_diagonal_kick_dw
        kick.image_xscale = 2
        kick.image_yscale = 2
        kick.image_speed = 0.25
        var _temp_local_var_4 = kick
    }
    if (kick.image_index == 2)
        susid.active = true
    if (kick.image_index == 4)
    {
        susid.active = false
        susid.visible = true
        var _temp_local_var_5 = kick
    }
}
if (con == 2)
{
    if (global.interact == 0)
    {
        var caid = caterpillarid
        var _temp_local_var_6 = susid
        direction = point_direction(x, y, caid.x, caid.y)
        fake_direction = direction
        fake_speed = gml_Script_scr_move_step_solids_direction(8, direction)
    }
    else
    {
        var _temp_local_var_8 = susid
        fake_speed = 0
    }
}
