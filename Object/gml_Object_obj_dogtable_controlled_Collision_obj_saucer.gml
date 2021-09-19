var _temp_local_var_1;
targ = 15
if instance_exists(obj_controller_dining3)
{
    if (instance_number(obj_saucer) == targ)
    {
        obj_controller_dining3.key = gml_Script_instance_create(other.x, other.y, obj_marker)
        obj_controller_dining3.key.sprite_index = spr_ch2_gimmick_saucer_key
        obj_controller_dining3.key.image_xscale = 2
        obj_controller_dining3.key.image_yscale = 2
        if (obj_controller_dining3.dogcon == 70)
            obj_controller_dining3.dogcon = 71
    }
}
var _temp_local_var_1 = other
gml_Script_instance_create((x + 25), (y + 34), obj_saucerTable_knocked)
instance_destroy()
