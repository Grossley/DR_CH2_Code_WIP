__charslot = -1
__findchar = 0
while (__findchar < 3)
{
    if (global.char[__findchar] == argument0)
    {
        __charslot = __findchar
        break
    }
    else
    {
        __findchar++
        continue
    }
}
return __charslot;
