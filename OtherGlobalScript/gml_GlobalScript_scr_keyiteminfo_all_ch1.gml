for (i = 0; i < 12; i += 1)
{
    keyitemid = global.keyitem[i]
    keyitemname[i] = " "
    gml_Script_scr_keyiteminfo_ch1(keyitemid)
    keyitemusable[i] = tempkeyitemusable
    keyitemname[i] = tempkeyitemname
    keyitemdesc[i] = tempkeyitemdesc
}
return;
