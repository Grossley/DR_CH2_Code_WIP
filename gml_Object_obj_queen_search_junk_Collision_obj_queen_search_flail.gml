smashed = 1
for (i = 0; i < 4; i++)
{
    d = gml_Script_instance_create(x, y, obj_regularbullet)
    d.sprite_index = spr_spadebullet
    d.updateimageangle = 1
    d.gravity = 0.75
    d.damage = damage
    d.target = target
    d.direction = (90 + (flip * ((-25 + (i * 10)) + irandom(10))))
    d.speed = 10
}
obj_queen_search_flail.hitstun = 1
// WARNING: Popz'd an empty stack.
