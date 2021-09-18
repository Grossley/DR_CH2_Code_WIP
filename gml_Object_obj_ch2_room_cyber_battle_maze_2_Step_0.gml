if (northcon == 1)
{
    northcon = -1
    layer_set_visible("TILES_Secret_North", 0)
    59
    gml_Script_instance_create(0, 0, obj_shake)
    if northcollider
        northcollider
}
if (southcon == 1)
{
    southcon = -1
    layer_set_visible("TILES_Secret_South", 0)
    59
    gml_Script_instance_create(0, 0, obj_shake)
    if southcollider
        southcollider
}
