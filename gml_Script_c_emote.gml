if (argument_count == 0)
    gml_Script_c_cmd("emote", "!", 30, 0, 0)
else if (argument_count == 1)
    gml_Script_c_cmd("emote", argument[0], 30, 0, 0)
else if (argument_count == 2)
    gml_Script_c_cmd("emote", argument[0], argument[1], 0, 0)
else if (argument_count == 3)
    gml_Script_c_cmd("emote", argument[0], argument[1], argument[2], 0)
return;
