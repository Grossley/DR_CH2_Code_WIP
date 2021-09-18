var sprite = argument0
var index = argument1
var xx = argument2
var yy = argument3
var xscale = argument4
var yscale = argument5
var cosAngle = argument6
var sinAngle = argument6
var tint = argument7
var alpha = argument8
var hskew = argument9
var vskew = argument10
var sprTex = sprite_get_texture(sprite, index)
var sprWidth = sprite
var sprHeight = sprite
var sprXOrig = sprite
var sprYOrig = sprite
var _nn = 0
draw_primitive_begin_texture(5, sprTex)
var tempX = ((((-sprXOrig) + ((sprYOrig / sprHeight) * _nn)) * xscale) + hskew)
var tempY = ((((-sprYOrig) + ((sprXOrig / sprWidth) * (-_nn))) * yscale) + vskew)
draw_vertex_texture_color(((xx + (tempX * cosAngle)) - (tempY * sinAngle)), ((yy + (tempX * sinAngle)) + (tempY * cosAngle)), 0, 0, tint, alpha)
tempX = ((((sprWidth + ((sprYOrig / sprHeight) * _nn)) - sprXOrig) * xscale) - hskew)
tempY = ((((-sprYOrig) + ((1 - (sprXOrig / sprWidth)) * _nn)) * yscale) - vskew)
draw_vertex_texture_color(((xx + (tempX * cosAngle)) - (tempY * sinAngle)), ((yy + (tempX * sinAngle)) + (tempY * cosAngle)), 1, 0, tint, alpha)
tempX = ((((-sprXOrig) + ((1 - (sprYOrig / sprHeight)) * (-_nn))) * xscale) - hskew)
tempY = ((((sprHeight - sprYOrig) + ((sprXOrig / sprWidth) * (-_nn))) * yscale) + vskew)
draw_vertex_texture_color(((xx + (tempX * cosAngle)) - (tempY * sinAngle)), ((yy + (tempX * sinAngle)) + (tempY * cosAngle)), 0, 1, tint, alpha)
tempX = ((((sprWidth - sprXOrig) + ((1 - (sprYOrig / sprHeight)) * (-_nn))) * xscale) + hskew)
tempY = ((((sprHeight - sprYOrig) + ((1 - (sprXOrig / sprWidth)) * _nn)) * yscale) - vskew)
draw_vertex_texture_color(((xx + (tempX * cosAngle)) - (tempY * sinAngle)), ((yy + (tempX * sinAngle)) + (tempY * cosAngle)), 1, 1, tint, alpha)
// WARNING: Popz'd an empty stack.
return;
