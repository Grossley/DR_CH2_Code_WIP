var _bpf = ((bpm / 60) / game_get_speed(gamespeed_fps))
var _spb = (1 / (bpm / 60))
if (global.currentsong[1] && inSync == 1)
{
    beat = (global.currentsong[1] / _spb)
    beat = beat
}
else
{
    inSync = 0
    beat += _bpf
    if (beat >= 1)
        beat -= 1
}
image_index = (beat * (image_number * loopsPerBeat))
