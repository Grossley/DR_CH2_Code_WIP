active = true
xx = ((19 * f) + gml_Script___view_get(0, 0))
yy = ((20 * f) + gml_Script___view_get(1, 0))
xx = round(xx)
yy = round(yy)
if (side == 0)
{
    writer = gml_Script_instance_create((xx + (10 * f)), (yy - (5 * f)), obj_writer)
    gml_Script_scr_facechoice()
    with (writer)
    {
        dialoguer = 1
        jpspecial = other.jpspecial
    }
}
if (side == 1)
{
    writer = gml_Script_instance_create((xx + (10 * f)), (yy + (150 * f)), obj_writer)
    writer.skippable = skippable
    gml_Script_scr_facechoice()
    with (writer)
    {
        dialoguer = 1
        jpspecial = other.jpspecial
    }
}
if (gml_Script_i_ex(writer) && global.fc != 0)
{
    with (writer)
    {
        dialoguer = 1
        if (originalcharline == 33)
            charline = 26
        jpspecial = other.jpspecial
    }
}
zurasucon = 1
