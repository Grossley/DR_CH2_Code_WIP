if (!variable_global_exists("chemg_stack"))
{
    global.chemg_stack = array_create(0)
    global.chemg_stack[0] = 0
}
var top_ndx = global.chemg_stack[0]
if (top_ndx <= 0)
    show_error("stack empty", 1)
global.chemg_stack[0] = (top_ndx - 1)
return global.chemg_stack[top_ndx];
