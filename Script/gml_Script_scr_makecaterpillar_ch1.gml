global.cinstance[argument3] = gml_Script_instance_create_ch1(argument0, argument1, 1489)
global.cinstance[argument3].target = (12 + (argument3 * 12))
if (argument2 == 3)
{
    with (global.cinstance[argument3])
	{
		usprite = spr_ralseiu_ch1
		dsprite = spr_ralseid_ch1
		rsprite = spr_ralseir_ch1
		lsprite = spr_ralseil_ch1
	}
}
return global.cinstance[argument3];
