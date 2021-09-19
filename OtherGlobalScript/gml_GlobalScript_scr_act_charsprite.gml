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
if gml_Script_i_ex(_charinstance)
{
    with (_charinstance)
    {
        image_alpha = 0
        state = 0
        global.faceaction[myself] = 0
    }
    _charactsprite[_charnum] = gml_Script_scr_dark_marker(_charinstance.x, _charinstance.y, argument1)
    with (_charactsprite[_charnum])
    {
        depth = (20 - (gml_Script___view_get(1, 0) / 40))
        gml_Script_scr_oflash()
        if (argument2 > 0 && argument3 == 0)
            gml_Script_scr_animate(0, 0, argument2)
        if (argument2 > 0 && argument3 == 1)
            image_speed = argument2
        a = gml_Script_scr_afterimage()
        a.hspeed = 2.5
        a.depth = (depth + 1)
        b = gml_Script_scr_afterimage()
        b.image_alpha = 0.6
        b.hspeed = 5
        b.depth = (depth + 2)
    }
    __returnvalue = _charactsprite[_charnum]
}
return __returnvalue;
