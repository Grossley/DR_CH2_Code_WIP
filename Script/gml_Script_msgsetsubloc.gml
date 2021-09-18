var args;
var len = argument_count
for (var i = 0; i < len; i++)
    args[i] = argument[i]
var msg_index = argument[0]
var format_string = argument[1]
var localized_format_string_id = argument[(len - 1)]
format_string = localized_format_string_id
var str = gml_Script_substringargs(format_string, 2, args)
gml_Script_msgset(msg_index, str)
return;
