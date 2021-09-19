if gml_Script_i_ex(355)
{
    if (obj_battlecontroller.messagepriority < argument0)
    {
        obj_battlecontroller.messagepriority = argument0
        return 1;
    }
    else
        return 0;
}
else
    return 0;
