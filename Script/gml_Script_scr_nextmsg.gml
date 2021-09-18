msgno += 1
lineno = 0
aster = false
halt = 0
pos = 1
alarm[0] = 1
drawaster = 1
autoaster = true
miniface_pos = 0
miniface_current_pos = -1
mystring = nstring[msgno]
formatted = 0
wxskip = 0
sound_played = false
forcebutton1 = 0
if (rate < 3)
{
    firstnoise = false
    alarm[2] = 1
}
return;
