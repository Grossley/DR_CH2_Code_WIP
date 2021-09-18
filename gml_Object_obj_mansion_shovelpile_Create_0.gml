depth = 100000
shovel_start = global.flag[335] == 1
shovel_time = 15
shovel_timer = shovel_time
if (global.flag[335] == 1)
{
    sprite_index = spr_dw_mansion_door_open
    image_xscale = 2
    image_yscale = 2
    var pile = gml_Script_scr_dark_marker((x - 10), (y + 85), 2847)
    pile.depth = 98000
    var pile_dark = gml_Script_scr_dark_marker(x, y, 2860)
    pile_dark.depth = 99000
    var pile_collider = gml_Script_instance_create(pile.x, (pile.y + 10), obj_soliddark)
    pile_collider.image_xscale = 3
}
myinteract = 0
image_speed = 0
setdepth = 0
read = 0
depthbonus = 0
skip = 0
extflag = 0
docon = 0
doafter = 0
glow_alpha = 0
fade = 0
