var __result;
var __bind = argument0
__result[0] = -1
__result[1] = -1
__result[2] = -1
var __fgstring = "Compatibility_Foreground_"
var __bgstring = "Compatibility_Background_"
var __fglen = __fgstring
var __bglen = __bgstring
var __layerlist = 
var __layerlistlength = __layerlist
var __layerid = -1
var __isforeground = 0
var __i = 0
while (__i < __layerlistlength)
{
    var __layername = __layerlist[__i]
    if (string_pos(__fgstring, __layername) > 0)
    {
        var __slotchr = string_char_at(__layername, (__fglen + 1))
        if (__slotchr == "")
        {
            __i++
            continue
        }
        else
        {
            var __slot = __slotchr
            if (__slot == __bind)
            {
                __layerid = __layerlist[__i]
                __isforeground = 1
                break
            }
            else
            {
                __i++
                continue
            }
        }
    }
    else if (string_pos(__bgstring, __layername) > 0)
    {
        __slotchr = string_char_at(__layername, (__bglen + 1))
        if (__slotchr == "")
        {
            __i++
            continue
        }
        else
        {
            __slot = __slotchr
            if (__slot == __bind)
            {
                __layerid = __layerlist[__i]
                __isforeground = 0
                break
            }
            else
            {
                __i++
                continue
            }
        }
    }
    else
    {
        __i++
        continue
    }
}
if (__layerid != -1)
{
    var __els = __layerid
    var __elslength = __els
    for (__i = 0; __i < __elslength; __i++)
    {
        if (__els[__i] == 1)
        {
            __result[0] = __els[__i]
            __result[1] = __layerid
            __result[2] = __isforeground
        }
    }
}
else
{
    var __newback = gml_Script___background_set_element(__bind, 0, 0, -1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 16777215, 1)
    __result[0] = __newback[0]
    __result[1] = __newback[1]
    __result[2] = 0
}
return __result;
