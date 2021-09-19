var _temp_local_var_1, _temp_local_var_2;
if (global.inv < 0)
{
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
    chartarget = 3
    var _targetChar = global.char[target]
    if (global.hp[_targetChar] > (global.maxhp[_targetChar] / 2))
        tdamage = ceil((global.maxhp[_targetChar] / 5))
    else if (global.hp[_targetChar] > (global.maxhp[_targetChar] / 5))
        tdamage = ceil((global.maxhp[_targetChar] / 10))
    else if (global.hp[_targetChar] > (global.maxhp[_targetChar] / 20))
        tdamage = ceil((global.maxhp[_targetChar] / 25))
    else if (global.hp[_targetChar] > 1)
        tdamage = (global.hp[_targetChar] - 1)
    else
        tdamage = 25
    if (target < 3)
    {
        tdamage = ceil((tdamage - (global.battledf[target] * 3)))
        chartarget = global.char[target]
        if (global.charaction[target] == 10)
            tdamage = ceil(((2 * tdamage) / 3))
        if (tdamage < 1)
            tdamage = 1
    }
    if (!instance_exists(obj_shake))
        gml_Script_instance_create(0, 0, obj_shake)
    var _temp_local_var_2 = global.charinstance[target]
    hurt = true
    hurttimer = 0
}
return;
