noroom = false
if (argument1 == "item")
    gml_Script_scr_itemget(argument0)
if (argument1 == "weapon")
    gml_Script_scr_weaponget(argument0)
if (argument1 == "armor")
    gml_Script_scr_armorget(argument0)
if (argument1 == "key")
    gml_Script_scr_keyitemget(argument0)
if (argument1 == "money")
    global.gold += argument0
return;
