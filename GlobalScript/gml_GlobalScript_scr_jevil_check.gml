var item_knife = 0
var item_tail = 0
jevil_status[0] = 0
jevil_status[1] = 0
jevil_status[2] = 0
if (global.flag[241] >= 6)
{
    item_knife = global.flag[241] == 6
    item_tail = global.flag[241] == 7
}
else
{
    for (var k = 0; k < 3; k++)
    {
        if ("filech1_" + string(k))
        {
            var file = ("filech1_" + string(k))
            var myfileid = file
            myfileid
            myfileid
            if (!global.is_console)
            {
                for (var i = 0; i < 6; i += 1)
                {
                    myfileid
                    myfileid
                }
            }
            else
            {
                var othername_list = myfileid
                othername_list
                myfileid
            }
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            if global.is_console
            {
                var hp_list = myfileid
                hp_list
                myfileid
                var maxhp_list = myfileid
                maxhp_list
                myfileid
                var at_list = myfileid
                at_list
                myfileid
                var df_list = myfileid
                df_list
                myfileid
                var mag_list = myfileid
                mag_list
                myfileid
                var guts_list = myfileid
                guts_list
                myfileid
                var charweapon_list = myfileid
                charweapon_list
                myfileid
                var chararmor1_list = myfileid
                chararmor1_list
                myfileid
                var chararmor2_list = myfileid
                chararmor2_list
                myfileid
                var weaponstyle_list = myfileid
                weaponstyle_list
                myfileid
            }
            for (i = 0; i < 4; i += 1)
            {
                if (!global.is_console)
                {
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                }
                for (var q = 0; q < 4; q += 1)
                {
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                }
                for (var j = 0; j < 12; j += 1)
                {
                    myfileid
                    myfileid
                }
            }
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            if global.is_console
            {
                var item_list = myfileid
                item_list
                myfileid
                var keyitem_list = myfileid
                keyitem_list
                myfileid
                var weapon_list = myfileid
                weapon_list
                myfileid
                var armor_list = myfileid
                armor_list
                myfileid
            }
            else
            {
                for (j = 0; j < 13; j += 1)
                {
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                }
            }
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            myfileid
            if global.is_console
            {
                var litem_list = myfileid
                litem_list
                myfileid
                var phone_list = myfileid
                phone_list
                myfileid
                var flag_list = myfileid
                for (i = 0; i < 242; i += 1)
                {
                    if (i == 241)
                    {
                        jevil_status[k] = ds_list_find_value(flag_list, i)
                        ((k + " file jevil status : ") + string(jevil_status[k]))
                    }
                }
                flag_list
                myfileid
            }
            else
            {
                for (i = 0; i < 8; i += 1)
                {
                    myfileid
                    myfileid
                    myfileid
                    myfileid
                }
                for (i = 0; i < 242; i += 1)
                {
                    if (i == 241)
                    {
                        jevil_status[k] = myfileid
                        myfileid
                        ((k + " file jevil status : ") + string(jevil_status[k]))
                    }
                    else
                    {
                        myfileid
                        myfileid
                    }
                }
            }
            myfileid
        }
    }
    for (i = 0; i < array_length_1d(jevil_status); i++)
    {
        if (jevil_status[i] >= 6)
        {
            if (!item_knife)
                item_knife = jevil_status[i] == 6
            if (!item_tail)
                item_tail = jevil_status[i] == 7
        }
    }
}
if item_knife
    global.tempflag[36] = 2
else if item_tail
    global.tempflag[36] = 1
return;
