if (con == 0)
{
    with (obj_mainchara)
    {
        if place_meeting(x, y, obj_triggervolume)
            other.con++
    }
}
if (con == 1)
{
    gml_Script_instance_create(x, y, obj_caterpillarchara_susiebreakspots)
    con++
}
if (con == 2 && (!295))
    con = 0
