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
        var _temp_local_var_1 = writer
        instance_destroy()
    }
    global.msc += 1
    gml_Script_scr_text(global.msc)
    event_user(0)
}
with (obj_choicer_old)
    instance_destroy()
