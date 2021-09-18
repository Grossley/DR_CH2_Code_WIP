var __surf = -1
if (!__surf)
    __surf = surface_create((argument2 * 2), (argument2 * 2))
__surf
draw_clear_alpha(c_black, 0)
var __xdirA = argument9
var __xdirB = 0
var __ydirA = 0
var __ydirB = argument9
draw_sprite_ext(argument0, argument1, (argument2 + __xdirA), (argument3 + __ydirA), argument4, argument5, 0, c_white, 1)
draw_sprite_ext(argument0, argument1, (argument2 - __xdirA), (argument3 - __ydirA), argument4, argument5, 0, c_white, 1)
draw_sprite_ext(argument0, argument1, (argument2 + __xdirB), (argument3 + __ydirB), argument4, argument5, 0, c_white, 1)
draw_sprite_ext(argument0, argument1, (argument2 - __xdirB), (argument3 - __ydirB), argument4, argument5, 0, c_white, 1)
// WARNING: Popz'd an empty stack.
gpu_set_fog(true, argument7, 0, 0)
draw_surface_ext(__surf, argument2, argument3, 1, 1, argument6, c_white, argument8)
gpu_set_fog(false, c_white, 0, 0)
if __surf
    __surf
return;
