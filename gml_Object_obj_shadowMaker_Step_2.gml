var _temp_local_var_1, _temp_local_var_3, _temp_local_var_12;
if (type == 0)
{
    timer++
    if (timer == 1)
    {
        instancemax = 0
        var i = obj_sneo_friedpipis
        while i.instance_count
        {
            if (instance_id[i] != noone && instance_id[i].depth >= 5000 && instance_id[i].depth <= 100000 && instance_id[i].visible == true && instance_id[i].sprite_index >= IMAGE_LOGO_CENTER)
            {
                listinstance[instancemax] = instance_id[i]
                instancemax++
            }
            i += 1
        }
        for (i = obj_sneo_friedpipis; i < instancemax; i++)
        {
            shadow[i] = gml_Script_instance_create(x, y, obj_marker)
            frontshadow[i] = gml_Script_instance_create(x, y, obj_marker)
        }
    }
    if (timer >= 1)
    {
        i = 0
        while (i < instancemax)
        {
            var _temp_local_var_3 = shadow[i]
            sprite_index = listinstance[other.i].sprite_index
            image_index = listinstance[other.i].image_index
            image_xscale = listinstance[other.i].image_xscale
            image_yscale = ((listinstance[other.i].image_yscale * -1) * other.shadLength)
            x = listinstance[other.i].x
            y = ((listinstance[other.i].y + (sprite_height * image_yscale)) - 4)
            image_blend = other.floorShadowColor
            image_alpha = other.floorshadOpacity
            depth = 900000
        }
    }
}
if (type == 1)
{
    if (init == 0)
    {
        instancemax = 0
        with (obj_mainchara)
        {
            listinstance[other.instancemax] = id
            other.instancemax++
        }
        with (obj_npc_butler)
        {
            listinstance[other.instancemax] = id
            other.instancemax++
        }
        with (obj_caterpillarchara)
        {
            listinstance[other.instancemax] = id
            other.instancemax++
        }
        init = 1
    }
    if (init == 1)
    {
        for (i = 0; i < instancemax; i++)
        {
            shadow[i] = gml_Script_instance_create(x, y, obj_marker)
            frontshadow[i] = gml_Script_instance_create(x, y, obj_marker)
        }
        init = 2
    }
    if (init == 2)
    {
        i = 0
        while (i < instancemax)
        {
            var _temp_local_var_12 = shadow[i]
            sprite_index = listinstance[i].sprite_index
            image_index = listinstance[i].image_index
            image_xscale = listinstance[i].image_xscale
            image_yscale = ((listinstance[i].image_yscale * -1) * other.shadLength)
            x = listinstance[i].x
            y = ((listinstance[i].y + (sprite_height * image_yscale)) - 4)
            image_blend = other.floorShadowColor
            image_alpha = other.floorshadOpacity
            depth = 900000
        }
    }
}
