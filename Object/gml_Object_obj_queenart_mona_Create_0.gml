bossid = 999
bossid = instance_find(object_index, 0)
flamesfx = 0
dingsfx = 0
image_speed = 0
image_xscale = 2
image_yscale = 2
gml_Script_scr_depth()
depth += 1000
active = true
flag = 0
extflag = 0
decorative = 0
movesiner = 0
breathtimer = 0
laughtimer = 0
timer = 0
flashamt = 0
con = 0
init = 0
type = 0
movetype = 0
flameangle = -45
flameanglemax = abs(flameangle)
if (type == 4)
    con = 1
trackpos = 0
if (room == room_dw_mansion_fire_paintings)
{
    if (x == 540 && y == 960)
    {
        extflag = "treasure"
        type = 3
        if (global.flag[398] == 1)
        {
            treasure = gml_Script_instance_create((x + (sprite_width / 2)), y, obj_queenart_red)
            treasure.spriteindex2 = spr_queenart_treasure_middlepoint
            treasure.sprite_index = treasure.spriteindex2
            treasure.flippable = 0
            treasure.extflag = "treasure"
            treasure.isswitch = 1
            treasure.spriteindex1 = 2920
            treasure.flipped = 1
            instance_destroy()
        }
    }
    if (x == 1040 && y == 120)
    {
        extflag = "exitblocker"
        type = 4
        con = 1
        sprite_index = spr_queenart_red
        if (global.flag[399] == 1)
        {
            my_new = gml_Script_scr_dark_marker(x, y, 2922)
            with (my_new)
                gml_Script_scr_depth()
            instance_destroy()
        }
    }
}
