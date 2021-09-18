var _temp_local_var_1;
image_xscale = 2
image_yscale = 2
image_speed = 0
image_index = 0
bumped = 0
drawthrash = 0
con = 0
timer = 0
fallnow = 0
boatx = 90
boaty = 60
depth = 830000
if (object_index == obj_pipis_bullet_cone)
{
    boatfront = gml_Script_instance_create((x + boatx), (y + boaty), object_index)
    var _temp_local_var_1 = object_index
    image_xscale = 2
    image_yscale = 2
    image_speed = 0
    isrouxls = 0
}
