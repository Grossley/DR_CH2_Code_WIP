global.mercymod[argument0] += argument1
if (global.mercymod[argument0] < 0)
    global.mercymod[argument0] = 0
if (global.mercymod[argument0] >= 100)
    global.mercymod[argument0] = 100
var _playsound = 1
if (argument1 <= 0)
    _playsound = 0
if gml_Script_i_ex(870)
{
    with (obj_dmgwriter)
    {
        if (type == 5)
            _playsound = 0
    }
}
if _playsound
{
    var _pitch = 0.8
    if (argument1 < 99)
        _pitch = 1
    if (argument1 <= 50)
        _pitch = 1.2
    if (argument1 <= 25)
        _pitch = 1.4
    gml_Script_snd_play_x(0, 0.8, _pitch)
}
__mercydmgwriter = gml_Script_instance_create(global.monsterx[argument0], ((global.monstery[argument0] + 20) - (global.hittarget[argument0] * 20)), obj_dmgwriter)
__mercydmgwriter.damage = argument1
__mercydmgwriter.type = 5
global.hittarget[argument0] = (global.hittarget[argument0] + 1)
return;
