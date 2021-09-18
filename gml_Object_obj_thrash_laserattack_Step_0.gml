btimer++
headangle = ((obj_rouxls_enemy.y - 40) / 1.75)
if (btimer <= (difficulty ? 8 : 15))
{
    if (btimer == (difficulty ? 8 : 15))
    {
        var xx = (thrash.headx - gml_Script_scr_orbitx(0, 0, 45, 0, headangle))
        var yy = (thrash.heady - gml_Script_scr_orbity(0, 0, 45, 0, headangle))
        gml_Script_snd_play_x(46, 1, 1.2)
        d = gml_Script_scr_bullet_create(xx, yy, 734)
        d.grazepoints = grazepoints
        d.direction = 0
        d.attackdirection = lastattack
    }
}
if (btimer >= (difficulty ? 13 : 25))
{
    btimer = 0
    var nextattack = 1
    if (nextattack == lastattack)
        nextattack = 2
    lastangle = attackangle
    attackangle = ((nextattack * 90) + 90)
    lastattack = nextattack
}
thrash.headangle = headangle
