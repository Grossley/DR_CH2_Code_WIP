gml_Script_c_autowalk(0)
gml_Script_c_imageindex(1)
gml_Script_c_addxy(argument0, argument1)
if (argument5 == 1)
    gml_Script_c_var("stepsound", 1)
gml_Script_c_delaycmd(argument2, "imageindex", 0)
gml_Script_c_shakeobj()
if (argument4 > 1)
{
    for (__argi = 1; __argi < argument4; __argi++)
    {
        gml_Script_c_delaycmd((__argi * argument3), "imageindex", 1)
        gml_Script_c_delaycmd4((__argi * argument3), "addxy", argument0, argument1, 0, 0)
        if (argument5 == 1)
            gml_Script_c_delaycmd4((__argi * argument3), "var", 0, "stepsound", 1, 0)
        gml_Script_c_delaycmd(((__argi * argument3) + argument2), "imageindex", 0)
        gml_Script_c_delaycmd((__argi * argument3), "shakeobj", 0)
    }
}
return;
