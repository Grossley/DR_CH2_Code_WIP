myinteract = 0
talked = false
image_speed = 0
itemflag = 104
itemtype = "armor"
t_itemid = 4
close = 0
extratext = 0
if (room == room_field_maze_ch1)
    extratext = 1
if (room == room_field_secret1_ch1)
{
    itemflag = 117
    itemtype = "key"
    t_itemid = 7
    extratext = 0
}
if (room == room_forest_dancers1_ch1)
{
    itemflag = 107
    itemtype = "item"
    t_itemid = 2
    extratext = 1
    if (x >= (room_width / 2))
    {
        itemflag = 116
        itemtype = "key"
        t_itemid = 6
        extratext = 0
    }
}
if (room == room_forest_area2A_ch1)
{
    itemflag = 108
    itemtype = "weapon"
    t_itemid = 9
    extratext = 1
}
if (room == room_forest_area3A_ch1)
{
    itemflag = 109
    itemtype = "armor"
    t_itemid = 2
    extratext = 1
}
if (room == room_forest_area4_ch1)
{
    if (y <= (room_height / 2))
    {
        itemflag = 110
        itemtype = "gold"
        t_itemid = 40
        extratext = 1
    }
    else
    {
        itemflag = 111
        itemtype = "item"
        t_itemid = 2
        extratext = 1
    }
}
if (room == room_cc_prison_prejoker_ch1)
{
    if (global.flag[112] == 1)
        instance_destroy()
    if (global.flag[242] == 0)
        instance_destroy()
    else
    {
        if (global.flag[242] == 1)
        {
            itemflag = 112
            itemtype = "weapon"
            t_itemid = 7
        }
        if (global.flag[242] == 2)
        {
            itemflag = 112
            itemtype = "armor"
            t_itemid = 7
        }
    }
}
if (room == room_cc_2f_ch1)
{
    itemflag = 113
    itemtype = "item"
    t_itemid = 11
}
if (room == room_cc_4f_ch1)
{
    itemflag = 114
    itemtype = "item"
    t_itemid = 2
    extratext = 1
}
if (room == room_forest_secret1_ch1)
{
    itemflag = 116
    itemtype = "key"
    t_itemid = 6
    extratext = 0
}
if (global.darkzone == true)
{
    image_xscale = 2
    image_yscale = 2
}
if (global.flag[itemflag] == 1)
    image_index = 1
scr_depth_ch1()
