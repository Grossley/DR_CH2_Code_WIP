var _temp_local_var_1;
layerarray = 
var i = 0
while (i < array_length_1d(layerarray))
{
    if (layerarray[i] == "GIVE_DEPTH")
    {
        elements = layerarray[i]
        for (var j = 0; j < array_length_1d(elements); j++)
        {
            if (elements[j] == 4)
            {
                layersprite = gml_Script_scr_marker(layer_sprite_get_x(elements[j]), layer_sprite_get_y(elements[j]), elements[j])
                layersprite.image_xscale = elements[j]
                layersprite.image_yscale = elements[j]
                layersprite.image_speed = elements[j]
                layersprite.image_index = elements[j]
                var _temp_local_var_1 = layersprite
            }
        }
        break
    }
    else
    {
        i++
        continue
    }
}
// WARNING: Popz'd an empty stack.
