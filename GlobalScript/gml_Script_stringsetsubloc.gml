var args;
var len = argument_count
for (var i = 0; i < len; i++)
    args[i] = argument[i]
var format_string = argument[0]
var localized_format_string_id = argument[(len - 1)]
format_string = localized_format_string_id
var str = gml_Script_substringargs(format_string, 1, args)
return str;
