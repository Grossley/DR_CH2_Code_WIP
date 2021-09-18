var args;
var len = argument_count
for (var i = 0; i < len; i++)
    args[i] = argument[i]
var str = gml_Script_substringargs(argument[1], 2, args)
gml_Script_c_cmd("msgset", argument[0], str, 0, 0)
return;
