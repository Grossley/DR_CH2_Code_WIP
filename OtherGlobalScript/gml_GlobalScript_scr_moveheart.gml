global.inv = 0
if (global.chapter == 2 && instance_exists(obj_gigaqueen_enemy))
    return gml_Script_instance_create((o_boxingcontroller.x + 4), (o_boxingcontroller.y - 120), obj_moveheart);
else
    return gml_Script_instance_create((obj_herokris.x + 10), (obj_herokris.y + 40), obj_moveheart);
