con = 0
image_speed = 0
wallwindow = gml_Script_scr_marker(140, 40, 882)
with (wallwindow)
    gml_Script_scr_depth()
show_border = 0
if (global.plot > 0)
{
    gml_Script_scr_depth()
    with (wallwindow)
        image_index = 1
    image_index = 1
}
else if (global.chapter == 1)
{
    gml_Script_scr_windowcaption(gml_Script_stringsetloc("The Beginning", "obj_krisroom_slash_Create_0_gml_16_0"))
    t = gml_Script_scr_marker(151, 97, 896)
    with (t)
    {
        gml_Script_scr_depth()
        image_speed = 0.25
    }
    global.msc = 0
    global.typer = 7
    global.fc = 4
    global.fe = 1
    global.msg[0] = gml_Script_stringsetloc("* KRIS!/", "obj_krisroom_slash_Create_0_gml_23_0")
    global.msg[1] = gml_Script_stringsetloc("* Kris^1, if you do not wake up^1, we will be late for school!/%", "obj_krisroom_slash_Create_0_gml_24_0")
    d = gml_Script_instance_create(0, 0, obj_dialoguer)
    con = 1
    global.interact = 1
    global.facing = 3
}
else if (global.chapter == 2)
{
    global.msc = 0
    gml_Script_scr_speaker("toriel")
    blackall = gml_Script_scr_dark_marker(-10, -10, 2529)
    blackall.image_xscale = 999
    blackall.image_yscale = 999
    blackall.depth = 100
    blackall.image_blend = c_black
    con = 1
    alarm[4] = 10
    global.interact = 1
    global.facing = 3
}
