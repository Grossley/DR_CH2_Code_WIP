var __prop = argument0
var __bind = argument1
var __val = argument2
var __backinfo = argument3
if (__backinfo[0] == -1)
    return -1;
var __backid = __backinfo[0]
var __layerid = __backinfo[1]
var __isfore = __backinfo[2]
if (__prop == 1)
{
    if (round(__val) != round(__isfore))
    {
        var __visible = layer_get_visible(__layerid)
        var __index = layer_background_get_sprite(__backid)
        var __htiled = layer_background_get_htiled(__backid)
        var __vtiled = layer_background_get_vtiled(__backid)
        var __stretch = layer_background_get_stretch(__backid)
        var __blend = layer_background_get_blend(__backid)
        var __alpha = layer_background_get_alpha(__backid)
        var __xscale = layer_background_get_xscale(__backid)
        var __yscale = layer_background_get_yscale(__backid)
        var __x = layer_get_x(__layerid)
        var __y = layer_get_y(__layerid)
        var __hspeed = layer_get_hspeed(__layerid)
        var __vspeed = layer_get_vspeed(__layerid)
        gml_Script___background_set_element(__bind, __visible, __val, __index, __x, __y, __htiled, __vtiled, __xscale, __yscale, __stretch, __hspeed, __vspeed, __blend, __alpha)
    }
}
else
{
    switch __prop
    {
        case 0:
            layer_set_visible(__layerid, __val)
            layer_background_visible(__backid, __val)
            break
        case 2:
            layer_background_change(__backid, __val)
            if sprite_exists(__val)
            {
                layer_background_blend(__backid, c_white)
                layer_background_alpha(__backid, 1)
            }
            break
        case 3:
            layer_x(__layerid, __val)
            break
        case 4:
            layer_y(__layerid, __val)
            break
        case 7:
            layer_background_htiled(__backid, __val)
            break
        case 8:
            layer_background_vtiled(__backid, __val)
            break
        case 9:
            layer_background_xscale(__backid, __val)
            break
        case 10:
            layer_background_yscale(__backid, __val)
            break
        case 11:
            layer_hspeed(__layerid, __val)
            break
        case 12:
            layer_vspeed(__layerid, __val)
            break
        case 13:
            layer_background_blend(__backid, __val)
            break
        case 14:
            layer_background_alpha(__backid, __val)
            break
        default:
            break
    }

}
return -1;
