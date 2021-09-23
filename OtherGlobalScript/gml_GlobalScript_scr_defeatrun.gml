if object_is_ancestor(object_index, obj_monsterparent)
{
    var __frozen = false
    if (global.flag[(51 + myself)] == 6)
        __frozen = true
    if (__frozen == true)
    {
        _rtext = gml_Script_instance_create(global.monsterx[myself], (global.monstery[myself] - 40), obj_recruitanim)
        _rtext.image_index = 12
        if (recruitable == true)
            global.flag[(global.monstertype[myself] + 600)] = -1
        global.flag[63] = 1
    }
    if (recruitable == true && global.flag[61] == 0 && __frozen == false)
    {
        global.flag[63] = 1
        if (global.flag[(global.monstertype[myself] + 600)] != -1)
        {
            global.flag[(global.monstertype[myself] + 600)] = -1
            _rtext = gml_Script_instance_create(global.monsterx[myself], (global.monstery[myself] - 40), obj_recruitanim)
            _rtext.image_index = 7
        }
    }
}
else
    fatal = false
if (!__frozen)
{
    if (fatal == true)
        defeatanim = gml_Script_instance_create(x, y, obj_deathanim)
    else
        defeatanim = gml_Script_instance_create(x, y, obj_defeatanim)
}
else if __frozen
{
    defeatanim = gml_Script_instance_create(x, y, obj_frozennpc)
    defeatanim.depth = depth
    defeatanim.inbattle = 1
}
defeatanim.sprite_index = sprite_index
defeatanim.sprite_index = hurtsprite
defeatanim.image_index = 0
defeatanim.image_xscale = image_xscale
defeatanim.image_yscale = image_yscale
instance_destroy()
return;
