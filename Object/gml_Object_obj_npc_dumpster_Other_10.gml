if (con == -1)
    event_inherited()
else
{
    con = 1
    global.msc = 0
    global.typer = 5
    if (global.darkzone == true)
        global.typer = 6
    global.fc = 0
    global.fe = 0
    global.interact = 1
    global.msc = 1171
    gml_Script_scr_text(global.msc)
    read += 1
    myinteract = 3
    mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
}