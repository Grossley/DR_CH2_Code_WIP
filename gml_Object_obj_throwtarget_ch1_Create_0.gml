var _temp_local_var_1;
image_xscale = 2
image_yscale = 2
image_speed = 0.2
good = 1
offing = 0
if (object_index == obj_pipis_bullet_cone)
{
    tt = gml_Script_instance_create_ch1(x, y, 1580)
    tt.depth = (depth + 1)
    var _temp_local_var_1 = tt
    offing = 0
    good = 0
    sprite_index = spr_checkers_idle_crownless_ch1
}
con = 0
