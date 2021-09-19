var swan_interact, _temp_local_var_3, _temp_local_var_4;
con = -1
customcon = 0
if (global.chapter != 2)
    instance_destroy()
else
{
    with (obj_doorB)
        instance_destroy()
    if (global.flag[343] == 0)
    {
        if (global.plot < 140)
        {
            gml_Script_scr_losechar()
            gml_Script_safe_delete(274)
            gml_Script_scr_getchar(3)
            obj_mainchara.x = -100
            var ra_x = (global.plot < 140 ? (obj_mainchara.x - 40) : obj_mainchara.x)
            var ra_y = (global.plot < 140 ? obj_mainchara.y : (obj_mainchara.y - 40))
            gml_Script_scr_makecaterpillar(ra_x, ra_y, 3, 0)
            with (obj_caterpillarchara)
                gml_Script_scr_caterpillar_interpolate()
        }
        var swanboat_x = (global.plot < 140 ? -200 : 140)
        swanboat = gml_Script_instance_create(swanboat_x, 240, obj_queencar)
        var _temp_local_var_3 = swanboat
        gml_Script_scr_depth()
    }
    if (global.flag[343] == 1)
    {
        swanboat = gml_Script_instance_create(235, 240, obj_queencar)
        var _temp_local_var_4 = swanboat
        gml_Script_scr_depth()
    }
}
