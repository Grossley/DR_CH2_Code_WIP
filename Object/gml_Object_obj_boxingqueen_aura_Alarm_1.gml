if gml_Script_i_ex(actor)
{
    var _temp_local_var_1 = actor
    if visible
    {
        var _inst = gml_Script_instance_create(x, y, o_boxingqueen_aura_image)
        _inst.sprite_index = sprite_index
        _inst.image_index = image_index
        if (visible == false)
            _inst.sprite_index = Nothing
        if (o_boxingqueen.drawflip == 0)
            _inst.image_xscale = 2
        if (o_boxingqueen.drawflip == 1)
            _inst.image_xscale = -2
        _inst.image_yscale = 2
        _inst.vspeed = -0.5
        _inst.image_blend = other.blend
    }
}
alarm[1] = refresh
