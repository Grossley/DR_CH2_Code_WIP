if (global.flag[356] == 1)
{
    plate = gml_Script_instance_create(1004, 294, obj_soliddark)
    plate.visible = true
    plate.image_xscale = 2
    plate.image_yscale = 2
    plate.sprite_index = spr_plate
    with (plate)
		gml_Script_scr_depth()
}
