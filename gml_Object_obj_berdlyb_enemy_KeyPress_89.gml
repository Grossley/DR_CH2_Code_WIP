if gml_Script_scr_debug()
{
    global.monsterhp[myself] -= 100
    gml_Script_scr_debug_print(("health = " + string(global.monsterhp[myself])))
}
