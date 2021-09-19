var control = argument0
var isString = argument1
var button = -4
var is_dualshock = (os_type == os_ps4 || obj_gamecontroller.gamepad_type == 1)
var button_sprite = 757
var invert = (is_dualshock && (global.typer == 50 || global.typer == 70 || global.typer == 71))
if isString
{
    if (control == "A")
    {
        button_sprite = 3267
        if (os_type == os_switch)
            button_sprite = 2574
        else if is_dualshock
            button_sprite = (invert ? 131 : 2605)
        return button_sprite;
    }
    if (control == "D")
    {
        button_sprite = 3262
        if (os_type == os_switch)
            button_sprite = 2578
        else if is_dualshock
            button_sprite = (invert ? 3318 : 2606)
        return button_sprite;
    }
    if (control == "W")
    {
        button_sprite = 1255
        if (os_type == os_switch)
            button_sprite = 2581
        else if is_dualshock
            button_sprite = (invert ? 3274 : 2607)
        return button_sprite;
    }
    if (control == "S")
    {
        button_sprite = 1916
        if (os_type == os_switch)
            button_sprite = 2590
        else if is_dualshock
            button_sprite = (invert ? 2431 : 2608)
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
    if (control == gp_padl)
    {
        button_sprite = 3267
        if (os_type == os_switch)
            button_sprite = 2574
        else if is_dualshock
            button_sprite = (invert ? 131 : 2605)
        return button_sprite;
    }
    if (control == gp_padr)
    {
        button_sprite = 3262
        if (os_type == os_switch)
            button_sprite = 2578
        else if is_dualshock
            button_sprite = (invert ? 3318 : 2606)
        return button_sprite;
    }
    if (control == gp_padu)
    {
        button_sprite = 1255
        if (os_type == os_switch)
            button_sprite = 2581
        else if is_dualshock
            button_sprite = (invert ? 3274 : 2607)
        return button_sprite;
    }
    if (control == gp_padd)
    {
        button_sprite = 1916
        if (os_type == os_switch)
            button_sprite = 2590
        else if is_dualshock
            button_sprite = (invert ? 2431 : 2608)
        return button_sprite;
    }
}
if (button == gp_face1)
{
    button_sprite = 91
    if is_dualshock
        button_sprite = 2602
    if (os_type == os_switch)
        button_sprite = 2588
    return button_sprite;
}
if (button == gp_face2)
{
    button_sprite = 3329
    if is_dualshock
        button_sprite = 2601
    if (os_type == os_switch)
        button_sprite = 2587
    return button_sprite;
}
if (button == gp_face3)
{
    button_sprite = 1298
    if is_dualshock
        button_sprite = 2597
    if (os_type == os_switch)
        button_sprite = 2583
    return button_sprite;
}
if (button == gp_face4)
{
    button_sprite = 3295
    if is_dualshock
        button_sprite = 2599
    if (os_type == os_switch)
        button_sprite = 2582
    return button_sprite;
}
if (button == gp_shoulderl)
{
    button_sprite = 1645
    if is_dualshock
        button_sprite = 2603
    if (os_type == os_switch)
        button_sprite = 2573
    return button_sprite;
}
if (button == gp_shoulderlb)
{
    button_sprite = 2326
    if is_dualshock
        button_sprite = 2604
    if (os_type == os_switch)
        button_sprite = 2584
    return button_sprite;
}
if (button == gp_shoulderr)
{
    button_sprite = 3301
    if is_dualshock
        button_sprite = 2594
    if (os_type == os_switch)
        button_sprite = 2577
    return button_sprite;
}
if (button == gp_shoulderrb)
{
    button_sprite = 23
    if is_dualshock
        button_sprite = 2595
    if (os_type == os_switch)
        button_sprite = 2585
    return button_sprite;
}
if (button == gp_stickl)
{
    button_sprite = 753
    if is_dualshock
        button_sprite = 2593
    if (os_type == os_switch)
        button_sprite = 2591
    return button_sprite;
}
if (button == gp_stickr)
{
    button_sprite = 2414
    if is_dualshock
        button_sprite = 2596
    if (os_type == os_switch)
        button_sprite = 2592
    return button_sprite;
}
if (button == gp_select)
{
    button_sprite = 3352
    if is_dualshock
        button_sprite = 2598
    if (os_type == os_switch)
        button_sprite = 2575
    return button_sprite;
}
if (button == gp_start)
{
    button_sprite = 3302
    if is_dualshock
        return button_ps4_options;
    if (os_type == os_switch)
        button_sprite = 2576
    return button_sprite;
}
if (button == gp_padl)
{
    button_sprite = 3267
    if (os_type == os_switch)
        button_sprite = 2574
    else if is_dualshock
        button_sprite = (invert ? 131 : 2605)
    return button_sprite;
}
if (button == gp_padr)
{
    button_sprite = 3262
    if (os_type == os_switch)
        button_sprite = 2578
    else if is_dualshock
        button_sprite = (invert ? 3318 : 2606)
    return button_sprite;
}
if (button == gp_padu)
{
    button_sprite = 1255
    if (os_type == os_switch)
        button_sprite = 2581
    else if is_dualshock
        button_sprite = (invert ? 3274 : 2607)
    return button_sprite;
}
if (button == gp_padd)
{
    button_sprite = 1916
    if (os_type == os_switch)
        button_sprite = 2590
    else if is_dualshock
        button_sprite = (invert ? 2431 : 2608)
    return button_sprite;
}
return button_sprite;
