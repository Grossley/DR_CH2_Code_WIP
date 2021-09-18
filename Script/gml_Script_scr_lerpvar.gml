if (argument_count < 6)
    ___lerpvar = gml_Script_scr_lerpvar_instance(id, argument[0], argument[1], argument[2], argument[3])
else
    ___lerpvar = gml_Script_scr_lerpvar_instance(id, argument[0], argument[1], argument[2], argument[3], argument[4], argument[5])
return ___lerpvar;
