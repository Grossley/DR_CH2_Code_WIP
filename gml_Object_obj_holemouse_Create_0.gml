// WARNING: Popz'd an empty stack.
direction = 270
image_xscale = 2
image_yscale = 2
invulnerable = 0
fall = 0
gulped = 0
176
timer = 0
emergetimer = 0
drawx = x
drawy = y
con = 0
lifespan = 100
breakcount = 0
win = 0
deathtimer = 0
target = 0
hastarget = 0
jumppuzzle = 0
if 1180
{
    jumppuzzle = 1
    hastarget = 1
    target = obj_masterPlatformController.plat[(obj_masterPlatformController.currentPlatform - 1)]
}
if (place_meeting(x, (y + 40), obj_holemouse_block_counterclockwise) || place_meeting(x, (y + 40), obj_holemouse_invis_counterclockwise) || place_meeting(x, (y + 40), obj_holemouse_invis_clockwise) || place_meeting(x, (y + 40), obj_holemouse_block_clockwise))
    blockedstart = 1
else
    blockedstart = 0
currentdir = direction
initas = 0
bounceOffDoor = 1
bounceTargetX = 320
bounceTargetY = 240
bounceTargetDir = 90
customSprite = 2683
fakeY = 0
fakeYSpeed = 0
bouncecon = 0
falltimer = 0
bouncethisframe = 0
