gml_Script_scr_lrecover(argument0)
global.item[8] = recovered
if (maxedout == 1)
    global.item[8] = 9999
global.msg[0] += " &"
if (global.item[8] < 999)
    global.msg[0] += gml_Script_stringsetsubloc("* You recovered ~1 HP!/%", string(global.item[8]), "scr_lrecoitem_slash_scr_lrecoitem_gml_14_0")
else
    global.msg[0] += gml_Script_stringsetloc("* Your HP was maxed out./%", "scr_lrecoitem_slash_scr_lrecoitem_gml_16_0")
script_execute(gml_Script_scr_writetext, 0, "x", 0, 0)
return;
