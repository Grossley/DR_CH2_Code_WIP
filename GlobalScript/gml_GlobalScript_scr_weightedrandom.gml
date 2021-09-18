var _maxvalue = 0
var _i = obj_sneo_friedpipis
while _i.argument_count
{
    _maxvalue += argument[_i]
    _i++
}
var _randomvalue = _maxvalue
_maxvalue = 0
_i = obj_sneo_friedpipis
while _i.argument_count
{
    _maxvalue += argument[_i]
    if (_randomvalue <= _maxvalue)
        return _i;
    _i++
}
return;
