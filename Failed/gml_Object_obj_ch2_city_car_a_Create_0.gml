var readable_cars, readable_cars_2, _temp_local_var_1, _temp_local_var_2, _temp_local_var_4, _temp_local_var_6;
con = -1
customcon = 0
release_timer = 0
for (var i = 0; i < 5; i++)
{
    var j = 0
    while (j < 3)
    {
        var xpos = (325 + (88 * i))
        var ypos = ((gml_Script_cameray() - 30) + (j * 55))
        traffic_car[i][j] = gml_Script_scr_dark_marker(xpos, ypos, 2372)
        var _temp_local_var_1 = traffic_car[i][j]
        gml_Script_scr_depth()
    }
}
for (i = 0; i < 5; i++)
{
    j = 0
    while (j < 3)
    {
        xpos = (325 + (88 * i))
        ypos = ((gml_Script_cameray() + 345) + (j * 55))
        traffic_car[i][j] = gml_Script_scr_dark_marker(xpos, ypos, 2372)
        var _temp_local_var_2 = traffic_car[i][j]
        gml_Script_scr_depth()
    }
}
if (global.chapter != 2 || global.plot >= 80)
{
    if (global.plot < 90)
    {
        gml_Script_snd_free_all()
        global.currentsong[0] = gml_Script_snd_init("queen_car_radio.ogg")
        global.currentsong[1] = gml_Script_mus_loop(global.currentsong[0])
        gml_Script_mus_volume(global.currentsong[1], 0.8, 0)
        carnpc = gml_Script_instance_create(2075, 208, obj_npc_sign)
        carnpc.sprite_index = spr_queen_car_right
        var _temp_local_var_4 = carnpc
        gml_Script_scr_depth()
    }
    instance_destroy()
}
else
{
    gml_Script_scr_losechar()
    if instance_exists(obj_caterpillarchara)
        instance_destroy(obj_caterpillarchara)
    gml_Script_scr_getchar(4)
    gml_Script_scr_makecaterpillar((obj_mainchara.x - 120), obj_mainchara.y, 4, 0)
    queencar = gml_Script_instance_create(-200, 97, obj_caradventure_car)
    var _temp_local_var_6 = queencar
    gml_Script_scr_depth()
}
