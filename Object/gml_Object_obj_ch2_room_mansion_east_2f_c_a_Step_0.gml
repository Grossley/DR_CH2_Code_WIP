var _temp_local_var_3;
if (dothis == 1)
{
    saucerCount = 0
    with (obj_saucer)
    {
        if (mode == 2 && con == 0)
            other.saucerCount++
    }
    if (saucerCount == 1)
    {
        with (obj_saucer)
        {
            if (mode == 2 && con == 0)
            {
                treasure = gml_Script_instance_create(x, y, obj_saucer)
                treasure.mode = 0
                treasure.makecontent = 1
                treasure.contentsprite = 1026
                instance_destroy()
            }
        }
    }
    if instance_exists(obj_marker)
    {
        with (obj_marker)
        {
            if (sprite_index == spr_treasurebox)
            {
                box = gml_Script_instance_create((x + 30), (y + 12), obj_treasure_room)
                var _temp_local_var_3 = box
                depth = (other.depth - 10)
            }
        }
    }
}
if (complete == 1)
{
    if instance_exists(obj_saucer_ufo_bullet)
    {
        with (obj_saucer_ufo_bullet)
            active = false
    }
    if instance_exists(obj_saucer_ufo)
    {
        with (obj_saucer_ufo)
        {
            con = 2
            hspeed = 24
        }
    }
}
