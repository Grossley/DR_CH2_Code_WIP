if (timer > 0)
    return;
timer = 1
destroyable = 0
depth -= 40
d = gml_Script_instance_create(x, y, obj_fadeout)
d.image_blend = c_white
