depth = 500000
if 941
{
    // WARNING: Popz'd an empty stack.
    return;
}
image_xscale = 2
image_yscale = 2
con = 0
image_speed = 0
kris_dist = 0
draw_kris = 0
kris_only = 1
kris_x = (x - 24)
kris_y = (y - 80)
sus_x = (x - 60)
sus_y = (y - 94)
nextroom = 61
if 2
{
    kris_only = 0
    kris_x = (x + 12)
    kris_y = (y - 80)
}
fake_v = 0
siner = 0
drawpillar = 1
pillarsiner = 0
pillaralpha = 0
pillarscale = 2
particletimer = 0
top = 0
bottom = 1
if (940 == 1)
{
    toppart = gml_Script_instance_create(x, y, obj_dw_leave)
    toppart.top = 1
    toppart.bottom = 0
    toppart.depth = 5000
}
stopcon = 0
if (global.plot == 16 && global.chapter == 2)
    stopcon = 1
