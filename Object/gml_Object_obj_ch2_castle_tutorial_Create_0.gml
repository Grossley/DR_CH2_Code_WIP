var elegance, mannequin, addison, music_shop, music_shop_solid1, music_shop_solid2, music_door;
layer_set_visible("TILES_Checkboard", 0)
if (global.chapter == 2 && global.plot >= 9)
{
    var coody = gml_Script_instance_create(772, 194, obj_npc_room)
    coody.sprite_index = spr_npc_coody
    coody.image_xscale = -2
    with (coody)
        gml_Script_scr_depth()
}
else
    instance_destroy()
