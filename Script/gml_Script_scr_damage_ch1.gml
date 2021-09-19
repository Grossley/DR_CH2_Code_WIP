var debug_inv = 0
if variable_global_exists("chemg_god_mode")
    debug_inv = global.chemg_god_mode
if (global.inv < 0 && debug_inv == 0)
{
    if (target < 3)
    {
        if (global.hp[global.char[target]] <= 0)
        {
            gml_Script_scr_randomtarget_ch1()
            target = mytarget
            with (global.charinstance[target])
			{
				image_blend = c_white
				darkify = false
			}
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
    with (global.charinstance[target])
	{
		hurt = true
		hurttimer = 0
	}
}
return;
