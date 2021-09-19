gml_Script_scr_darksize(id)
siner = 0
flip_timer = floor(random(30))
mode = 0
remcameray = gml_Script_cameray()
blend = 1
gml_Script_scr_depth()
breakable = 0
attached = 0
attachedobj = 348
balloonid = -1
if (room == room_dw_city_postbaseball_3)
{
    sprite_index = spr_bg_city_balloon_carrier
    mode = 2
}
paused = 0
rem_hspeed = hspeed
rem_friction = friction
rem_gravity = gravity
