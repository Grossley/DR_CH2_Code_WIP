with (obj_darkcontroller)
    charcon = 0
global.msc = 0
global.typer = 5
if (global.darkzone == true)
    global.typer = 6
global.fc = 0
global.fe = 0
global.interact = 1
image_index = 1
global.msg[0] = gml_Script_stringsetloc("* (It won't open.)/%", "obj_treasure_room_slash_Other_10_gml_14_0")
if (global.flag[itemflag] == 1)
    global.msg[0] = gml_Script_stringsetloc("* (The chest is empty.)/%", "obj_treasure_room_slash_Other_10_gml_18_0")
else
{
    59
    var itemgetstring = gml_Script_scr_itemget_anytype_text(itemidchest, itemtype)
    gml_Script_msgsetsubloc(0, "* (You opened the treasure chest.^1)&* (Inside was \\cY~1\\cW.)/", itemname, "obj_treasure_room_slash_Other_10_gml_65_0")
    itemgetstring
    if (noroom == false)
        global.flag[itemflag] = 1
    else
        close = 1
}
if (extraevent == 1)
{
    if (room == room_dw_cyber_maze_tasque && global.flag[467] == 0)
    {
        checkscreen = gml_Script_instance_create(1200, 520, obj_queenscreen)
        checkscreen.extflag = 4
        checkscreen.image_index = 10
        global.flag[467] = 1
        extraevent = 0
    }
}
myinteract = 3
mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
talked += 1
