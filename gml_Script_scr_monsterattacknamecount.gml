__sameattack = 0
for (_sameattacki = 0; _sameattacki < 3; _sameattacki++)
{
    if (global.monsterattackname[_sameattacki] == argument0 && global.monster[_sameattacki] == true)
        __sameattack++
}
return __sameattack;
