if (wall_destroy == 1)
{
    if (x < (gml_Script___view_get(0, 0) - 80))
        instance_destroy()
    if (x > (gml_Script___view_get(0, 0) + 760))
        instance_destroy()
    if (y < (gml_Script___view_get(1, 0) - 80))
        instance_destroy()
    if (y > (gml_Script___view_get(1, 0) + 580))
        instance_destroy()
}
if (updateimageangle == 1)
    image_angle = direction
if (countdown > 0)
{
    if (speed > 0)
        speed--
    countdown--
    if (countdown == 0)
    {
        speed = 0
        active = false
        spawning = 0
        image_speed = (1/3)
    }
}
if ((!spawning) && spawnVirus == 1)
{
    virus_timer += image_speed
    if (virus_timer >= 3)
    {
        spawnVirus = 0
        d = gml_Script_scr_childbullet(x, y, 417)
        d.speed = 0.1
        d.friction = -0.1
        d.direction = point_direction(x, y, obj_heart.x, obj_heart.y)
    }
}
if ((!active) || image_alpha < 0.8)
    return;
infecttarget = collision_rectangle((x - 14), (y - 5), (x + 14), (y + 5), obj_collidebullet, 0, 1)
if (infecttarget != noone)
{
    if (infecttarget.object_index == obj_omawaroid_vaccine && infecttarget.image_alpha > 0.5)
    {
        active = false
        spawnVirus = 0
        sprite_index = spr_virovirokun_needle
        spawning = 0
        image_speed = (2/3)
        depth--
        speed = 0
        if (infecttarget.topspeed == 0)
            infecttarget.topspeed = infecttarget.speed
        infecttarget.speed = 0
    }
    else if (infecttarget.object_index == obj_virovirokun_virus)
        return;
    else if (infecttarget.active == true && (infecttarget.object_index != obj_viro_needle || (infecttarget.direction == 0 && direction != 0)))
    {
        spawning = 0
        image_speed = (2/3)
        active = false
        spawnVirus = 1
        image_speed = (2/3)
        speed = 0
        infection = 1
        d = gml_Script_instance_create(infecttarget.x, infecttarget.y, obj_animation_dx)
        d.sprite_index = spr_viro_poison_effect_big
        d.image_angle = (irandom(3) * 90)
        d.image_blend = poisoncolor
        d.image_xscale = 1
        d.image_yscale = 1
        d.depth = (depth - 1)
        if (infecttarget.object_index != obj_viro_needle)
        {
            targetx = infecttarget.x
            targety = infecttarget.y
            targetsprite = infecttarget.sprite_index
            targetimage = infecttarget.image_index
        }
        else
        {
            targetx = lerp(x, infecttarget.x, 0.5)
            targety = lerp(y, infecttarget.y, 0.5)
            poisoncolor = 16777215
        }
        instance_destroy(infecttarget)
    }
}
