frames++
var newpitch = lerp(initpitch, targetpitch, (frames / maxframes))
gml_Script_snd_pitch(sndtarget, newpitch)
if (frames >= maxframes)
    // WARNING: Popz'd an empty stack.
