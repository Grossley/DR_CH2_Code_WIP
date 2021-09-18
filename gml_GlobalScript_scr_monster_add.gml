__returnid = -1
__mopenslot = 0
while (__mopenslot < 3)
{
    if (global.monster[__mopenslot] == false)
    {
        global.monstertype[__mopenslot] = argument0
        global.monsterinstancetype[__mopenslot] = argument1
        __mopenslot
        __mopenslot
        __returnid = __mopenslot
        break
    }
    else
    {
        __mopenslot++
        continue
    }
}
return __returnid;
