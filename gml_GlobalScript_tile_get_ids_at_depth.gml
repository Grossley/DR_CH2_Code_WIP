var __tiles;
var __depth = argument0
__tiles[0] = -1
var __currtile = 0
var __layers = 
var __numlayers = __layers
for (var __i = 0; __i < __numlayers; __i++)
{
    if (__layers[__i] != __depth)
    {
    }
    else
    {
        var __els = __layers[__i]
        var __numels = __els
        for (var __j = 0; __j < __numels; __j++)
        {
            var __eltype = __els[__j]
            if (__eltype == 7)
            {
                __tiles[__currtile] = __els[__j]
                __currtile++
            }
        }
    }
}
return __tiles;
