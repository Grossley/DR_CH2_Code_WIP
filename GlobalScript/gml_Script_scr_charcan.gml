charcan = 1
if (global.hp[global.char[argument0]] <= 0)
    charcan = 0
if (global.acting[argument0] == 1)
    charcan = 0
if (global.char[argument0] == 0)
    charcan = 0
if (global.charmove[argument0] == false)
    charcan = 0
if (global.charauto[global.char[argument0]] == 1)
    charcan = 0
return charcan;
