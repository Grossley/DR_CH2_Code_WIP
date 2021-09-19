if (con == 1)
{
    global.flag[340] = 1
    con = -1
    layer_set_visible("TILES_Secret", 0)
    gml_Script_safe_delete(exitcollider)
}
