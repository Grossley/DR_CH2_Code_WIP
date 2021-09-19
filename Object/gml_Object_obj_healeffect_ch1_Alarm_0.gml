times += 1
gml_Script_instance_create_ch1(((x + 30) + random(20)), ((y + 30) + random(20)), 1525)
alarm[0] = 3
if (times > 2)
    instance_destroy()
