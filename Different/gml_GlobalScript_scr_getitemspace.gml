scr_getitemspace = function(argument0) // gml_Script_scr_getitemspace
{
    if (argument0 == "pocket")
    {
        var invroom = 0
        for (var i = 0; i < 12; i++)
        {
            scr_debug_print(((("global.item[" + string(i)) + "] =") + string(global.item[i])))
            if (global.item[i] == 0)
                invroom++
        }
        scr_debug_print(("Room available in pocket: " + string(invroom)))
        return invroom;
    }
    return;
}

