if (gml_Script_button1_p() && stuck == 1)
{
    stuck = 0
    gml_Script_scr_stickto_stop()
    stuckbuffer = 8
}
stuckbuffer--
