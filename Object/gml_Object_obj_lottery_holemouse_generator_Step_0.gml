gentimer -= 1
if (gentimer <= 0)
    mousecreate = 0
if ((gentimer % 5) == 1 && mousecreate == 1)
    gml_Script_instance_create(x, y, obj_holemouse_lottery)
