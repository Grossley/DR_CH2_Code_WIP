frozenbody = gml_Script_instance_create(x, y, obj_frozennpc)
frozenbody.sprite_index = sprite_index
frozenbody.image_index = image_index
frozenbody.image_xscale = image_xscale
frozenbody.image_yscale = image_yscale
frozenbody.fresh = 1
if (argument0 == 0)
    frozenbody.skipsolid = 1
else
    frozenbody.skipsolid = 0
frozenbody.timer = 1
frozenbody.depth = depth
// WARNING: Popz'd an empty stack.
return;
