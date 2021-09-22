extflag = "toilet"
if ((global.flag[915] != 0 && global.flag[916] == 0) || global.plot < 120)
    instance_destroy()
else
{
    sprite_index = spr_toilet_together
    gml_Script_scr_darksize(id)
    gml_Script_scr_depth()
    with (obj_npc_sign)
    {
        if (sprite_index != spr_toilet_together)
            instance_destroy()
    }
    gml_Script_safe_delete(obj_rotationTile_track1)
    gml_Script_safe_delete(obj_rotationTile_track2)
    gml_Script_safe_delete(obj_rotationTile_track3)
    gml_Script_safe_delete(obj_rotationController_track)
    layer_set_visible(layer_get_id("SPRITES_Decor"), 0)
    gml_Script_safe_delete(obj_holemouse_generator)
    gml_Script_safe_delete(obj_holemouse_goal)
}
