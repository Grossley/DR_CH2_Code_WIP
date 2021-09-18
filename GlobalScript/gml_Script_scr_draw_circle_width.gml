if (argument3 <= 1 || argument3 >= argument2)
{
    draw_circle(argument0, argument1, argument2, argument3 < argument2)
    return;
}
ring_surf = -1
if (!ring_surf)
{
    ring_surf = surface_create((argument2 * 2), (argument2 * 2))
    ring_surf
    draw_clear_alpha(c_black, 0)
    draw_circle(argument2, argument2, argument2, 0)
    3
    draw_circle(argument2, argument2, (argument2 - argument3), 0)
    0
    // WARNING: Popz'd an empty stack.
}
draw_surface(ring_surf, (argument0 - argument2), (argument1 - argument2))
return;
