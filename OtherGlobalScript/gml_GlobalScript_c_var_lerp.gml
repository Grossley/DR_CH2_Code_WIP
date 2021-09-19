if (argument_count < 5)
    gml_Script_c_cmd_x("var", 0, argument[0], argument[1], argument[2], argument[3], 0)
else
    gml_Script_c_cmd_x("var", 0, argument[0], argument[1], argument[2], argument[3], argument[4])
return;
