global.flag[31] = 1
if (!global.currentsong[1])
{
    global.currentsong[0] = "field_of_hopes.ogg"
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.7, 1)
    if (global.flag[209] == 0)
    {
        global.flag[209] = 1
        gml_Script_instance_create_ch1(0, 0, 1456)
    }
}
