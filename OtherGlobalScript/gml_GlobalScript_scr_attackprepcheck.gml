if (argument0 == 0)
    return 0;
var __attackcount = 0
for (i = 0; i < argument0; i++)
{
    if (global.monster[i] && global.monsterattackname[i] == argument1)
        __attackcount++
}
return __attackcount;
