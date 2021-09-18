if (global.is_console || obj_gamecontroller.gamepad_active)
{
    var _control = global.input_g[argument0]
    if (_control == 32784)
        return "\\*D  ";
    if (_control == 32783)
        return "\\*A  ";
    if (_control == global.button0)
        return "\\*Z  ";
    if (_control == global.button1)
        return "\\*X  ";
    if (_control == global.button2)
        return "\\*C  ";
}
else
{
    _control = (("[" + global.asc_def[global.input_k[argument0]]) + "]")
    return _control;
}
return;
