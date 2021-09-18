if (string_pos("`", argument0) > 0)
{
    var __newstring = string_replace(argument0, "`#", "<hash>")
    __newstring = __newstring
    return string_replace(__newstring, "<hash>", "#");
}
else
    return argument0;
