var __layers = 
var __numlayers = __layers
for (var __i = 0; __i < __numlayers; __i++)
{
    var __layer_id = __layers[__i]
    var __els = __layer_id
    var __numels = __els
    var __name = __layer_id
    var __pos = string_pos("_lang_", __name)
    if (__pos > 0 && __name > (__pos + 8))
    {
        var __lang = string_copy(__name, (__pos + 6), 2)
        if (__lang != global.lang)
            layer_set_visible(__layer_id, 0)
        else
        {
            for (var __j = 0; __j < __numels; __j++)
            {
                var __id = __els[__j]
                var __eltype = __id
                if (__eltype == 2)
                {
                }
                else if (__eltype == 4)
                {
                    var __spr = __id
                    __name = __spr
                    ((("  sprite: " + string(__j)) + ": ") + __name)
                    __pos = string_pos("_lang_", __name)
                    if (__pos > 0 && __name > (__pos + 8))
                    {
                        __lang = string_copy(__name, (__pos + 6), 2)
                        if (__lang != global.lang)
                            __id
                    }
                }
                else if (__eltype == 1)
                    ("  background: " + string(__j))
                else if (__eltype == 5)
                    ("  tilemap: " + string(__j))
                else if (__eltype == 6)
                    ("  particlesystem: " + string(__j))
                else if (__eltype == 7)
                {
                }
                else
                    ("  unknown: " + string(__j))
            }
        }
    }
    else
    {
        for (var __j = 0; __j < __numels; __j++)
        {
            var __id = __els[__j]
            var __eltype = __id
            if (__eltype == 2)
            {
            }
            else if (__eltype == 4)
            {
                var __spr = __id
                __name = __spr
                ((("  sprite: " + string(__j)) + ": ") + __name)
                __pos = string_pos("_lang_", __name)
                if (__pos > 0 && __name > (__pos + 8))
                {
                    __lang = string_copy(__name, (__pos + 6), 2)
                    if (__lang != global.lang)
                        __id
                }
            }
            else if (__eltype == 1)
                ("  background: " + string(__j))
            else if (__eltype == 5)
                ("  tilemap: " + string(__j))
            else if (__eltype == 6)
                ("  particlesystem: " + string(__j))
            else if (__eltype == 7)
            {
            }
            else
                ("  unknown: " + string(__j))
        }
    }
}
