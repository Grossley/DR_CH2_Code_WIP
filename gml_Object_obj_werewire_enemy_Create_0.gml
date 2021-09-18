var _temp_local_var_1;
// WARNING: Popz'd an empty stack.
talkmax = 90
image_speed = 0.16
idlesprite = spr_werewire_idle
hurtsprite = spr_werewire_hurt
sparedsprite = spr_plugboy_spare
loosenAmount = 0
loosencon = 0
throwsus = -4
siner = 0
siner_timer = 0
hangx = 26
hangy = -58
init_hangy = hangy
remx = x
remy = y
hangcon = 0
hangtimer = 0
hangsiner = 0
shootcon = 0
shoottimer = 0
shootwait = 4
mercyaccumulated = 0
anim_timer_2 = 0
stop_anim = 0
talkwait = 0
m = 2
global.turntimer = 0
initid = 0
werewire_count = object_index
shootmode = 2
shootwait = 10
var _temp_local_var_1 = object_index
if variable_instance_exists(id, "initid")
{
    initid++
    shootwait = ((random(5) + (initid * 30)) - 15)
}
