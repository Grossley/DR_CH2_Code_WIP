if (other.lifetimer > 20)
{
    if (room == room_dw_city_mice && con == 1)
    {
        var _temp_local_var_2 = other
        noelle = gml_Script_instance_create(x, y, obj_noelle_scared)
        noelle.con = 0
        noelle.targetx = x
        noelle.targety = y
        alarm[0] = noelle
        noelle.extflag = "mice1Scare"
        instance_destroy()
        var _temp_local_var_3 = 1
        if instance_exists(obj_controller_dw_city_mice)
            obj_controller_dw_city_mice.scaredAgain = 0
    }
    if ((1).room == room_dw_city_mice2 && con == 1 && (!gml_Script_d_ex()))
    {
        var _temp_local_var_5 = other
        scaredNoelle = gml_Script_instance_create(x, y, obj_noelle_scared)
        scaredNoelle.con = 0
        scaredNoelle.targetx = x
        scaredNoelle.targety = y
        alarm[0] = scaredNoelle
        instance_destroy()
        var _temp_local_var_6 = 1
        if instance_exists(obj_controller_city_mice2)
            obj_controller_city_mice2.scared = 0
    }
}
