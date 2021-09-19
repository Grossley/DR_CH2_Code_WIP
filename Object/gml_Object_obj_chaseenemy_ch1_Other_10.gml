if (touchflag > 0)
    global.flag[touchflag] = 1
newme = gml_Script_instance_create_ch1(x, y, 1487)
newme.sprite_index = touchsprite
newme.touchsprite = touchsprite
newme.slidesprite = sprite_index
newme.depth = depth
newme.eraser = eraser
with (newme)
    event_user(0)
global.encounterno = myencounter
instance_destroy()
