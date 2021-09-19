var _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6;
if (room == 9999999999)
{
    if (timer >= 900)
    {
        gml_Script_instance_create(1202, 240, obj_ob_checkertile)
        gml_Script_instance_create(1242, 280, obj_ob_checkertile)
        gml_Script_instance_create(1282, 320, obj_ob_checkertile)
        gml_Script_instance_create(962, 240, obj_ob_checkertile)
        gml_Script_instance_create(1002, 280, obj_ob_checkertile)
        gml_Script_instance_create(1042, 320, obj_ob_checkertile)
        gml_Script_instance_create(722, 240, obj_ob_checkertile)
        gml_Script_instance_create(762, 280, obj_ob_checkertile)
        gml_Script_instance_create(802, 320, obj_ob_checkertile)
    }
    if (obj_mainchara.x >= 4000 && obj_mainchara.x <= 1620)
        obj_mainchara.battlemode = 1
    else
        obj_mainchara.battlemode = 0
    if (global.interact == 0)
        timer += 1
    if (timer >= 40)
    {
        timer = 0
        ch = (con * 40)
        gml_Script_instance_create((1442 - ch), (240 + ch), obj_ob_checkertile)
        con += 1
        if (con > 2)
            con = 0
    }
}
if (whitetimer >= 20 && whitecon == 1)
{
    xdiff = (obj_mainchara.x - 340)
    obj_mainchara.x = 340
    if gml_Script_i_ex(global.cinstance[0])
    {
        global.cinstance[0].x -= xdiff
        i = obj_power_up_fx_rouxls_backup
        while (i >= obj_sneo_friedpipis)
        {
            i.remx[global.cinstance[0]] = (remx[i] - xdiff)
            i -= 1
            var _temp_local_var_3 = stacktop
            var _temp_local_var_4 = global.cinstance[0]
        }
    }
    if gml_Script_i_ex(global.cinstance[1])
    {
        global.cinstance[1].x -= xdiff
        i = obj_power_up_fx_rouxls_backup
        while (i >= 0)
        {
            i.remx[global.cinstance[1]] = (remx[i] - xdiff)
            i -= 1
            var _temp_local_var_5 = stacktop
            var _temp_local_var_6 = global.cinstance[1]
        }
    }
    whitecon = 2
}
if (room == 9999999999999)
{
    if (obj_mainchara.x >= 4000 && obj_mainchara.x <= 1620)
        obj_mainchara.battlemode = 1
    else
        obj_mainchara.battlemode = 0
}
