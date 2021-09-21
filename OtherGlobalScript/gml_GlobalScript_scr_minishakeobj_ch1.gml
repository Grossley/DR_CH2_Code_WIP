shakeobj = gml_Script_instance_create_ch1(x, y, obj_shakeobj_ch1)
shakeobj.target = id
shakeobj.shakeamt = 4
shakeobj.shakereduct = 1
with (shakeobj)
    event_user(0)
return;
