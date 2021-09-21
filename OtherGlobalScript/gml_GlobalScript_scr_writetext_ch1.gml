global.fc = 0
global.msc = argument0
if (argument1 != "x")
    global.msg[0] = argument1
if (argument2 != obj_sneo_friedpipis)
    global.fc = argument2
global.typer = 5
if (argument3 != 0)
    global.typer = argument3
gml_Script_instance_create_ch1(0, 0, obj_dialoguer_ch1)
return;
