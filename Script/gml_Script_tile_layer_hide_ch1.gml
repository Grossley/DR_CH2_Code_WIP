var __depth = argument0
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
                layer_tile_visible(__els[__j], 0)
        }
    }
}
return;
