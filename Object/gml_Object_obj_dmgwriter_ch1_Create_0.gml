spec = 0
delaytimer = 0
delay = 2
active = false
damage = round(random(600))
bounces = 0
type = -1
stretch = 0.2
stretchgo = 1
lightf = merge_color(c_purple, c_white, 0.6)
lightb = merge_color(c_aqua, c_white, 0.5)
lightg = merge_color(c_lime, c_white, 0.5)
kill = 0
killtimer = 0
killactive = false
with (obj_dmgwriter_ch1)
{
    if (type != 3)
        killtimer = 0
}
specialmessage = 0
