var _temp_local_var_2, _temp_local_var_3;
var debug_inv = 0
if "chemg_god_mode"
    debug_inv = global.chemg_god_mode
if (global.inv < 0 && debug_inv == 0)
{
    if (target < 3)
    {
        if (global.hp[global.char[target]] <= 0)
        {
            // WARNING: Popz'd an empty stack.
            target = mytarget
            var _temp_local_var_2 = global.charinstance[target]
            image_blend = c_white
            darkify = false
        }
    }
    chartarget = 3
    tdamage = damage
    if (target < 3)
    {
        tdamage = ceil((tdamage - (global.battledf[target] * 3)))
        chartarget = global.char[target]
        if (global.charaction[target] == 10)
            tdamage = ceil(((2 * tdamage) / 3))
        if (tdamage < 1)
            tdamage = 1
    }
    if (!instance_exists(obj_shake_ch1))
        gml_Script_instance_create_ch1(0, 0, 1464)
    var _temp_local_var_3 = global.charinstance[target]
    hurt = true
    hurttimer = 0
}
return;
