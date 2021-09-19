var args;
var len = argument_count
for (var i = 0; i < len; i++)
    args[i] = argument[i]
var str = gml_Script_substringargs(argument[0], 1, args)
gml_Script_msgnext(str)
return;
