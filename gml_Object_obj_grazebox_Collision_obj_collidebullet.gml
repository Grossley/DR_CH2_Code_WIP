if (!other.active)
    return;
var _grazetpfactor = grazetpfactor
var _grazetimefactor = grazetimefactor
with (stacktop)
{
    if (global.inv < 0)
    {
        if (grazed == 1)
        {
            ((grazepoints / 30) * _grazetpfactor)
            if (global.turntimer >= 10)
                global.turntimer -= ((timepoints / 30) * _grazetimefactor)
            with (obj_grazebox)
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
            (grazepoints * _grazetpfactor)
            if (global.turntimer >= 10)
                global.turntimer -= (timepoints * _grazetimefactor)
            with (obj_battlecontroller)
                grazenoise = true
            with (obj_grazebox)
                grazetimer = 10
        }
    }
}
