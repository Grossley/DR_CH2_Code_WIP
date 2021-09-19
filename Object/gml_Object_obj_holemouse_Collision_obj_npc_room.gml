if (room == room_dw_city_mice2)
{
    var _temp_local_var_1 = other
    scaredNoelle = gml_Script_instance_create(x, y, obj_noelle_scared)
    scaredNoelle.con = 0
    alarm[0] = scaredNoelle
    instance_destroy()
    var _temp_local_var_2 = 1
    if instance_exists(obj_controller_city_mice2)
        obj_controller_city_mice2.scared = 0
}
