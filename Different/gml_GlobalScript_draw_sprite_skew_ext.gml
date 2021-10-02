draw_sprite_skew_ext = function(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10) // gml_Script_draw_sprite_skew_ext
{
    var sprite = argument0
    var index = argument1
    var xx = argument2
    var yy = argument3
    var xscale = argument4
    var yscale = argument5
    var cosAngle = cos(degtorad(argument6))
    var sinAngle = sin(degtorad(argument6))
    var tint = argument7
    var alpha = argument8
    var hskew = argument9
    var vskew = argument10
    var sprTex = sprite_get_texture(sprite, index)
    var sprWidth = sprite_get_width(sprite)
    var sprHeight = sprite_get_height(sprite)
    var sprXOrig = sprite_get_xoffset(sprite)
    var sprYOrig = sprite_get_yoffset(sprite)
    draw_primitive_begin_texture(5, sprTex)
    var tempX = (((-sprXOrig) + ((sprYOrig / sprHeight) * hskew)) * xscale)
    var tempY = (((-sprYOrig) + ((sprXOrig / sprWidth) * (-vskew))) * yscale)
    draw_vertex_texture_color(((xx + (tempX * cosAngle)) - (tempY * sinAngle)), ((yy + (tempX * sinAngle)) + (tempY * cosAngle)), 0, 0, tint, alpha)
    tempX = (((sprWidth + ((sprYOrig / sprHeight) * hskew)) - sprXOrig) * xscale)
    tempY = (((-sprYOrig) + ((1 - (sprXOrig / sprWidth)) * vskew)) * yscale)
    draw_vertex_texture_color(((xx + (tempX * cosAngle)) - (tempY * sinAngle)), ((yy + (tempX * sinAngle)) + (tempY * cosAngle)), 1, 0, tint, alpha)
    tempX = (((-sprXOrig) + ((1 - (sprYOrig / sprHeight)) * (-hskew))) * xscale)
    tempY = (((sprHeight - sprYOrig) + ((sprXOrig / sprWidth) * (-vskew))) * yscale)
    draw_vertex_texture_color(((xx + (tempX * cosAngle)) - (tempY * sinAngle)), ((yy + (tempX * sinAngle)) + (tempY * cosAngle)), 0, 1, tint, alpha)
    tempX = (((sprWidth - sprXOrig) + ((1 - (sprYOrig / sprHeight)) * (-hskew))) * xscale)
    tempY = (((sprHeight - sprYOrig) + ((1 - (sprXOrig / sprWidth)) * vskew)) * yscale)
    draw_vertex_texture_color(((xx + (tempX * cosAngle)) - (tempY * sinAngle)), ((yy + (tempX * sinAngle)) + (tempY * cosAngle)), 1, 1, tint, alpha)
    draw_primitive_end()
    return;
}

