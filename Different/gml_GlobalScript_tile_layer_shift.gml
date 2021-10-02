tile_layer_shift = function(argument0, argument1, argument2) // gml_Script_tile_layer_shift
{
    var __depth = argument0
    var __x = argument1
    var __y = argument2
    var __layers = layer_get_all()
    var __numlayers = array_length_1d(__layers)
    for (var __i = 0; __i < __numlayers; __i++)
    {
        if (layer_get_depth(__layers[__i]) != __depth)
        {
        }
        else
        {
            var __els = layer_get_all_elements(__layers[__i])
            var __numels = array_length_1d(__els)
            for (var __j = 0; __j < __numels; __j++)
            {
                var __eltype = layer_get_element_type(__els[__j])
                if (__eltype == 7)
                {
                    layer_tile_x(__els[__j], (layer_tile_get_x(__els[__j]) + __x))
                    layer_tile_y(__els[__j], (layer_tile_get_y(__els[__j]) + __y))
                }
            }
        }
    }
    return;
}

