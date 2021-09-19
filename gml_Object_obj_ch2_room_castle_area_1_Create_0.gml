con = -1
if (global.plot >= 200 && global.flag[387] == 0)
{
    con = 1
    gml_Script_scr_losechar()
    if instance_exists(obj_caterpillarchara)
        instance_destroy(obj_caterpillarchara)
    gml_Script_scr_getchar(2)
    gml_Script_scr_makecaterpillar((obj_mainchara.x - 40), obj_mainchara.y, 2, 0)
    if (!gml_Script_scr_keyitemcheck(8))
        gml_Script_scr_keyitemget(8)
    if (!gml_Script_scr_keyitemcheck(9))
        gml_Script_scr_keyitemget(9)
    trashy_release = 0
    trashy_leave = 0
}
if (global.plot <= 7)
    con = 10
