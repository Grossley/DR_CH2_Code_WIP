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
        for (i = 0; i < instancemax; i++)
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
            var _temp_local_var_4 = other
            var _temp_local_var_5 = other
            var _temp_local_var_6 = other
            var _temp_local_var_7 = other
            var _temp_local_var_8 = other
            var _temp_local_var_9 = other
            var _temp_local_var_10 = frontshadow[i]
            sprite_index = listinstance[other.i].sprite_index
            image_xscale = listinstance[other.i].image_xscale
            image_yscale = listinstance[other.i].image_yscale
            x = listinstance[other.i].x
            y = (listinstance[other.i].y + 4)
            image_blend = other.frontShadowColor
            image_alpha = other.frontshadOpacity
            image_index = listinstance[other.i].image_index
            depth = (listinstance[other.i].depth - 1)
            var _temp_local_var_11 = other
            var _temp_local_var_12 = other
            var _temp_local_var_13 = other
            var _temp_local_var_14 = other
            var _temp_local_var_15 = other
            var _temp_local_var_16 = other
            var _temp_local_var_17 = other
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
            listinstance[other.instancemax] = other
            other.instancemax++
            var _temp_local_var_18 = id
            with (obj_npc_butler)
            {
                listinstance[other.instancemax] = other
                other.instancemax++
                var _temp_local_var_19 = id
                with (obj_caterpillarchara)
                {
                    listinstance[other.instancemax] = other
                    other.instancemax++
                    var _temp_local_var_20 = id
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
                    for (i = 0; i < instancemax; i++)
                    {
                        var _temp_local_var_21 = shadow[i]
                        sprite_index = listinstance[i].sprite_index
                        image_index = listinstance[i].image_index
                        image_xscale = listinstance[i].image_xscale
                        image_yscale = ((listinstance[i].image_yscale * -1) * other.shadLength)
                        x = listinstance[i].x
                        y = ((listinstance[i].y + (sprite_height * image_yscale)) - 4)
                        image_blend = other.floorShadowColor
                        image_alpha = other.floorshadOpacity
                        depth = 900000
                        var _temp_local_var_22 = other
                        var _temp_local_var_23 = other
                        var _temp_local_var_24 = other
                        var _temp_local_var_25 = other
                        var _temp_local_var_26 = other
                        var _temp_local_var_27 = other
                        var _temp_local_var_28 = frontshadow[i]
                        sprite_index = listinstance[i].sprite_index
                        image_xscale = listinstance[i].image_xscale
                        image_yscale = listinstance[i].image_yscale
                        x = listinstance[i].x
                        y = (listinstance[i].y + 4)
                        image_blend = other.frontShadowColor
                        image_alpha = other.frontshadOpacity
                        image_index = listinstance[i].image_index
                        depth = (listinstance[i].depth - 1)
                        var _temp_local_var_29 = other
                        var _temp_local_var_30 = other
                        var _temp_local_var_31 = other
                        var _temp_local_var_32 = other
                        var _temp_local_var_33 = other
                        var _temp_local_var_34 = other
                        var _temp_local_var_35 = other
                    }
                }
            }
        }
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
        for (i = 0; i < instancemax; i++)
        {
            var _temp_local_var_21 = shadow[i]
            sprite_index = listinstance[i].sprite_index
            image_index = listinstance[i].image_index
            image_xscale = listinstance[i].image_xscale
            image_yscale = ((listinstance[i].image_yscale * -1) * other.shadLength)
            x = listinstance[i].x
            y = ((listinstance[i].y + (sprite_height * image_yscale)) - 4)
            image_blend = other.floorShadowColor
            image_alpha = other.floorshadOpacity
            depth = 900000
            var _temp_local_var_22 = other
            var _temp_local_var_23 = other
            var _temp_local_var_24 = other
            var _temp_local_var_25 = other
            var _temp_local_var_26 = other
            var _temp_local_var_27 = other
            var _temp_local_var_28 = frontshadow[i]
            sprite_index = listinstance[i].sprite_index
            image_xscale = listinstance[i].image_xscale
            image_yscale = listinstance[i].image_yscale
            x = listinstance[i].x
            y = (listinstance[i].y + 4)
            image_blend = other.frontShadowColor
            image_alpha = other.frontshadOpacity
            image_index = listinstance[i].image_index
            depth = (listinstance[i].depth - 1)
            var _temp_local_var_29 = other
            var _temp_local_var_30 = other
            var _temp_local_var_31 = other
            var _temp_local_var_32 = other
            var _temp_local_var_33 = other
            var _temp_local_var_34 = other
            var _temp_local_var_35 = other
        }
    }
}
