con = -1
customcon = 0
exitcollider = self
if (global.chapter != 2 || global.plot >= 110)
    // WARNING: Popz'd an empty stack.
else
{
    nisesusie = gml_Script_instance_create(258, 166, obj_npc_sign)
    nisesusie.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_down
    nisesusie.image_speed = 0
    berdlynpc = gml_Script_instance_create(332, 190, obj_npc_sign)
    berdlynpc.sprite_index = spr_berdly_walk_down_dw
    exitcollider = gml_Script_instance_create(575, 200, obj_soliddark)
    exitcollider.image_xscale = 2
    exitcollider.image_yscale = 2
}
