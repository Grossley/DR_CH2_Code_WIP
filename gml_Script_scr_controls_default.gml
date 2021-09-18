global.button0 = 32769
global.button1 = 32770
global.button2 = 32772
if (os_type == os_ps4)
{
    var os_map = 
    var ps4_confirm_button = undefined
    if (os_map != -1)
    {
        var mapsize = os_map
        var key = os_map
        for (var i = 0; i < (mapsize - 1); i++)
        {
            if (key == "enter_button_assign")
                ps4_confirm_button = ds_map_find_value(os_map, key)
            else
                key = ds_map_find_next(os_map, key)
        }
        os_map
    }
    if (ps4_confirm_button == 0)
    {
        global.button0 = 32770
        global.button1 = 32769
    }
    else
    {
        global.button0 = 32769
        global.button1 = 32770
    }
    global.button2 = 32772
}
else if (os_type == os_switch)
{
    global.button0 = 32770
    global.button1 = 32769
    global.button2 = 32772
}
global.default_button0 = global.button0
global.default_button1 = global.button1
global.default_button2 = global.button2
global.input_k[0] = 40
global.input_k[1] = 39
global.input_k[2] = 38
global.input_k[3] = 37
global.input_k[4] = 90
global.input_k[5] = 88
global.input_k[6] = 67
global.input_k[7] = 13
global.input_k[8] = 16
global.input_k[9] = 17
global.input_g[0] = 32782
global.input_g[1] = 32784
global.input_g[2] = 32781
global.input_g[3] = 32783
global.input_g[4] = global.button0
global.input_g[5] = global.button1
global.input_g[6] = global.button2
global.input_g[7] = 999
global.input_g[8] = 999
global.input_g[9] = 999
if (!1109)
    gml_Script_instance_create(0, 0, obj_gamecontroller)
with (obj_gamecontroller)
    gamepad_shoulderlb_reassign = 0
return;
