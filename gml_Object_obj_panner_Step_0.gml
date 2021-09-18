if (type == 0)
{
    gml_Script___view_set(0, 0, (gml_Script___view_get(0, 0) + panx))
    gml_Script___view_set(1, 0, (gml_Script___view_get(1, 0) + pany))
}
pantimer += 1
if (type == 1)
{
    gml_Script___view_set(0, 0, lerp(startx, finalx, (pantimer / panmax)))
    gml_Script___view_set(1, 0, lerp(starty, finaly, (pantimer / panmax)))
}
if (pantimer >= panmax)
    // WARNING: Popz'd an empty stack.
