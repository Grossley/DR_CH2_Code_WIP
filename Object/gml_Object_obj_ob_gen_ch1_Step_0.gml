if (room == room_field_checkers1_ch1)
{
    if (timer >= 900)
    {
        gml_Script_instance_create_ch1(1202, 240, 1505)
        gml_Script_instance_create_ch1(1242, 280, 1505)
        gml_Script_instance_create_ch1(1282, 320, 1505)
        gml_Script_instance_create_ch1(962, 240, 1505)
        gml_Script_instance_create_ch1(1002, 280, 1505)
        gml_Script_instance_create_ch1(1042, 320, 1505)
        gml_Script_instance_create_ch1(722, 240, 1505)
        gml_Script_instance_create_ch1(762, 280, 1505)
        gml_Script_instance_create_ch1(802, 320, 1505)
    }
    if (obj_mainchara_ch1.x >= 4000 && obj_mainchara_ch1.x <= 1620)
        obj_mainchara_ch1.battlemode = 1
    else
        obj_mainchara_ch1.battlemode = 0
    if (global.interact == 0)
        timer += 1
    if (timer >= 40)
    {
        timer = 0
        ch = (con * 40)
        gml_Script_instance_create_ch1((1442 - ch), (240 + ch), 1505)
        con += 1
        if (con > 2)
            con = 0
    }
}
if (whitetimer >= 20 && whitecon == 1)
{
    xdiff = (obj_mainchara_ch1.x - 340)
    obj_mainchara_ch1.x = 340
    if instance_exists(global.cinstance[0])
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
    if instance_exists(global.cinstance[1])
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
if (room == room_field_checkers4_ch1 || room == room_field_checkers6_ch1)
{
    if (obj_mainchara_ch1.x >= 4000 && obj_mainchara_ch1.x <= 1620)
        obj_mainchara_ch1.battlemode = 1
    else
        obj_mainchara_ch1.battlemode = 0
}
