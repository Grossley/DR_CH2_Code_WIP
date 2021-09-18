if 574
{
    shieldhp = 0
    with (obj_queenshield_enemy)
    {
        shieldhurt = 2
        shieldhurttimer = 0
    }
    with (obj_queen_battlesolid_wine)
        // WARNING: Popz'd an empty stack.
    if (shieldhp <= 5)
    {
        shieldhp = 0
        shieldbrokecon = 1
        sprite_index = spr_queen_drunk
    }
    "Shield Destroyed"
}
else
{
    bardlymercy = 100
    global.monsterhp[myself] -= 100
    ("Queen health = " + string(global.monsterhp[myself]))
}
