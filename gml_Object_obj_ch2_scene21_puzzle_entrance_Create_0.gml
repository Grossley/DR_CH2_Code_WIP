var swan_interact, _temp_local_var_3, _temp_local_var_4;
con = -1
customcon = 0
if (global.chapter != 2)
    // WARNING: Popz'd an empty stack.
else
{
    with (obj_doorB)
        // WARNING: Popz'd an empty stack.
    if (global.flag[343] == 0)
    {
        if (global.plot < 140)
        {
            // WARNING: Popz'd an empty stack.
            274
            3
            obj_mainchara.x = -100
            var ra_x = (global.plot < 140 ? (obj_mainchara.x - 40) : obj_mainchara.x)
            var ra_y = (global.plot < 140 ? obj_mainchara.y : (obj_mainchara.y - 40))
            gml_Script_scr_makecaterpillar(ra_x, ra_y, 3, 0)
            with (obj_caterpillarchara)
                // WARNING: Popz'd an empty stack.
        }
        var swanboat_x = (global.plot < 140 ? -200 : 140)
        swanboat = gml_Script_instance_create(swanboat_x, 240, obj_queencar)
        var _temp_local_var_3 = swanboat
    }
    if (global.flag[343] == 1)
    {
        swanboat = gml_Script_instance_create(235, 240, obj_queencar)
        var _temp_local_var_4 = swanboat
    }
}
