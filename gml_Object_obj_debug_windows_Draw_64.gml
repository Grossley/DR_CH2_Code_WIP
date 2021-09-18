var _temp_local_var_1;
bspace = 30
padding = 5
wd = 160
ht = (40 + (bspace * button_amount))
mx = mouse_x
my = mouse_y
0
draw_rectangle((xx - 4), (yy - 4), ((xx + wd) + 4), ((yy + ht) + 4), false)
12632256
draw_rectangle(xx, yy, (xx + wd), (yy + ht), false)
for (i = 0; i < button_amount; i++)
{
    button_state[i] = 0
    if point_in_rectangle(mx, my, (xx + 10), ((yy + (bspace * i)) + padding), ((xx + wd) - 10), ((yy + ((bspace + 1) * i)) + bspace))
    {
        if (i > 0)
        {
            button_state[i] = 1
            if 1
                button_state[i] = 2
            if 1
            {
                button_state[i] = 3
                button_clicked[i] = 1
            }
        }
        else
        {
            button_state[i] = 1
            if 1
            {
                button_clicked[i] = 1
                button_state[i] = 3
            }
        }
    }
}
3
for (i = 0; i < button_amount; i++)
{
    if (button_state[i] == 0)
        12632256
    if (button_state[i] == 1)
        16777215
    if (button_state[i] == 2)
        4210752
    if (button_state[i] == 3)
        16711680
    if (i == 0)
        merge_color(draw_get_color(), c_aqua, 0.7)
    draw_rectangle((xx + 10), ((yy + (bspace * i)) + padding), ((xx + wd) - 10), (((yy + 30) + ((bspace + 1) * i)) - padding), false)
    0
    draw_rectangle((xx + 10), ((yy + (bspace * i)) + padding), ((xx + wd) - 10), (((yy + 30) + ((bspace + 1) * i)) - padding), true)
    255
    draw_text((xx + 10), ((yy + (bspace * i)) + padding), button_text[i])
    0
}
if (button_clicked[0] == 1)
{
    if 1
    {
        xx += (mx - remmx)
        yy += (my - remmy)
    }
    else
        button_clicked[0] = 0
}
if (type == 0)
{
    if (button_clicked[1] == 1)
    {
        if 900
        {
            if obj_debug_xy.selected_object
            {
                checksprite = get_string("Enter new sprite_index.", "")
                if (checksprite != -1)
                    obj_debug_xy.selected_object.sprite_index = checksprite
            }
        }
        button_clicked[1] = 0
    }
    if (button_clicked[2] == 1)
    {
        if 900
        {
            if obj_debug_xy.selected_object
            {
                var so = obj_debug_xy.selected_object
                var varname = get_string("Enter variable name. No quotation marks. No arrays.", "")
                if variable_instance_exists(so, varname)
                {
                    var foundvar = variable_instance_get(so, varname)
                    foundvar = foundvar
                    var newvalue = get_string((((varname + " is ") + foundvar) + ". Enter new REAL NUMBER value."), "")
                    variable_instance_set(so, varname, newvalue)
                }
                else
                    "No variable exists. Zannen."
            }
        }
        button_clicked[2] = 0
    }
    if (button_clicked[3] == 1)
    {
        if 900
        {
            if obj_debug_xy.selected_object
            {
                so = obj_debug_xy.selected_object
                varname = get_string("Enter variable name. No quotation marks. No arrays.", "")
                if variable_instance_exists(so, varname)
                {
                    foundvar = variable_instance_get(so, varname)
                    newvalue = get_string((((varname + " is ") + foundvar) + ". Enter string value."), "")
                    variable_instance_set(so, varname, newvalue)
                }
                else
                    "No variable exists. Zannen."
            }
        }
        button_clicked[3] = 0
    }
    if (button_clicked[4] == 1)
    {
        if 900
        {
            if obj_debug_xy.selected_object
            {
                so = obj_debug_xy.selected_object
                varname = get_string("Enter variable name. No quotation marks. No arrays.", "")
                if variable_instance_exists(so, varname)
                    watchvar = varname
                else
                    "No variable exists. Zannen."
            }
        }
        button_clicked[4] = 0
    }
    if (button_clicked[5] == 1)
    {
        if 900
        {
            if obj_debug_xy.selected_object
                var _temp_local_var_1 = obj_debug_xy.selected_object
        }
        button_clicked[4] = 0
    }
    if (watchvar != " ")
    {
        button_text[4] = "Watch Variable"
        if 900
        {
            if obj_debug_xy.selected_object
            {
                so = obj_debug_xy.selected_object
                if variable_instance_exists(so, watchvar)
                    button_text[4] = ((watchvar + ": ") + string(variable_instance_get(so, watchvar)))
            }
        }
    }
}
else if (type == 1)
{
    if (button_clicked[1] == 1)
    {
        var whatflag = -1
        whatflag = get_string("Which flag? ", "")
        if (whatflag != "")
        {
            whatflag = whatflag
            if (whatflag > 0)
            {
                var flagvalue = global.flag[whatflag]
                flagvalue = get_string((((("Flag [" + string(whatflag)) + "] is ") + string(flagvalue)) + ". Enter new value."), "")
                if (flagvalue != "")
                    global.flag[whatflag] = flagvalue
            }
        }
        button_clicked[1] = 0
    }
    if (button_clicked[2] == 1)
    {
        whatflag = -1
        whatflag = get_string("Flag to watch? ", "")
        if (whatflag != "")
        {
            whatflag = whatflag
            if (whatflag > 0)
                watchflag = whatflag
            button_clicked[2] = 0
        }
    }
    if (watchflag > 0)
        button_text[2] = ((("Flag [" + string(watchflag)) + "] : ") + string(global.flag[watchflag]))
    if (button_clicked[3] == 1)
    {
        varname = get_string("Enter variable name without \"global.\"", "")
        if (varname != "")
        {
            if varname
            {
                var varval = varname
                var newval = get_string((((("The value of " + varname) + " is ") + string(varval)) + ". What to set it to?"), "")
                if (newval != "")
                {
                    if (newval > 0)
                        variable_global_set(varname, newval)
                }
            }
            else
                "No variable exists. Zannen."
        }
        button_clicked[3] = 0
    }
    if (button_clicked[4] == 1)
    {
        varname = get_string("object name?", "")
        if (varname != "")
        {
            if varname
            {
                with (obj_debug_xy)
                    selected_object = instance_find(asset_get_index(varname), 0)
                // WARNING: Popz'd an empty stack.
            }
        }
        button_clicked[4] = 0
    }
    if (button_clicked[5] == 1)
    {
        varname = get_string("object name?", "")
        if (varname != "")
        {
            if (varname > obj_sneo_friedpipis)
            {
                var bepis = varname.mouse_y.mouse_x
                with (obj_debug_xy)
                    selected_object = bepis
                // WARNING: Popz'd an empty stack.
            }
        }
        button_clicked[5] = 0
    }
}
xx = clamp(xx, 40, 500)
yy = clamp(yy, 40, 340)
remmx = mouse_x
remmy = mouse_y
draw_sprite(spr_maus_cursor, 0, mx, my)
