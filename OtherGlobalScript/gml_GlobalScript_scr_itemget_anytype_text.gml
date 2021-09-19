noroom = false
gml_Script_scr_itemget_anytype(argument[0], argument[1])
var itemgetstring = ""
itemname = "NULL"
itemtypename = "NULL"
var _itemtype = argument1
var _itemid = argument0
if (_itemtype == "armor")
{
    gml_Script_scr_armorinfo(_itemid)
    itemname = armornametemp
    itemtypename = gml_Script_stringsetloc("ARMORs", "scr_itemget_anytype_text_slash_scr_itemget_anytype_text_gml_22_0")
}
else if (_itemtype == "weapon")
{
    gml_Script_scr_weaponinfo(_itemid)
    itemname = weaponnametemp
    itemtypename = gml_Script_stringsetloc("WEAPONs", "scr_itemget_anytype_text_slash_scr_itemget_anytype_text_gml_29_0")
}
if (_itemtype == "item")
{
    gml_Script_scr_iteminfo(_itemid)
    itemname = itemnameb
    itemtypename = gml_Script_stringsetloc("ITEMs", "scr_itemget_anytype_text_slash_scr_itemget_anytype_text_gml_36_0")
    if _pocketed
        itemtypename = gml_Script_stringsetloc("STORAGE", "scr_itemget_anytype_text_slash_scr_itemget_anytype_text_gml_38_0")
}
if (_itemtype == "key")
{
    gml_Script_scr_keyiteminfo(_itemid)
    itemname = tempkeyitemname
    itemtypename = gml_Script_stringsetloc("KEY ITEMs", "scr_itemget_anytype_text_slash_scr_itemget_anytype_text_gml_44_0")
}
if (_itemtype == "money")
{
    noroom = false
    itemtypename = gml_Script_stringsetloc("MONEY HOLE", "scr_itemget_anytype_text_slash_scr_itemget_anytype_text_gml_51_0")
    itemname = (string(_itemid) + gml_Script_stringsetloc(" Dark Dollars", "scr_itemget_anytype_text_slash_scr_itemget_anytype_text_gml_52_0"))
}
if (noroom == false)
    itemgetstring = gml_Script_stringsetsubloc("* (\\cY~1\\cW was added to your \\cY~2\\cW.)", itemname, itemtypename, "obj_treasure_room_slash_Other_10_gml_76_0")
else
    itemgetstring = gml_Script_stringsetsubloc("* (You have too many \\cY~2\\cW to take \\cY~1\\c0.)", itemname, itemtypename, "obj_treasure_room_slash_Other_10_gml_83_0")
if (argument_count >= 3)
    itemgetstring += argument[2]
else
    itemgetstring += "/%"
return itemgetstring;
