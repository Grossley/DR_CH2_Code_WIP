var _control = "[?]"
if (global.is_console || obj_gamecontroller.gamepad_active)
{
    _control = global.input_g[argument0]
    if (_control == gp_padr)
        return "\\*D  ";
    if (_control == gp_padl)
        return "\\*A  ";
    if (_control == gp_padu)
        return "\\*W  ";
    if (_control == gp_padd)
        return "\\*S  ";
    if (_control == global.button0)
        return "\\*Z  ";
    if (_control == global.button1)
        return "\\*X  ";
    if (_control == global.button2)
        return "\\*C  ";
}
var left_bracket = (global.lang == "en" ? "[" : "[")
var right_bracket = (global.lang == "en" ? "]" : "]")
_control = ((left_bracket + global.asc_def[global.input_k[argument0]]) + right_bracket)
if (!is_string(_control))
    _control = "[?]"
else
    return _control;
return;
