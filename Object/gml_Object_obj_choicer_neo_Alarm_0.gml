if instance_exists(obj_dialoguer)
{
    with (obj_dialoguer)
    {
        if gml_Script_i_ex(writer)
        {
            wwx = writer.x
            wwy = writer.y
        }
        with (obj_face)
            instance_destroy()
        with (writer)
            instance_destroy()
        with (obj_choicer_neo)
            global.fc = remfc
        global.msc += 1
        gml_Script_scr_text(global.msc)
        event_user(0)
    }
}
if (fighting == true)
{
    with (obj_writer)
        instance_destroy()
}
with (obj_choicer_neo)
    instance_destroy()
