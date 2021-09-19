_stickto = gml_Script_instance_create(0, 0, obj_stickto)
_stickto.stickingobj = id
_stickto.stucktoobj = argument0
_stickto.relativedepth = argument1
with (_stickto)
    event_user(0)
return;
