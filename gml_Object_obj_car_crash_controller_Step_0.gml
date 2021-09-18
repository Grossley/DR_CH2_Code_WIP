if release_car
{
    release_car = 0
    var car_ypos = choose(240, 320)
    var car = gml_Script_instance_create(((gml_Script_camerax() + view_wport[0]) + 100), car_ypos, obj_car_crash)
    alarm[0] = release_rate
}
