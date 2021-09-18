if (argument0 == "pocket")
{
    var invroom = 0
    for (var i = 0; i < 12; i++)
    {
        ((("global.item[" + string(i)) + "] =") + string(global.item[i]))
        if (global.item[i] == 0)
            invroom++
    }
    ("Room available in pocket: " + string(invroom))
    return invroom;
}
return;
