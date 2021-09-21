if (northcon == 1)
{
    northcon = -1
    layer_set_visible("TILES_Secret_North", 0)
    gml_Script_snd_play(snd_locker)
    gml_Script_instance_create(0, 0, obj_shake)
    if gml_Script_i_ex(northcollider)
        instance_destroy(northcollider)
}
if (southcon == 1)
{
    southcon = -1
    layer_set_visible("TILES_Secret_South", 0)
    gml_Script_snd_play(snd_locker)
    gml_Script_instance_create(0, 0, obj_shake)
    if gml_Script_i_ex(southcollider)
        instance_destroy(southcollider)
}
