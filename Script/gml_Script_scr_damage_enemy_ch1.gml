dm = gml_Script_instance_create_ch1(global.monsterx[argument0], ((global.monstery[argument0] + 20) - (global.hittarget[argument0] * 20)), 1629)
dm.type = (global.char[caster] - 1)
dm.damage = argument1
global.monsterhp[argument0] -= argument1
if (argument1 > 0)
{
    with (global.monsterinstance[argument0])
    {
        shakex = 9
        state = 3
        hurttimer = 30
    }
}
global.hittarget[argument0] += 1
if (argument1 == 0)
{
    with (global.monsterinstance[argument0])
    {
        hurtamt = 0
        if (hurttimer <= 15 && candodge == true)
        {
            dodgetimer = 0
            state = 4
        }
    }
}
if (global.monsterhp[argument0] <= 0)
{
    with (global.monsterinstance[argument0])
        gml_Script_scr_monsterdefeat_ch1()
}
return;
