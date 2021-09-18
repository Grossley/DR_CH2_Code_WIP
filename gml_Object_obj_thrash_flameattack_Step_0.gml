if (!shotfired)
    siner += ((1 - abs(cos(((btimer / 14) * pi)))) * initialspeed)
siner++
attackangle = (((siner / 8) * 28) * flip)
thrash.headangle = attackangle
if (btimer >= 14 && attackangle < 26)
{
    xx = (thrash.headx + gml_Script_scr_orbitx(0, 0, -40, -4, attackangle))
    yy = (thrash.heady + gml_Script_scr_orbity(0, 0, -40, -4, attackangle))
    d = gml_Script_scr_bullet_create(xx, yy, 731)
    d.direction = (attackangle + 180)
    d.speed = 4
    d.updateimageangle = 1
    d.grazepoints = grazepoints
    d.lifetime = 70
    shotfired = 1
    shotcount++
    if (shotcount == (difficulty ? 6 : 4))
    {
        btimer = 0
        shotcount = 0
    }
    else
        btimer = 12
}
else
    btimer++
