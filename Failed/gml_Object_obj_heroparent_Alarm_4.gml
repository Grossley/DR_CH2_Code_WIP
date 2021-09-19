if (spellframes > 0)
    global.faceaction[myself] = 0
if (gml_Script_scr_monsterpop() > 0)
    gml_Script_scr_spell(global.charspecial[myself], myself)
state = 0
attacktimer = 0
