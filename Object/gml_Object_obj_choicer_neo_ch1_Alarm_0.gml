if instance_exists(obj_dialoguer_ch1)
{
    with (obj_dialoguer_ch1)
    {
        if instance_exists(writer)
        {
            wwx = writer.x
            wwy = writer.y
        }
        with (obj_face_ch1)
            instance_destroy()
        with (writer)
            instance_destroy()
        with (obj_choicer_neo_ch1)
            global.fc = remfc
        global.msc += 1
        gml_Script_scr_text_ch1(global.msc)
        event_user(0)
    }
}
with (obj_choicer_neo_ch1)
    instance_destroy()
