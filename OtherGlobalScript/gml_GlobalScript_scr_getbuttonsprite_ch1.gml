var control = argument0
var isString = argument1
var button = -4
var is_dualshock = (os_type == os_ps4 || obj_gamecontroller.gamepad_type == 1)
var button_sprite = 757
if isString
{
    if (control == "A")
    {
        button_sprite = 4427
        if (os_type == os_switch)
            button_sprite = 4385
        else if is_dualshock
            button_sprite = 4416
        return button_sprite;
    }
    if (control == "D")
    {
        button_sprite = 4428
        if (os_type == os_switch)
            button_sprite = 4389
        else if is_dualshock
            button_sprite = 4417
        return button_sprite;
    }
    if (control == "W")
    {
        button_sprite = 3941
        if (os_type == os_switch)
            button_sprite = 4392
        else if is_dualshock
            button_sprite = 4418
        return button_sprite;
    }
    if (control == "S")
    {
        button_sprite = 3412
        if (os_type == os_switch)
            button_sprite = 4401
        else if is_dualshock
            button_sprite = 4419
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
        button_sprite = 4427
        if (os_type == os_switch)
            button_sprite = 4385
        else if is_dualshock
            button_sprite = 4416
        return button_sprite;
    }
    if (control == 32784)
    {
        button_sprite = 4428
        if (os_type == os_switch)
            button_sprite = 4389
        else if is_dualshock
            button_sprite = 4417
        return button_sprite;
    }
    if (control == 32781)
    {
        button_sprite = 3941
        if (os_type == os_switch)
            button_sprite = 4392
        else if is_dualshock
            button_sprite = 4418
        return button_sprite;
    }
    if (control == 32782)
    {
        button_sprite = 3412
        if (os_type == os_switch)
            button_sprite = 4401
        else if is_dualshock
            button_sprite = 4419
        return button_sprite;
    }
}
if (button == 32769)
{
    button_sprite = 4429
    if is_dualshock
        button_sprite = 4413
    if (os_type == os_switch)
        button_sprite = 4399
    return button_sprite;
}
if (button == 32770)
{
    button_sprite = 3655
    if is_dualshock
        button_sprite = 4412
    if (os_type == os_switch)
        button_sprite = 4398
    return button_sprite;
}
if (button == 32771)
{
    button_sprite = 4424
    if is_dualshock
        button_sprite = 4408
    if (os_type == os_switch)
        button_sprite = 4394
    return button_sprite;
}
if (button == 32772)
{
    button_sprite = 4117
    if is_dualshock
        button_sprite = 4410
    if (os_type == os_switch)
        button_sprite = 4393
    return button_sprite;
}
if (button == 32773)
{
    button_sprite = 4425
    if is_dualshock
        button_sprite = 4414
    if (os_type == os_switch)
        button_sprite = 4384
    return button_sprite;
}
if (button == 32775)
{
    button_sprite = 4430
    if is_dualshock
        button_sprite = 4415
    if (os_type == os_switch)
        button_sprite = 4395
    return button_sprite;
}
if (button == 32774)
{
    button_sprite = 4431
    if is_dualshock
        button_sprite = 4405
    if (os_type == os_switch)
        button_sprite = 4388
    return button_sprite;
}
if (button == 32776)
{
    button_sprite = 4426
    if is_dualshock
        button_sprite = 4406
    if (os_type == os_switch)
        button_sprite = 4396
    return button_sprite;
}
if (button == 32779)
{
    button_sprite = 4423
    if is_dualshock
        button_sprite = 4404
    if (os_type == os_switch)
        button_sprite = 4402
    return button_sprite;
}
if (button == 32780)
{
    button_sprite = 3571
    if is_dualshock
        button_sprite = 4407
    if (os_type == os_switch)
        button_sprite = 4403
    return button_sprite;
}
if (button == 32777)
{
    button_sprite = 3601
    if is_dualshock
        button_sprite = 4409
    if (os_type == os_switch)
        button_sprite = 4386
    return button_sprite;
}
if (button == 32778)
{
    button_sprite = 3678
    if is_dualshock
        return 2516;
    if (os_type == os_switch)
        button_sprite = 4387
    return button_sprite;
}
if (button == 32783)
{
    button_sprite = 4427
    if (os_type == os_switch)
        button_sprite = 4385
    else if is_dualshock
        button_sprite = 4416
    return button_sprite;
}
if (button == 32784)
{
    button_sprite = 4428
    if (os_type == os_switch)
        button_sprite = 4389
    else if is_dualshock
        button_sprite = 4417
    return button_sprite;
}
if (button == 32781)
{
    button_sprite = 3941
    if (os_type == os_switch)
        button_sprite = 4392
    else if is_dualshock
        button_sprite = 4418
    return button_sprite;
}
if (button == 32782)
{
    button_sprite = 3412
    if (os_type == os_switch)
        button_sprite = 4401
    else if is_dualshock
        button_sprite = 4419
    return button_sprite;
}
return button_sprite;
