with (obj_dmgwriter)
{
    if (delaytimer >= 1)
        killactive = 1
}
if (target == 4)
{
    gml_Script_scr_randomtarget_old()
    target = mytarget
}
if (target < 3)
{
    if (global.hp[global.char[target]] <= 0)
    {
        gml_Script_scr_randomtarget_old()
        target = mytarget
        var _temp_local_var_1 = global.charinstance[target]
        image_blend = c_white
        darkify = false
    }
}
gml_Script_scr_heal(target, argument0)
var _temp_local_var_2 = global.charinstance[target]
ha = gml_Script_instance_create(x, y, obj_healanim)
ha.target = id
dmgwr = gml_Script_scr_dmgwriter_selfchar()
var _temp_local_var_3 = dmgwr
delay = 8
type = 3
damage = argument0
