event_inherited()
element = 6
if instance_exists(obj_spamton_neo_enemy)
    damage = floor(((global.monsterat[obj_spamton_neo_enemy.myself] * 5) / 3))
if instance_exists(obj_sneo_bulletcontroller)
    target = obj_sneo_bulletcontroller.target
grazepoints = 4
steptimer = 0
stepping = 1
pushback = 0
advancespeed = 3
image_speed = 0
mouthopen = 0
destroyonhit = false
introtimer = 0
intro = 0
mouthx = 90
mouthy = 142
instance_create(x, y, obj_sneo_final_forme_hitbox)
state = 0
formtimer = 0
stepdir = -1
made = 0
fakeheart = -4
fakeheart_speed = 0
effecttimer = 0
lerptimer = 0
inhalesfx = 0
hurtalpha = 0
bullet_suck_x1 = 20
bullet_suck_x2 = 130
bullet_suck_y1 = 100
bullet_suck_y2 = 190
movetimer = 0
moveframes = 12
movecon = 0
timer2 = 0
timer3 = 0
headoffset_x = 0
headoffset_y = 0
dmgcon = 0
back = instance_create(x, y, obj_sneo_final_forme_mouth_back)
back.depth = (depth + 1)
if i_ex(obj_heart)
    back.depth = (obj_heart.depth + 1)
hidemouthback = 0
playback_sprite = scr_84_get_sprite("spr_sneo_playback")
