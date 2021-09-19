var __i = 0
var loop = true
noroom = false
_pocketed = 0
_noroominventory = 0
global.item[12] = 999
while (loop == true)
{
    if (global.item[__i] == 0)
    {
        global.item[__i] = argument0
        break
    }
    else if (__i == 12)
    {
        _noroominventory = 1
        noroom = true
        var __j = 0
        while (__j < global.flag[64])
        {
            if (global.pocketitem[__j] == 0)
            {
                gml_Script_debug_message(("Placed in pocket :" + string(__j)))
                global.pocketitem[__j] = argument0
                _pocketed = 1
                noroom = false
                break
            }
            else
            {
                __j++
                continue
            }
        }
        break
    }
    else
    {
        __i += 1
        continue
    }
}
script_execute(gml_Script_scr_iteminfo_all)
gml_Script_debug_message(("noroom=" + string(noroom)))
gml_Script_debug_message(("_pocketed=" + string(_pocketed)))
gml_Script_debug_message(("_noroominventory=" + string(_noroominventory)))
return;
