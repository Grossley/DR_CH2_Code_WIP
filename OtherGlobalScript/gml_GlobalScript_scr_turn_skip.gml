if (gml_Script_scr_debug && gml_Script_scr_debug_keycheck(ord("V")) && global.turntimer > 0 && instance_exists(obj_growtangle) && gml_Script_scr_isphase("bullets"))
{
    global.turntimer = 0
    gml_Script_scr_debug_print("Attack skipped")
}
return;
