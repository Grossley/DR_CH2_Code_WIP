var _temp_local_var_2;
if (other.lifetimer > 20)
{
    if (room == room_dw_city_mice && con == 1)
    {
        with (stacktop)
        {
            noelle = gml_Script_instance_create(x, y, obj_noelle_scared)
            noelle.con = 0
            noelle.targetx = x
            noelle.targety = y
            alarm[0] = noelle
            noelle.extflag = "mice1Scare"
            1
        }
        if 1159
            obj_controller_dw_city_mice.scaredAgain = 0
    }
    if (room == room_dw_city_mice2)
    {
        if (con == 1)
        {
        }
        else
            var _temp_local_var_2 = 0
    }
    else
        var _temp_local_var_2 = 0
    with (stacktop)
    {
        scaredNoelle = gml_Script_instance_create(x, y, obj_noelle_scared)
        scaredNoelle.con = 0
        scaredNoelle.targetx = x
        scaredNoelle.targety = y
        alarm[0] = scaredNoelle
        1
    }
    if 1161
        obj_controller_city_mice2.scared = 0
}
