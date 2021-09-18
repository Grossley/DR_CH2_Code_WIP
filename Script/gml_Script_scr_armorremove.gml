__i = 0
var loop = true
__inventorysize = global.armor
while (loop == true)
{
    if (global.armor[__i] == argument0)
    {
        global.armor[__i] = 0
        break
    }
    else if (__i == __inventorysize)
    {
        loop = false
        break
    }
    else
    {
        __i += 1
        continue
    }
}
gml_Script_scr_armorinfo_all
return;
