con = -1
customcon = 0
weird = 0
if (global.flag[915] == 6 && global.flag[916] == 0)
    weird = 1
drawx = 0
cityscape_parallax = 1
circle_zoom_start = 0
circle_zoom = -1
circle_zoom_timer = 0
if (global.chapter != 2 || global.plot >= 99)
    con = 999
else if (weird == 0)
{
    // WARNING: Popz'd an empty stack.
    274
    2
    3
    4
    gml_Script_scr_makecaterpillar(obj_mainchara.x, ((obj_mainchara.y - 16) + 2), 2, 0)
    gml_Script_scr_makecaterpillar((obj_mainchara.x - 4), ((obj_mainchara.y - 20) + 2), 4, 1)
    gml_Script_scr_makecaterpillar(obj_mainchara.x, ((obj_mainchara.y - 12) - 2), 3, 2)
}
