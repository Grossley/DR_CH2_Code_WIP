gml_Script_scr_speaker("no_name")
gml_Script_msgsetloc(0, "* (You dug through the trash...)/", "obj_cybercity_trashcan_slash_Other_10_gml_5_0")
if (global.flag[flag] == 0)
{
    image_index = 1
    gml_Script_snd_play(61)
    if (money_amount > 0)
    {
        global.flag[flag] = 1
        var itemget = gml_Script_scr_itemget_anytype_text(money_amount, "money")
        gml_Script_msgnextsubloc("* (And found $~1!)/", money_amount, "obj_cybercity_trashcan_slash_Other_10_gml_16_0")
        gml_Script_msgnext(itemget)
    }
    else if (item_id > 0)
    {
        itemget = gml_Script_scr_itemget_anytype_text(item_id, "item")
        gml_Script_msgnextsubloc("* (And found a ~1!)/", itemname, "obj_cybercity_trashcan_slash_Other_10_gml_23_0")
        gml_Script_msgnext(itemget)
        if (noroom == false)
            global.flag[flag] = 1
    }
}
else
    gml_Script_msgnextloc("* (And found trash!)/%", "obj_cybercity_trashcan_slash_Other_10_gml_35_0")
myinteract = 3
global.interact = 1
mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
