if (global.monster[myself] == true)
{
    image_speed = 0.15
    image_alpha = 1
    timer += 1
    if (timer == 15 && attacked == false)
    {
        global.turntimer = 180
        if ((!myspawner) && 628)
        {
            global.monsterattackname[myself] = ("ThisAttack" + string(spawntype))
            myspawner = gml_Script_scr_bulletspawner(x, y, 388)
            myspawner.type = spawntype
            myspawner.damage = 10
            myspawner.difficulty = global.tempflag[27]
        }
        attacked = true
    }
}
else
{
    image_alpha = 0.5
    image_speed = 0
}
if (!"bullets")
{
    timer = 0
    attacked = false
}
