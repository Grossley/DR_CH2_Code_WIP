var __result;
var __bind = argument0
var __vis = argument1
var __fore = argument2
var __back = argument3
var __x = argument4
var __y = argument5
var __htiled = argument6
var __vtiled = argument7
var __xscale = argument8
var __yscale = argument9
var __stretch = argument10
var __hspeed = argument11
var __vspeed = argument12
var __blend = argument13
var __alpha = argument14
var __nearestdepth = 1000000000
var __farthestdepth = -1000000000
var __depthinc = 100
__result[0] = -1
__result[1] = -1
var __fgstring = "Compatibility_Foreground_"
var __bgstring = "Compatibility_Background_"
var __colstring = "Compatibility_Colour"
var __fglen = __fgstring
var __bglen = __bgstring
var __layerlist = 
var __layerlistlength = __layerlist
var __collayer = -1
for (var __i = 0; __i < 8; __i++)
{
    __slots[__i] = -1
    __isforeground[__i] = 0
}
for (__i = 0; __i < __layerlistlength; __i++)
{
    var __layername = __layerlist[__i]
    if (string_pos(__fgstring, __layername) > 0)
    {
        var __slotchr = string_char_at(__layername, (__fglen + 1))
        if (__slotchr == "")
        {
        }
        else
        {
            var __slot = __slotchr
            __slots[__slot] = __layerlist[__i]
            __isforeground[__slot] = 1
        }
    }
    else if (string_pos(__bgstring, __layername) > 0)
    {
        __slotchr = string_char_at(__layername, (__bglen + 1))
        if (__slotchr == "")
        {
        }
        else
        {
            __slot = __slotchr
            __slots[__slot] = __layerlist[__i]
            __isforeground[__slot] = 0
        }
    }
    else if (string_pos(__colstring, __layername) > 0)
    {
        __collayer = __layerlist[__i]
        layer_depth(__layerlist[__i], __farthestdepth)
    }
    else
    {
        var __currdepth = __layerlist[__i]
        if (__currdepth < __nearestdepth)
            __nearestdepth = __currdepth
        if (__currdepth > __farthestdepth)
            __farthestdepth = __currdepth
    }
}
__farthestdepth += (__depthinc + 1000)
__nearestdepth -= __depthinc
__farthestdepth = max(__farthestdepth, 2147483600)
__nearestdepth = min(__nearestdepth, -2147482000)
for (__i = 0; __i < 8; __i++)
{
    if (__slots[__i] != -1)
    {
        var __depth = 0
        if (__isforeground[__i] == 1)
            __depth = (__nearestdepth - (__i * __depthinc))
        else
            __depth = ((__farthestdepth - __depthinc) - (__slot * __depthinc))
        layer_depth(__slots[__i], __depth)
    }
}
if (__collayer != -1)
    layer_depth(__collayer, __farthestdepth)
if (__bind == -1)
{
    __layername = __colstring
    var __layerdepth = __farthestdepth
}
else if (__fore == 1)
{
    __layername = (__fgstring + string(__bind))
    __layerdepth = (__nearestdepth - (__bind * __depthinc))
}
else
{
    __layername = (__bgstring + string(__bind))
    __layerdepth = ((__farthestdepth - __depthinc) - (__bind * __depthinc))
}
if (__bind == -1)
    var __layerid = __collayer
else
    __layerid = __slots[__bind]
if (__layerid != -1)
    __layerid
__layerid = layer_create(__layerdepth, __layername)
layer_x(__layerid, __x)
layer_y(__layerid, __y)
layer_hspeed(__layerid, __hspeed)
layer_vspeed(__layerid, __vspeed)
var __backel = layer_background_create(__layerid, __back)
layer_background_visible(__backel, __vis)
layer_background_htiled(__backel, __htiled)
layer_background_vtiled(__backel, __vtiled)
layer_background_xscale(__backel, __xscale)
layer_background_yscale(__backel, __yscale)
layer_background_stretch(__backel, __stretch)
layer_background_blend(__backel, __blend)
layer_background_alpha(__backel, __alpha)
__result[0] = __backel
__result[1] = __layerid
return __result;
