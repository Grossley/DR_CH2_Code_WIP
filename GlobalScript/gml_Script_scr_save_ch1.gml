global.filechoice
filechoicebk2 = global.filechoice
global.filechoice = 9
9
global.filechoice = filechoicebk2
"dr.ini"
ini_write_string(("G" + string(global.filechoice)), "Name", global.truename)
ini_write_real(("G" + string(global.filechoice)), "Level", global.lv)
ini_write_real(("G" + string(global.filechoice)), "Love", global.llv)
ini_write_real(("G" + string(global.filechoice)), "Time", global.time)
ini_write_real(("G" + string(global.filechoice)), "Room", global.currentroom)
ini_write_real(("G" + string(global.filechoice)), "InitLang", global.flag[912])
var uraboss = 0
if (global.flag[241] == 6)
    uraboss = 1
else if (global.flag[241] == 7)
    uraboss = 2
ini_write_real(("G" + string(global.filechoice)), "UraBoss", uraboss)
// WARNING: Popz'd an empty stack.
// WARNING: Popz'd an empty stack.
return;
