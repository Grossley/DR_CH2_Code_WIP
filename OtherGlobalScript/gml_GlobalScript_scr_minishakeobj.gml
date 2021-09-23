shakeobj = gml_Script_instance_create(x, y, obj_shakeobj)
shakeobj.target = id
shakeobj.shakeamt = 4
shakeobj.shakereduct = true
with (shakeobj)
    event_user(0)
return;
