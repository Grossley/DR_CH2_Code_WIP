if (!gml_Script_scr_debug())
    return;
if (!instance_exists(obj_debug_gui))
{
    gml_Script_instance_create((gml_Script___view_get(0, 0) + 10), (gml_Script___view_get(1, 0) + 10), obj_debug_gui)
    obj_debug_gui.depth = -9999
}
obj_debug_gui.newtext = argument0
with (obj_debug_gui)
{
    message[messagecount] = newtext
    newtext = ""
    timer[messagecount] = (90 - totaltimer)
    totaltimer += timer[messagecount]
    messagecount++
    debugmessage = message[0]
    for (i = 1; i < messagecount; i++)
        debugmessage += ("#" + message[i])
}
return;
