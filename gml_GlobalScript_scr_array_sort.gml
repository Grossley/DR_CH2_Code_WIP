var _array = argument0
var _ascending = argument1
var _array_length = argument0
var _tempValue = 0
var _loopAgain = 1
var _emergencyStop = 0
while (_loopAgain == 1 && _emergencyStop < 100)
{
    _loopAgain = 0
    _emergencyStop++
    for (i = 1; i < _array_length; i++)
    {
        if (_array[i] == _array[(i - 1)])
        {
        }
        else if (_ascending == (_array[i] < _array[(i - 1)]))
        {
            _loopAgain = 1
            _tempValue = _array[(i - 1)]
            _array[(i - 1)] = _array[i]
            _array[i] = _tempValue
        }
    }
}
if (_emergencyStop >= 100)
    "EMERGENCY STOP HAD TO BE CALLED (BAD)"
return _array;
