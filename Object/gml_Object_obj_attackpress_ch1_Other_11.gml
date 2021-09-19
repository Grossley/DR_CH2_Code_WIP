var _temp_local_var_1;
if (gml_Script_scr_monsterpop_ch1() > 0)
{
    for (i = 0; i < 3; i += 1)
    {
        if (target == i)
        {
            if instance_exists(global.charinstance[i])
            {
                global.charinstance[i].points = points[i]
                var _temp_local_var_1 = global.charinstance[i]
                state = 1
                attacktimer = 0
            }
        }
    }
}
