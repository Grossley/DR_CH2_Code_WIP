cur_jewel = 0
saved = 0
xcoord = 0
ycoord = 0
ini_ex = 0
buffer = 3
name = gml_Script_stringsetloc("Kris", "obj_savemenu_slash_Create_0_gml_8_0")
level = 1
love = 1
time = 0
roome = 0
saved = 0
endme = 0
menuno = 0
mpos = global.filechoice
overwrite = 0
overcoord = 0
init = 0
type = 0
if (global.chapter >= 2 && global.darkzone == true)
{
    if (global.plot >= 12)
        type = 1
}
haverecruited = 1
recruitsubtype = 1
if (global.chapter == 2)
{
    if (room >= room_dw_cyber_intro_1)
    {
        recruitsubtype = 2
        haverecruited = 0
        var i = 25
        while (i < 50)
        {
            if (global.flag[(600 + i)] > 0)
            {
                haverecruited = 1
                break
            }
            else
            {
                i++
                continue
            }
        }
    }
}
global.currentroom = room
global.interact = 1
if "dr.ini"
{
    ini_ex = 1
    iniread = "dr.ini"
    name = ini_read_string(gml_Script_scr_ini_chapter(global.chapter, global.filechoice), "Name", "Kris")
    level = ini_read_real(gml_Script_scr_ini_chapter(global.chapter, global.filechoice), "Level", 1)
    love = ini_read_real(gml_Script_scr_ini_chapter(global.chapter, global.filechoice), "Love", 1)
    time = ini_read_real(gml_Script_scr_ini_chapter(global.chapter, global.filechoice), "Time", 0)
    roome = ini_read_real(gml_Script_scr_ini_chapter(global.chapter, global.filechoice), "Room", 0)
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
d = (global.darkzone + 1)
minutes = (time / 1800)
seconds = (((time / 1800) - minutes) * 60)
if (seconds == 60)
    seconds = 59
if (seconds < 10)
    seconds = ("0" + string(seconds))
roome
if (d == 2)
    heartsprite = spr_heart
if (d == 1)
    heartsprite = spr_heartsmall
if (d == 1)
    name = gml_Script_stringsetloc("Kris", "obj_savemenu_slash_Create_0_gml_75_0")
if (type == 1)
{
    name_current = global.truename
    love_current = global.llv
    room_current = room
    level_current = global.lv
    time_current = global.time
    for (i = 0; i < 3; i++)
    {
        name_file[i] = "Kris"
        level_file[i] = 1
        love_file[i] = 1
        time_file[i] = 0
        roome_file[i] = 0
        if "dr.ini"
        {
            ini_ex_file[i] = 1
            iniread_file[i] = "dr.ini"
            name_file[i] = ini_read_string(gml_Script_scr_ini_chapter(global.chapter, i), "Name", "Kris")
            level_file[i] = ini_read_real(gml_Script_scr_ini_chapter(global.chapter, i), "Level", 0)
            love_file[i] = ini_read_real(gml_Script_scr_ini_chapter(global.chapter, i), "Love", 1)
            time_file[i] = ini_read_real(gml_Script_scr_ini_chapter(global.chapter, i), "Time", 0)
            roome_file[i] = ini_read_real(gml_Script_scr_ini_chapter(global.chapter, i), "Room", 0)
            // WARNING: Popz'd an empty stack.
            // WARNING: Popz'd an empty stack.
        }
    }
}
