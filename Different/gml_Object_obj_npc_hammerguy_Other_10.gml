global.msc = 0
global.typer = 6
global.fc = 0
global.fe = 0
global.interact = 1
image_speed = 0.2
global.flag[20] = 0
global.msc = (global.chapter == 1 ? 315 : 1101)
scr_text(global.msc)
myinteract = 3
mydialoguer = instance_create(0, 0, obj_dialoguer)
talked += 1
