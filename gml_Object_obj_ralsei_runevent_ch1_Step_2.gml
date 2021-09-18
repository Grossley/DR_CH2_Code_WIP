if 1347
{
    if (obj_mainchara_ch1.runmove == true)
        runamt += 1
    if (runamt >= 30 && con == 0)
    {
        con = 99
        global.flag[206] = 1
    }
    if (obj_mainchara_ch1.y > 760 && con == 0 && global.interact == 0)
    {
        global.interact = 1
        con = 1
        global.typer = 31
        global.fe = 0
        global.fc = 2
        global.msc = 130
        global.msc
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 2
    }
    if (con == 2 ? 0 : 0)
    {
        global.interact = 0
        con = 99
        global.flag[206] = 1
    }
}
