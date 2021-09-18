// WARNING: Popz'd an empty stack.
infecttarget = collision_rectangle((x - 12), (y - 12), (x + 12), (y + 12), obj_omawaroid_vaccine, 0, 1)
if (infecttarget != noone)
{
    d = gml_Script_instance_create(x, y, obj_animation_dx)
    d.sprite_index = spr_virovirokun_virus_pop
    d.depth = depth
    // WARNING: Popz'd an empty stack.
    infecttarget.speed = 0
}
