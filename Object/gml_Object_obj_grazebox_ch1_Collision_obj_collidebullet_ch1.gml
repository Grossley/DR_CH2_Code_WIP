with (other)
{
    if (global.inv < 0)
    {
        if (grazed == 1)
        {
            gml_Script_scr_tensionheal_ch1((grazepoints / 20))
            if (global.turntimer >= 10)
                global.turntimer -= (timepoints / 20)
            with (obj_grazebox_ch1)
            {
                if (grazetimer >= 0 && grazetimer < 4)
                    grazetimer = 3
                if (grazetimer < 2)
                    grazetimer = 2
            }
        }
        if (grazed == 0)
        {
            grazed = 1
            gml_Script_scr_tensionheal_ch1(grazepoints)
            if (global.turntimer >= 10)
                global.turntimer -= timepoints
            with (obj_battlecontroller_ch1)
                grazenoise = true
            with (obj_grazebox_ch1)
                grazetimer = 10
        }
    }
}
