var _temp_local_var_1;
_charactor = argument0
_charinstance = obj_herokris
if (_charactor == "noelle")
{
    _charinstance = obj_heronoelle
    _charnum = 4
}
if (_charactor == "ralsei")
{
    _charinstance = obj_heroralsei
    _charnum = 3
}
if (_charactor == "susie")
{
    _charinstance = obj_herosusie
    _charnum = 2
}
if (_charactor == "kris")
{
    _charinstance = obj_herokris
    _charnum = 1
}
__returnvalue = _charactsprite[_charnum]
if _charinstance
{
    var _temp_local_var_1 = _charinstance
    image_alpha = 0
    state = 0
    global.faceaction[myself] = 0
}
return __returnvalue;
