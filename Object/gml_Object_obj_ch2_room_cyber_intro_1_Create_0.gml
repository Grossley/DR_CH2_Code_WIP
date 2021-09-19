con = -1
if (global.plot < 50)
{
    con = 1
    gml_Script_scr_losechar()
    if instance_exists(obj_caterpillarchara)
        instance_destroy(obj_caterpillarchara)
    gml_Script_scr_getchar(2)
    gml_Script_scr_makecaterpillar((obj_mainchara.x - 40), obj_mainchara.y, 2, 0)
}
else
    instance_destroy()
