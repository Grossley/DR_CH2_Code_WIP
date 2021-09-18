var _val = argument0
var _range = (argument2 - argument1)
if (argument2 <= argument1)
{
    "wrap error, min higher than max!"
    return argument0;
}
else
{
    while (_val < argument1)
        _val += _range
    while (_val > argument2)
        _val -= _range
    return _val;
}
