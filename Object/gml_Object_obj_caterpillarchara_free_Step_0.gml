if (con == 0 && global.interact == 0 && keyboard_check_pressed(ord("B")) && gml_Script_scr_debug())
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
            with (bossid.susid)
            {
                gml_Script_scr_set_facing_sprites("susie")
                sprite_index = rsprite
            }
        }
    }
    if (susid == noone)
        instance_destroy()
    else
    {
        con = 1
        timer = 0
        overalltimer = 0
    }
}
if (con == 1)
{
    if (global.interact == 0)
    {
        with (susid)
        {
            fake_direction = direction
            fake_speed = gml_Script_scr_move_step_solids_direction(4, direction)
        }
    }
    else
    {
        with (susid)
            fake_speed = 0
    }
}
if (con == 2)
{
    if (global.interact == 0)
    {
        var caid = caterpillarid
        with (susid)
        {
            direction = point_direction(x, y, caid.x, caid.y)
            fake_direction = direction
            fake_speed = gml_Script_scr_move_step_solids_direction(8, direction)
        }
    }
    else
    {
        with (susid)
            fake_speed = 0
    }
}
