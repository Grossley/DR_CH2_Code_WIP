global.msc = 0
global.typer = 5
if (global.darkzone == true)
    global.typer = 6
global.fc = 0
global.fe = 0
global.interact = 1
image_speed = 0.2
global.flag[20] = 0
if (type == 0)
    global.msc = 230
if (type == 1)
    global.msc = 235
if (type == 2)
    global.msc = 240
if (type == 3)
    global.msc = 245
global.msc
myinteract = 3
mydialoguer = gml_Script_instance_create_ch1(0, 0, 1326)
mydialoguer.side = 0
talked += 1
