var _temp_local_var_2;
// WARNING: Popz'd an empty stack.
if (active && obj_thrashmachine.duckmode)
{
    explosion_marker = gml_Script_instance_create((x + 10), (y + 20), obj_animation_dx)
    explosion_marker.image_yscale = 3
    explosion_marker.image_xscale = 3
    explosion_marker.depth = (depth - 5)
    explosion_marker.sprite_index = spr_realisticexplosion
    explosion_marker.endtime = 30
    var _temp_local_var_2 = explosion_marker
    gml_Script_snd_play(188)
}
