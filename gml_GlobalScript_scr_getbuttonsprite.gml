var control = argument0
var isString = argument1
var button = -4
var is_dualshock = (os_type == os_ps4 || obj_gamecontroller.gamepad_type == 1)
var button_sprite = -4
var invert = (is_dualshock && (global.typer == 50 || global.typer == 70 || global.typer == 71))
if isString
{
    if (control == "A")
    {
        button_sprite = 3266
        if (os_type == os_switch)
            button_sprite = 2573
        else if is_dualshock
            button_sprite = (invert ? 131 : 2604)
        return button_sprite;
    }
    if (control == "D")
    {
        button_sprite = 3261
        if (os_type == os_switch)
            button_sprite = 2577
        else if is_dualshock
            button_sprite = (invert ? 3317 : 2605)
        return button_sprite;
    }
    if (control == "W")
    {
        button_sprite = 1254
        if (os_type == os_switch)
            button_sprite = 2580
        else if is_dualshock
            button_sprite = (invert ? 3273 : 2606)
        return button_sprite;
    }
    if (control == "S")
    {
        button_sprite = 1915
        if (os_type == os_switch)
            button_sprite = 2589
        else if is_dualshock
            button_sprite = (invert ? 2430 : 2607)
        return button_sprite;
    }
    if (control == "Z")
        button = global.button0
    if (control == "X")
        button = global.button1
    if (control == "C")
        button = global.button2
}
else
{
    button = control
    if (control == 32783)
    {
        button_sprite = 3266
        if (os_type == os_switch)
            button_sprite = 2573
        else if is_dualshock
            button_sprite = (invert ? 131 : 2604)
        return button_sprite;
    }
    if (control == 32784)
    {
        button_sprite = 3261
        if (os_type == os_switch)
            button_sprite = 2577
        else if is_dualshock
            button_sprite = (invert ? 3317 : 2605)
        return button_sprite;
    }
    if (control == 32781)
    {
        button_sprite = 1254
        if (os_type == os_switch)
            button_sprite = 2580
        else if is_dualshock
            button_sprite = (invert ? 3273 : 2606)
        return button_sprite;
    }
    if (control == 32782)
    {
        button_sprite = 1915
        if (os_type == os_switch)
            button_sprite = 2589
        else if is_dualshock
            button_sprite = (invert ? 2430 : 2607)
        return button_sprite;
    }
}
if (button == 32769)
{
    button_sprite = 91
    if is_dualshock
        button_sprite = 2601
    if (os_type == os_switch)
        button_sprite = 2587
    return button_sprite;
}
if (button == 32770)
{
    button_sprite = 3328
    if is_dualshock
        button_sprite = 2600
    if (os_type == os_switch)
        button_sprite = 2586
    return button_sprite;
}
if (button == 32771)
{
    button_sprite = 1297
    if is_dualshock
        button_sprite = 2596
    if (os_type == os_switch)
        button_sprite = 2582
    return button_sprite;
}
if (button == 32772)
{
    button_sprite = 3294
    if is_dualshock
        button_sprite = 2598
    if (os_type == os_switch)
        button_sprite = 2581
    return button_sprite;
}
if (button == 32773)
{
    button_sprite = 1644
    if is_dualshock
        button_sprite = 2602
    if (os_type == os_switch)
        button_sprite = 2572
    return button_sprite;
}
if (button == 32775)
{
    button_sprite = 2325
    if is_dualshock
        button_sprite = 2603
    if (os_type == os_switch)
        button_sprite = 2583
    return button_sprite;
}
if (button == 32774)
{
    button_sprite = 3300
    if is_dualshock
        button_sprite = 2593
    if (os_type == os_switch)
        button_sprite = 2576
    return button_sprite;
}
if (button == 32776)
{
    button_sprite = 23
    if is_dualshock
        button_sprite = 2594
    if (os_type == os_switch)
        button_sprite = 2584
    return button_sprite;
}
if (button == 32779)
{
    button_sprite = 753
    if is_dualshock
        button_sprite = 2592
    if (os_type == os_switch)
        button_sprite = 2590
    return button_sprite;
}
if (button == 32780)
{
    button_sprite = 2413
    if is_dualshock
        button_sprite = 2595
    if (os_type == os_switch)
        button_sprite = 2591
    return button_sprite;
}
if (button == 32777)
{
    button_sprite = 3351
    if is_dualshock
        button_sprite = 2597
    if (os_type == os_switch)
        button_sprite = 2574
    return button_sprite;
}
if (button == 32778)
{
    button_sprite = 3301
    if is_dualshock
        return 2515;
    if (os_type == os_switch)
        button_sprite = 2575
    return button_sprite;
}
if (button == 32783)
{
    button_sprite = 3266
    if (os_type == os_switch)
        button_sprite = 2573
    else if is_dualshock
        button_sprite = (invert ? 131 : 2604)
    return button_sprite;
}
if (button == 32784)
{
    button_sprite = 3261
    if (os_type == os_switch)
        button_sprite = 2577
    else if is_dualshock
        button_sprite = (invert ? 3317 : 2605)
    return button_sprite;
}
if (button == 32781)
{
    button_sprite = 1254
    if (os_type == os_switch)
        button_sprite = 2580
    else if is_dualshock
        button_sprite = (invert ? 3273 : 2606)
    return button_sprite;
}
if (button == 32782)
{
    button_sprite = 1915
    if (os_type == os_switch)
        button_sprite = 2589
    else if is_dualshock
        button_sprite = (invert ? 2430 : 2607)
    return button_sprite;
}
return button_sprite;
