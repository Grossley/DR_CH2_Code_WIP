event_inherited()
con = -1
moss_con = -1
shine = self
if (gml_Script_scr_sideb_get_phase() == 0 && global.flag[920] == 0)
{
    shine = gml_Script_scr_dark_marker(134, 214, 2435)
    with (shine)
    {
        gml_Script_scr_depth()
        image_speed = 0.1
    }
}
