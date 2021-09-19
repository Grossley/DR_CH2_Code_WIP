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
    gml_Script_safe_delete(1182)
    gml_Script_safe_delete(1183)
    gml_Script_safe_delete(1184)
    gml_Script_safe_delete(1179)
    layer_set_visible(layer_get_id("SPRITES_Decor"), 0)
    gml_Script_safe_delete(1164)
    gml_Script_safe_delete(1163)
}
