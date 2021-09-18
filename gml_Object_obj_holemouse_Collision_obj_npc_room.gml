if (room == room_dw_city_mice2)
{
    with (stacktop)
    {
        scaredNoelle = gml_Script_instance_create(x, y, obj_noelle_scared)
        scaredNoelle.con = 0
        alarm[0] = scaredNoelle
        1
    }
    if 1161
        obj_controller_city_mice2.scared = 0
}
