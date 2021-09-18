var __depth = argument0
var __x = argument1
var __y = argument2
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
                layer_tile_x(__els[__j], (__els[__j] + __x))
                layer_tile_y(__els[__j], (__els[__j] + __y))
            }
        }
    }
}
return;
