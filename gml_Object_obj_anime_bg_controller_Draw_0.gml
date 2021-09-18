timer++
x = 
if (image_alpha > 0.1 && init == 0)
{
    init = 1
    dronesfx = 244
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
        sidenoise = 242
        gml_Script_snd_volume(sidenoise, 0.3, 0)
        gml_Script_snd_pitch(sidenoise, (0.6 + random(0.6)))
    }
}
c_extra = make_colour_rgb(255, 90, 195)
// WARNING: Popz'd an empty stack.
draw_sprite_ext(sprite_index, 0, x, (y + 480), 1, 1, 0, c_white, image_alpha)
if (room == room_dw_mansion_top)
{
    if (y - 450)
        y += 450
}
else if (y - 450)
    y = 0
if (timer == (4 / f))
    ((((1072 + 652) + irandom(32)) + 0) + irandom(70))
if (timer == (10 / f))
    ((((1072 + 652) + irandom(32)) + 70) + irandom(70))
if (timer == (44 / f))
    ((((1072 + 652) + irandom(32)) + 640) - irandom(70))
if (timer == (50 / f))
    ((((1072 + 652) + irandom(32)) + 570) - irandom(70))
if (timer == (20 / f))
    ((((1071 + 652) + irandom(32)) + 0) + irandom(320))
if (timer == (30 / f))
    ((((1071 + 652) + irandom(32)) + 320) + irandom(320))
if (timer == (40 / f))
    (((1071 + 652) + irandom(32)) + irandom(640))
if (timer == (4 / f))
{
    ellipse = ((((obj_anime_bg_ellipse + 652) + irandom(32)) + 260) + irandom(120))
    ellipse.image_blend = c_extra
}
if (timer == (16 / f))
{
    ellipse = ((((obj_anime_bg_ellipse + 652) + irandom(32)) + 260) + irandom(120))
    ellipse.image_blend = c_extra
}
if (timer == (28 / f))
{
    ellipse = ((((obj_anime_bg_ellipse + 652) + irandom(32)) + 260) + irandom(120))
    ellipse.image_blend = c_extra
}
if (timer == (40 / f))
{
    ellipse = ((((obj_anime_bg_ellipse + 652) + irandom(32)) + 0) + irandom(640))
    ellipse.image_blend = c_yellow
}
if (timer == (4 / f))
{
    line = ((((obj_anime_bg_line + 652) + irandom(32)) + 20) + irandom(120))
    line.image_blend = c_extra
}
if (timer == (24 / f))
{
    line = ((((obj_anime_bg_line + 652) + irandom(32)) + 20) + irandom(120))
    line.image_blend = c_extra
}
if (timer == (44 / f))
{
    line = ((((obj_anime_bg_line + 652) + irandom(32)) + 20) + irandom(120))
    line.image_blend = c_extra
}
if (timer == (14 / f))
{
    line = ((((obj_anime_bg_line + 652) + irandom(32)) + 620) - irandom(120))
    line.image_blend = c_extra
}
if (timer == (34 / f))
{
    line = ((((obj_anime_bg_line + 652) + irandom(32)) + 620) - irandom(120))
    line.image_blend = c_extra
}
if (timer == (44 / f))
{
    line = ((((obj_anime_bg_line + 652) + irandom(32)) + 620) - irandom(120))
    line.image_blend = c_extra
}
if (timer == (20 / f))
{
    line = ((((obj_anime_bg_line + 652) + irandom(32)) + 0) + irandom(640))
    line.image_blend = c_yellow
}
if (timer >= (50 / f))
    timer = 0
