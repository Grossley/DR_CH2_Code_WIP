_feetx = 0
if (gml_Script_i_ex(argument0) && gml_Script_i_ex(argument1))
{
    _obj1middlex = (argument0.x + (argument0.sprite_width / 2))
    return (_obj1middlex - (argument1.sprite_width / 2));
}
return;
