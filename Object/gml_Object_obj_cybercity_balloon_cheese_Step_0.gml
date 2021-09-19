var _temp_local_var_1;
siner += 1
if (mode == 0)
    y = (ystart + (sin((siner / 16)) * 5))
if place_meeting(x, y, obj_forcefield)
    broken = 1
if broken
{
    image_index = 1
    gml_Script_snd_play(165)
    afterimage = gml_Script_instance_create((x + 14), (y + 14), obj_afterimage_cut)
    afterimage.sprite_index = sprite_index
    afterimage.image_index = image_index
    afterimage.image_blend = image_blend
    afterimage.image_speed = 0
    afterimage.depth = depth
    gml_Script_scr_darksize(afterimage)
    afterimage.image_angle = image_angle
    var _temp_local_var_1 = afterimage
    event_user(0)
}
