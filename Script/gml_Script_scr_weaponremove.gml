__i = 0
__loop = 1
__inventorysize = global.weapon
while (__loop == 1)
{
    if (global.weapon[__i] == argument0)
    {
        global.weapon[__i] = 0
        break
    }
    else if (i == __inventorysize)
    {
        __loop = 0
        break
    }
    else
    {
        __i += 1
        continue
    }
}
gml_Script_scr_weaponinfo_all
return;
