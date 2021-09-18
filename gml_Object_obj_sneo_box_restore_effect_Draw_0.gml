if (!643)
{
    // WARNING: Popz'd an empty stack.
    return;
}
left = lerp(x, obj_shrinktangle.left, glerp)
right = lerp(x, obj_shrinktangle.right, glerp)
top = lerp(y, obj_shrinktangle.top, glerp)
bottom = lerp(y, obj_shrinktangle.bottom, glerp)
glerp += 0.1
var colo = 
49152
0.25
for (i = 0; i < size; i++)
    draw_rectangle(((left - size) + i), ((top - size) + i), ((right + size) - i), ((bottom + size) - i), true)
1
colo
if (glerp >= 1)
    // WARNING: Popz'd an empty stack.
