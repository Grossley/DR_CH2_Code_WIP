var _temp_local_var_1, _temp_local_var_2, _temp_local_var_9, _temp_local_var_11;
dm = gml_Script_instance_create(global.monsterx[argument0], ((global.monstery[argument0] + 20) - (global.hittarget[argument0] * 20)), obj_dmgwriter)
if (caster < 4)
{
    dm.type = (global.char[caster] - 1)
    if (global.char[caster] == 4)
        dm.type = 6
}
if (caster == 5)
    dm.type = 5
dm.damage = argument1
global.monsterhp[argument0] -= argument1
if (argument1 > 0)
{
    var _temp_local_var_1 = global.monsterinstance[argument0]
    shakex = 9
    state = 3
    hurttimer = 30
}
global.hittarget[argument0] += 1
if (argument1 == 0)
{
    var _temp_local_var_2 = global.monsterinstance[argument0]
    hurtamt = 0
    if (hurttimer <= 15 && candodge == true)
    {
        dodgetimer = 0
        state = 4
    }
}
if (global.chapter == 2 && gml_Script_i_ex(707) && global.monsterhp[argument0] <= 0)
    global.monsterhp[argument0] = 1
var a = 0
if (global.chapter == 2 && gml_Script_i_ex(571))
    a = 1
if (global.chapter == 2 && gml_Script_i_ex(694))
    a = 2
if (global.chapter == 2 && gml_Script_i_ex(482))
    a = 3
if (global.monsterhp[argument0] <= 0 && a == 0)
{
    var _temp_local_var_9 = global.monsterinstance[argument0]
    gml_Script_scr_monsterdefeat()
}
if (global.chapter == 2 && global.monsterhp[argument0] <= 0 && a == 3)
{
    var _temp_local_var_11 = global.monsterinstance[argument0]
    endcon = 1
}
return;