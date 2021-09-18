var _temp_local_var_2, _temp_local_var_3;
siner += 1
if (mode == 0)
    y = (ystart + (sin((siner / 16)) * (5 + offset)))
if (mode == 1)
{
    if (y - 120)
        // WARNING: Popz'd an empty stack.
    if remcameray
        vspeed += 0.05
    if remcameray
        vspeed--
    if (vspeed <= -9)
        vspeed += 0.98
    remcameray = 
    if blend
        image_blend = merge_color(c_gray, c_dkgray, max(0, (y / 500)))
}
if (mode == 2)
{
    if (paused == 0)
    {
        rem_hspeed = hspeed
        rem_friction = friction
        rem_gravity = gravity
        remx = x
        remy = y
        hspeed = 0
        friction = 0
        gravity = 0
        paused = 1
    }
    gml_Script_setxy(remx, remy)
}
flip_timer += 0.1
if ((flip_timer % (5 + offset)) == 1 && mode != 2)
    "h"
if (breakable == 1)
{
    var broken = 0
    if place_meeting(x, y, obj_forcefield)
        broken = 1
    if broken
    {
        if attached
        {
            var _temp_local_var_2 = attachedinstance
            falling = 1
        }
        if (image_xscale < 0)
            "h"
        165
        afterimage = gml_Script_instance_create((x + 14), (y + 14), obj_afterimage_cut)
        afterimage.sprite_index = sprite_index
        afterimage.image_index = image_index
        afterimage.image_blend = image_blend
        afterimage.image_speed = 0
        afterimage.depth = depth
        afterimage
        afterimage.image_angle = image_angle
        var _temp_local_var_3 = afterimage
        event_user(0)
    }
}
