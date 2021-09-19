var _temp_local_var_2;
if (con == 1)
{
    if (other.name == "noelle" && other.visible == true)
    {
        other.visible = false
        scaredNoelle = gml_Script_instance_create(other.x, other.y, obj_noelle_scared)
        if (room == room_dw_city_mice)
        {
            scaredNoelle.targetx = 485
            scaredNoelle.targety = 225
        }
        if (room == room_dw_city_mice2)
        {
            alarm[0] = scaredNoelle
            var _temp_local_var_2 = 1
        }
    }
}
