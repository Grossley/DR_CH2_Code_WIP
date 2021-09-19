var _temp_local_var_1;
if gml_Script_i_ex(target)
{
    if (init == 0)
    {
        dark = (global.darkzone + 1)
        fakegravity = (jumpspeed / (jumptime * 0.5))
        ignoredepth = 0
        init = 1
        body_obj = gml_Script_scr_dark_marker(target.x, target.y, target.sprite_index)
        body_obj.sprite_index = target.sprite_index
        body_obj.image_index = target.image_index
        body_obj.image_speed = target.image_speed
        body_obj.image_xscale = target.image_xscale
        body_obj.image_yscale = target.image_yscale
        body_obj.depth = target.depth
        checksprite = body_obj.sprite_index
        var __depthcheck = 0
        var _temp_local_var_1 = body_obj
        _remdepth = depth
        gml_Script_scr_depth()
        if (_remdepth != depth)
            __depthcheck = 1
        depth = _remdepth
    }
    if (con == 1)
    {
        usespritestimer++
        if (usespritestimer >= 5)
        {
            body_obj.sprite_index = jumpsprite
            body_obj.image_speed = 0.25
            con = 2
        }
    }
    if (con == 2)
    {
        timer++
        jumpspeed -= fakegravity
        jumpy -= jumpspeed
        x = lerp(startx, falseendx, (timer / jumptime))
        nowy = lerp(starty, falseendy, (timer / jumptime))
        y = nowy
        target.x = x
        target.y = nowy
        body_obj.x = x
        body_obj.y = (nowy + jumpy)
        if (ignoredepth == 0)
        {
            gml_Script_scr_depth()
            depth -= 5000
            body_obj.depth = depth
        }
        if (timer >= jumptime)
        {
            body_obj.x = falseendx
            body_obj.y = falseendy
            target.x = endx
            target.y = endy
            con = 3
            usespritestimer = 0
        }
    }
    if (con == 3)
    {
        if (usesprites == 1)
        {
            body_obj.sprite_index = landsprite
            usespritestimer++
        }
        else
            usespritestimer = 10
        if (usespritestimer >= 5)
        {
            target.visible = true
            instance_destroy()
        }
    }
}
else
    instance_destroy()
if gml_Script_i_ex(body_obj)
    body_obj.image_alpha = image_alpha
