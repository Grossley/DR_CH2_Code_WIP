__jump_to_point = gml_Script_instance_create(x, y, obj_jump_to_point)
__jump_to_point.target = id
with (__jump_to_point)
{
    startx = x
    starty = y
    endx = argument0
    endy = argument1
    jumpspeed = argument2
    jumptime = argument3
    jumpsprite = argument4
    landsprite = argument5
    if (argument4 > 0)
        usesprites = 1
    drawshadow = 0
}