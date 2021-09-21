if (x < gml_Script_camerax() || global.turntimer < 1)
    instance_destroy()
if gml_Script_i_ex(obj_sneo_wall_controller_new)
    x += obj_sneo_wall_controller_new.wallspeed
