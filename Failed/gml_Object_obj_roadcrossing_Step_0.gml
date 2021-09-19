if instance_exists(obj_caterpillarchara)
{
    with (obj_caterpillarchara)
    {
        if (other.susie == obj_sneo_friedpipis)
        {
            if (name == "susie")
                other.susie = id
        }
        if (other.ralsei == obj_sneo_friedpipis)
        {
            if (name == "ralsei")
                other.ralsei = id
        }
    }
}
if instance_exists(obj_traffic_road_trigger)
{
    with (obj_mainchara)
    {
        if place_meeting(x, y, obj_traffic_road_trigger)
            other.onroad = 1
        else
            other.onroad = 0
    }
}
if (onroad == 1)
{
    if gml_Script_i_ex(ralsei)
    {
        if (ralsei.image_alpha > 0)
            ralsei.image_alpha -= 0.1
    }
    if gml_Script_i_ex(susie)
    {
        if (susie.image_alpha > 0)
            susie.image_alpha -= 0.1
    }
}
if (onroad == 0)
{
    if gml_Script_i_ex(ralsei)
    {
        if (ralsei.image_alpha < 1)
            ralsei.image_alpha += 0.1
    }
    if gml_Script_i_ex(susie)
    {
        if (susie.image_alpha < 1)
            susie.image_alpha += 0.1
    }
}
if (!gml_Script_i_ex(1228))
{
    if instance_exists(obj_caterpillarchara)
    {
        with (obj_caterpillarchara)
        {
            if (image_alpha < 1)
                image_alpha += 0.1
        }
    }
}
