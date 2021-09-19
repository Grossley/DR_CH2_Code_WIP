con = -1
customcon = 0
if (global.chapter != 2 || global.plot < 200 || global.plot >= 205)
    instance_destroy()
else
{
    gml_Script_scr_losechar()
    if instance_exists(obj_caterpillarchara)
        instance_destroy(obj_caterpillarchara)
}
