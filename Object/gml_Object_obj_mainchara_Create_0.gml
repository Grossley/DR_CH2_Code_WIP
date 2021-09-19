gml_Script_scr_depth()
global.currentroom = room
gml_Script_scr_initialize_charnames()
autorun = 0
bg = 0
if instance_exists(obj_backgrounderparent)
    bg = 1
stepping = 0
stepped = false
drawbattlemode = 1
battlemode = 0
battleheart = gml_Script_instance_create(x, y, obj_overworldheart)
battleheart.image_alpha = 0
battleheart.image_speed = 0
battlealpha = 0
becamebattle = false
sliding = 0
becamesword = 0
swordmode = 0
swordcon = 0
swordtimer = 0
stop_movement = 0
roomenterfreezeend = 0
darkmode = global.darkzone
if (darkmode == true)
{
    stepping = 1
    image_xscale = 2
    image_yscale = 2
}
cutscene = false
press_l = 0
press_r = 0
press_d = 0
press_u = 0
px = 0
py = 0
wallcheck = 0
wspeed = 3
bwspeed = 3
if (darkmode == true)
{
    bwspeed = 4
    wspeed = 4
}
run = 0
runtimer = 0
runcounter = 0
subxspeed = 0
subyspeed = 0
subx = 0
suby = 0
walkanim = 0
walkbuffer = 0
walktimer = 0
image_speed = 0
dsprite = spr_krisd
rsprite = spr_krisr
usprite = spr_krisu
lsprite = spr_krisl
if (global.darkzone == true)
{
    dsprite = spr_krisd_dark
    rsprite = spr_krisr_dark
    lsprite = spr_krisl_dark
    usprite = spr_krisu_dark
}
swordfacing = 1
swordsprite = rsprite
fun = false
if (global.facing == 0)
    sprite_index = dsprite
if (global.facing == 1)
    sprite_index = rsprite
if (global.facing == 2)
    sprite_index = usprite
if (global.facing == 3)
    sprite_index = lsprite
onebuffer = 0
twobuffer = 0
threebuffer = 0
global.menuno = 0
for (i = 0; i < 10; i += 1)
    global.menucoord[i] = 0
cameFromEntrance = global.entrance
if (global.interact == 3)
{
    noentrancefound = 0
    if (global.entrance > 0)
    {
        if (global.flag[21] <= 0)
        {
            global.interact = 0
            global.flag[21] = -10
            roomenterfreezeend = 1
        }
        switch global.entrance
        {
            case 1:
                if gml_Script_i_ex(154)
                    gml_Script_setxy(obj_markerA.x, obj_markerA.y)
                else
                    noentrancefound = 1
                break
            case 2:
                if gml_Script_i_ex(155)
                    gml_Script_setxy(obj_markerB.x, obj_markerB.y)
                else
                    noentrancefound = 1
                break
            case 3:
                if gml_Script_i_ex(156)
                    gml_Script_setxy(obj_markerC.x, obj_markerC.y)
                else
                    noentrancefound = 1
                break
            case 4:
                if gml_Script_i_ex(157)
                    gml_Script_setxy(obj_markerD.x, obj_markerD.y)
                else
                    noentrancefound = 1
                break
            case 5:
                if gml_Script_i_ex(158)
                    gml_Script_setxy(obj_markerE.x, obj_markerE.y)
                else
                    noentrancefound = 1
                break
            case 6:
                if gml_Script_i_ex(159)
                    gml_Script_setxy(obj_markerF.x, obj_markerF.y)
                else
                    noentrancefound = 1
                break
            case 18:
                if gml_Script_i_ex(160)
                    gml_Script_setxy(obj_markerr.x, obj_markerr.y)
                else
                    noentrancefound = 1
                break
            case 19:
                if gml_Script_i_ex(161)
                    gml_Script_setxy(obj_markers.x, obj_markers.y)
                else
                    noentrancefound = 1
                break
            case 20:
                if gml_Script_i_ex(162)
                    gml_Script_setxy(obj_markert.x, obj_markert.y)
                else
                    noentrancefound = 1
                break
            case 21:
                if gml_Script_i_ex(163)
                    gml_Script_setxy(obj_markeru.x, obj_markeru.y)
                else
                    noentrancefound = 1
                break
            case 22:
                if gml_Script_i_ex(164)
                    gml_Script_setxy(obj_markerv.x, obj_markerv.y)
                else
                    noentrancefound = 1
                break
            case 23:
                if gml_Script_i_ex(165)
                    gml_Script_setxy(obj_markerw.x, obj_markerw.y)
                else
                    noentrancefound = 1
                break
            case 24:
                if gml_Script_i_ex(166)
                    gml_Script_setxy(obj_markerX.x, obj_markerX.y)
                else
                    noentrancefound = 1
                break
            default:
                noentrancefound = 1
        }

        if (noentrancefound == 1)
        {
            if gml_Script_i_ex(139)
            {
                with (obj_markerAny)
                {
                    if (image_index == global.entrance)
                    {
                        other.x = x
                        other.y = y
                    }
                }
            }
            else
            {
                ((room_height / 2).room_width / 2)
                gml_Script_debug_message("entrance not found, setting to center of room")
                gml_Script_debug_message(("entrance requested was global.entrance=" + string(global.entrance)))
            }
        }
    }
}
initwd = sprite_width
initht = sprite_height
mywidth = sprite_width
myheight = sprite_height
for (i = 0; i < 3; i += 1)
    global.battledf[i] = (((global.df[global.char[i]] + global.itemdf[global.char[i]][0]) + global.itemdf[global.char[i]][1]) + global.itemdf[global.char[i]][2])
if (global.chapter == 2)
{
    if (global.flag[302] == 1)
        gml_Script_instance_create(x, y, obj_kris_headobj)
}