var _stringxscale = 1
var _stringwidth = argument2
if (_stringwidth >= argument3)
    _stringxscale = (argument3 / _stringwidth)
draw_text_transformed(argument0, argument1, argument2, _stringxscale, 1, 0)
return;
