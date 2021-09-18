var _temp_local_var_3, _temp_local_var_4;
if (global.inv < 0)
{
    var __element = 0
    if variable_instance_exists(id, "element")
    {
        if element
            __element = element
    }
    if (target < 3)
    {
        if (global.hp[global.char[target]] <= 0)
        {
            // WARNING: Popz'd an empty stack.
            target = mytarget
            var _temp_local_var_3 = global.charinstance[target]
            image_blend = c_white
            darkify = false
        }
    }
    var __remtarget = -1
    if (target == 4)
    {
        __remtarget = 4
        target = mytarget
        if ((global.hp[global.char[target]] / global.maxhp[global.char[target]]) / 2)
        {
            // WARNING: Popz'd an empty stack.
            target = mytarget
        }
        if ((global.hp[global.char[target]] / global.maxhp[global.char[target]]) / 2)
        {
            // WARNING: Popz'd an empty stack.
            target = mytarget
        }
        if (target == 0 && (global.hp[global.char[target]] / global.maxhp[global.char[target]]) < 0.35)
        {
            // WARNING: Popz'd an empty stack.
            target = mytarget
        }
        _temp_local_var_3 = global.charinstance[target]
        image_blend = c_white
        darkify = false
    }
    chartarget = 3
    tdamage = damage
    var oldcalculation = 0
    if (target < 3)
    {
        if oldcalculation
            tdamage = ceil((tdamage - (global.battledf[target] * 3)))
        else
            tdamage = gml_Script_scr_damage_calculation(tdamage, target)
        chartarget = global.char[target]
        if (global.charaction[target] == 10)
            tdamage = ceil(((2 * tdamage) / 3))
        tdamage = ceil((tdamage * gml_Script_scr_element_damage_reduction(__element, global.char[target])))
        gml_Script_debug_message(("The element is: " + string(__element)))
        if (tdamage < 1)
            tdamage = 1
    }
    if (!instance_exists(obj_shake))
        gml_Script_instance_create(0, 0, obj_shake)
    var _temp_local_var_4 = global.charinstance[target]
    hurt = true
    hurttimer = 0
}
return;
