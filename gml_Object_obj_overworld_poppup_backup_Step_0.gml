if 80
    dist = distance_to_point((obj_mainchara.x + 20), (obj_mainchara.y + 40))
if (dist < 160 && con == 0)
{
    speed1 = 1
    con = 2
}
if (con == 2)
{
    image_speed = 0.25
    if (image_index == 7)
        image_index = 3
    speed1 *= 1.5
    speed1 = clamp(speed1, 0, 8)
    if 80
        move_towards_point((obj_mainchara.x + 40), (obj_mainchara.y + 80), speed1)
}
// WARNING: Popz'd an empty stack.
if place_meeting(x, y, obj_mainchara)
{
    sprite_index = spr_poppup_intro
    image_index = 0
    marker = gml_Script_instance_create(x, y, obj_marker)
    marker.image_index = image_index
    marker.sprite_index = sprite_index
    marker.x = x
    marker.y = y
    marker.image_speed = 0.25
    marker.image_xscale = image_xscale
    marker.image_yscale = image_yscale
    if (topsprite != IMAGE_LOGO)
    {
        flyoff = gml_Script_instance_create((x + topxoff), ((y - 42) + topyoff), obj_poppup_topobjflyaway)
        flyoff.sprite_index = topsprite
        flyoff.image_xscale = 2
        flyoff.image_yscale = 2
        flyoff.depth = 2
        flyoff.image_angle = -10
    }
    gml_Script_scr_battle(51, 0, marker, 0, 0)
    // WARNING: Popz'd an empty stack.
}
