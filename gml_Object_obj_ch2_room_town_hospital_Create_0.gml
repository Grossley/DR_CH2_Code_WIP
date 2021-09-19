con = -1
customcon = 0
noellegame = 1
gamecon = 0
doormoved = 0
if (global.chapter != 2 || global.flag[316] == 1)
    instance_destroy()
else
{
    gml_Script_scr_losechar()
    if instance_exists(obj_caterpillarchara)
        instance_destroy(obj_caterpillarchara)
    gml_Script_scr_getchar(2)
    gml_Script_scr_getchar(3)
}
