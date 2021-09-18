type = 0
image_xscale = 1
image_yscale = 1
image_alpha = 0
con = 0
timer = 0
type = 0
if (room == room_dw_mansion_dininghall)
    type = 1
if (type == 0)
{
    sprite_index = spr_bullet_laser_circle
    94
    vspeed = (-20 - random(3))
    friction = 1
}
else
{
    gml_Script_snd_play_pitch(94, 0.5)
    sprite_index = spr_pipis_egg
    image_speed = 0
    image_index = 0
    if x.room_width
    {
        dir = "left"
        hspeed = (-12 - random(3))
    }
    if (x < 0)
    {
        dir = "right"
        hspeed = (12 + random(3))
    }
}
