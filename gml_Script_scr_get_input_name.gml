if (global.is_console || obj_gamecontroller.gamepad_active)
{
    var _control = global.input_g[argument0]
    if (_control == 32784)
        return "\\*D  ";
    if (_control == 32783)
        return "\\*A  ";
    if (_control == 32781)
        return "\\*W  ";
    if (_control == 32782)
        return "\\*S  ";
    if (_control == global.button0)
        return "\\*Z  ";
    if (_control == global.button1)
        return "\\*X  ";
    if (_control == global.button2)
        return "\\*C  ";
}
else
{
    var left_bracket = (global.lang == "en" ? "[" : "[")
    var right_bracket = (global.lang == "en" ? "]" : "]")
    _control = ((left_bracket + global.asc_def[global.input_k[argument0]]) + right_bracket)
    return _control;
}
return;
