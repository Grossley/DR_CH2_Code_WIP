event_user(0)
gml_Script_snd_play(166)
if (other.big == 0)
{
    var _temp_local_var_1 = other
    event_user(0)
}
fx = gml_Script_instance_create(x, y, obj_pipis_destroy_fx)
fx.image_xscale = 1.5
fx.image_yscale = 1.5
instance_destroy()
