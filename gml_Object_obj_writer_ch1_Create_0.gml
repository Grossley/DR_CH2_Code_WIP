skipme = false
textsound = snd_text_ch1
charline = 33
originalcharline = charline
hspace = 8
vspace = 18
rate = 1
mycolor = c_white
myfont = "main"
shake = 0
special = 0
skippable = true
automash_timer = 0
if (global.flag[6] == 1)
    skippable = false
f = 1
if (global.darkzone == true)
    f = 2
// WARNING: Popz'd an empty stack.
autoaster = true
pos = 2
lineno = 0
aster = false
halt = 0
xcolor = c_black
wxskip = 0
msgno = 0
first_alarm = 0
firstnoise = false
noiseskip = false
formatted = 0
colorchange = false
fontchange = 0
sound_played = false
writingx = x
writingy = y
dialoguer = 0
smallface = 505050
faced = 0
facedever = 0
facer = 0
siner = 0
specfade = 1
for (i = 0; i < 7; i += 1)
{
    specx[i] = (i * 6)
    specy[i] = (i * 6)
}
mystring = global.msg[0]
for (j = 0; j < 100; j += 1)
    nstring[j] = global.msg[j]
length = mystring
alarm[0] = rate
if (rate < 3)
    alarm[2] = 1
else
    // WARNING: Popz'd an empty stack.
