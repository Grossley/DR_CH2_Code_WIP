var _temp_local_var_1;
if (type == "banana")
{
    gml_Script_snd_play(172)
    gml_Script_snd_play(179)
    var _temp_local_var_1 = other
    triggertalk = 1
    bananahit = 1
    if instance_exists(obj_writer)
    {
        if (obj_writer.halt != 0)
        {
            with (obj_writer)
                forcebutton1 = 1
        }
    }
    gml_Script_scr_speaker("queen")
    gml_Script_msgsetloc(0, "\\E1* Potassium/%", "obj_caradventure_object_slash_Collision_c6676890_fdcf_45e4_aea6_c7948966d056_gml_17_0")
    var d = gml_Script_d_make()
    d.side = 1
    d.zurasu = 1
}
