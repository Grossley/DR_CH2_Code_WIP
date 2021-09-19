timer++
x = gml_Script_camerax()
if (image_alpha > 0.1 && init == 0)
{
    init = 1
    dronesfx = gml_Script_snd_loop(244)
    gml_Script_snd_volume(dronesfx, 0, 0)
    gml_Script_snd_volume(dronesfx, 0.5, 60)
    gml_Script_snd_pitch(dronesfx, 0.1)
}
if (init == 1)
{
    linesfxtimer++
    if (linesfxtimer >= 4)
    {
        linesfxtimer = 0
        sidenoise = gml_Script_snd_play(242)
        gml_Script_snd_volume(sidenoise, 0.3, 0)
        gml_Script_snd_pitch(sidenoise, (0.6 + random(0.6)))
    }
}
c_extra = make_colour_rgb(255, 90, 195)
draw_self()
draw_sprite_ext(sprite_index, 0, x, (y + 480), 1, 1, 0, c_white, image_alpha)
if (room == room_dw_mansion_top)
{
    if (y < (gml_Script_cameray() - 450))
        y += 450
}
else if (y < (gml_Script_cameray() - 450))
    y = 0
if (timer == (4 / f))
    gml_Script_instance_create(((gml_Script_camerax() + 0) + irandom(70)), ((gml_Script_cameray() + 652) + irandom(32)), obj_anime_bg_dot)
if (timer == (10 / f))
    gml_Script_instance_create(((gml_Script_camerax() + 70) + irandom(70)), ((gml_Script_cameray() + 652) + irandom(32)), obj_anime_bg_dot)
if (timer == (44 / f))
    gml_Script_instance_create(((gml_Script_camerax() + 640) - irandom(70)), ((gml_Script_cameray() + 652) + irandom(32)), obj_anime_bg_dot)
if (timer == (50 / f))
    gml_Script_instance_create(((gml_Script_camerax() + 570) - irandom(70)), ((gml_Script_cameray() + 652) + irandom(32)), obj_anime_bg_dot)
if (timer == (20 / f))
    gml_Script_instance_create(((gml_Script_camerax() + 0) + irandom(320)), ((gml_Script_cameray() + 652) + irandom(32)), obj_anime_bg_star)
if (timer == (30 / f))
    gml_Script_instance_create(((gml_Script_camerax() + 320) + irandom(320)), ((gml_Script_cameray() + 652) + irandom(32)), obj_anime_bg_star)
if (timer == (40 / f))
    gml_Script_instance_create((gml_Script_camerax() + irandom(640)), ((gml_Script_cameray() + 652) + irandom(32)), obj_anime_bg_star)
if (timer == (4 / f))
{
    ellipse = gml_Script_instance_create(((gml_Script_camerax() + 260) + irandom(120)), ((gml_Script_cameray() + 652) + irandom(32)), obj_anime_bg_ellipse)
    ellipse.image_blend = c_extra
}
if (timer == (16 / f))
{
    ellipse = gml_Script_instance_create(((gml_Script_camerax() + 260) + irandom(120)), ((gml_Script_cameray() + 652) + irandom(32)), obj_anime_bg_ellipse)
    ellipse.image_blend = c_extra
}
if (timer == (28 / f))
{
    ellipse = gml_Script_instance_create(((gml_Script_camerax() + 260) + irandom(120)), ((gml_Script_cameray() + 652) + irandom(32)), obj_anime_bg_ellipse)
    ellipse.image_blend = c_extra
}
if (timer == (40 / f))
{
    ellipse = gml_Script_instance_create(((gml_Script_camerax() + 0) + irandom(640)), ((gml_Script_cameray() + 652) + irandom(32)), obj_anime_bg_ellipse)
    ellipse.image_blend = c_yellow
}
if (timer == (4 / f))
{
    line = gml_Script_instance_create(((gml_Script_camerax() + 20) + irandom(120)), ((gml_Script_cameray() + 652) + irandom(32)), obj_anime_bg_line)
    line.image_blend = c_extra
}
if (timer == (24 / f))
{
    line = gml_Script_instance_create(((gml_Script_camerax() + 20) + irandom(120)), ((gml_Script_cameray() + 652) + irandom(32)), obj_anime_bg_line)
    line.image_blend = c_extra
}
if (timer == (44 / f))
{
    line = gml_Script_instance_create(((gml_Script_camerax() + 20) + irandom(120)), ((gml_Script_cameray() + 652) + irandom(32)), obj_anime_bg_line)
    line.image_blend = c_extra
}
if (timer == (14 / f))
{
    line = gml_Script_instance_create(((gml_Script_camerax() + 620) - irandom(120)), ((gml_Script_cameray() + 652) + irandom(32)), obj_anime_bg_line)
    line.image_blend = c_extra
}
if (timer == (34 / f))
{
    line = gml_Script_instance_create(((gml_Script_camerax() + 620) - irandom(120)), ((gml_Script_cameray() + 652) + irandom(32)), obj_anime_bg_line)
    line.image_blend = c_extra
}
if (timer == (44 / f))
{
    line = gml_Script_instance_create(((gml_Script_camerax() + 620) - irandom(120)), ((gml_Script_cameray() + 652) + irandom(32)), obj_anime_bg_line)
    line.image_blend = c_extra
}
if (timer == (20 / f))
{
    line = gml_Script_instance_create(((gml_Script_camerax() + 0) + irandom(640)), ((gml_Script_cameray() + 652) + irandom(32)), obj_anime_bg_line)
    line.image_blend = c_yellow
}
if (timer >= (50 / f))
    timer = 0
