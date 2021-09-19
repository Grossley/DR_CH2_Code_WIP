gml_Script_scr_bullet_init()
grazepoints = 5
timepoints = 5
active = false
if (y < (gml_Script___view_get(1, 0) + 20))
    y = (gml_Script___view_get(1, 0) + 20)
if (y > (gml_Script___view_get(1, 0) + 460))
    y = (gml_Script___view_get(1, 0) + 460)
dont = 1
difficulty = 1
times = 0
activetimer = 0
image_alpha = 0
if (!instance_exists(obj_heart))
    instance_destroy()
type = 0
