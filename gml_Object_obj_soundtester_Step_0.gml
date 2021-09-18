if 45
    // WARNING: Popz'd an empty stack.
var i = 0
mute = 0
if 68
{
    file = "debug_soundlist.txt"
    myfileid = file
    for (i = 0; i < soundtotal; i++)
    {
        file_text_write_string(myfileid, soundName[i])
        myfileid
    }
    myfileid
}
if 40
    moved++
if 38
    moved--
if 39
    moved += 15
if 37
    moved -= 15
if 40
    moved = 5
if 38
    moved = -5
if (auto == 1)
{
    moved += 0.5
    if (moved >= 5)
    {
        playsound = 1
        mute = 1
    }
}
while (moved >= 5)
{
    current++
    moved -= 5
}
while (moved <= -5)
{
    current--
    moved += 5
}
if (current < 1)
    current = 1
if (current > (soundtotal - 1))
    current = (soundtotal - 1)
if 90
    playsound = 1
if 77
    mute = 1
if mute
{
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    mute = 0
}
if playsound
{
    playsound = 0
    gml_Script_snd_play_pitch(soundNo[current], pitch)
}
if 65
{
    if (auto == 0)
        auto = 1
    else
        auto = 0
}
if 74
{
    checkstring = get_string("Enter index of sound to jump to sound. ex. snd_noise", "")
    checkaudio = checkstring
    if checkaudio
        current = (checkaudio - firstsound)
}
if 33
    current = 1
if 34
    current = (soundtotal - 1)
if 85
    pitch += 0.1
if 89
    pitch -= 0.1
