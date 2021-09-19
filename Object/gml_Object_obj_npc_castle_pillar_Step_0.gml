event_inherited()
if (con == 20 && (!gml_Script_d_ex()))
{
    con = -1
    global.typer = 6
    global.fc = 0
    global.fe = 0
    global.interact = 1
    global.msc = 1097
    gml_Script_scr_text(global.msc)
    myinteract = 3
    mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
}
