global.turntimer += 120
global.monsterattackname[myself] = "MausHoles"
dc = gml_Script_scr_bulletspawner(x, y, 388)
dc.type = 19
dc.target = mytarget
if (cursor_count < total_cursors)
    cursor_count++
