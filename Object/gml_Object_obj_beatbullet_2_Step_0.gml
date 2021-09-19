var _shouldActivate = 0
with (obj_mainchara)
{
    _shouldActivate = 0
    if (battlemode == 1)
        _shouldActivate = 1
}
shouldActivate = _shouldActivate
if (shouldActivate == 1 && framesAway > frames)
    readyToGo = 1
if (gml_Script_snd_is_playing(global.currentsong[1]) && inSync == 1)
{
    var _prevBeats = beats
    beats = (audio_sound_get_track_position(global.currentsong[1]) / spb)
    if (beats < _prevBeats)
    {
        targetBeat -= beatMax
        forgiveLoop = 1
    }
}
else
{
    inSync = 0
    beats += bpf
}
if (abs((beats - beatsPrev)) > 3)
{
    if (!forgiveLoop)
        inSync = 0
    else
        forgiveLoop = 0
}
beatsPrev = beats
framesAway = ((targetBeat - beats) / bpf)
var _percent = max(0, (framesAway / frames))
if (!horizontal)
{
    var _yDiff = abs((ystart - endY))
    y = gml_Script_ease_out_cubic(_percent, endY, (-_yDiff), 1)
    y = max(y, ystart)
}
else
{
    _yDiff = abs((xstart - endY))
    x = gml_Script_ease_out_cubic(_percent, endY, (-_yDiff), 1)
    x = max(x, xstart)
}
if (image_alpha >= 1)
    active = true
else
{
    if (follow != noone)
        x = (follow.x + targetX)
    active = false
}
if (framesAway < (frames + fadeInSpeed) && readyToGo)
    image_alpha = gml_Script_scr_approach(image_alpha, 1, (1 / fadeInSpeed))
if (!readyToGo)
    image_alpha = gml_Script_scr_approach(image_alpha, 0, (1 / fadeInSpeed))
if (framesAway < frames)
{
    if (_percent <= 0)
    {
        if active
        {
            if (global.flag[8] == 0)
            {
                var flash = instance_create_depth(x, y, depth, obj_beatflash)
                flash.image_xscale = sprite_width
                flash.image_yscale = ((1 / sprite_height) * 300)
                flash.image_angle = image_angle
            }
        }
        image_alpha = 0
        readyToGo = 0
        if shouldActivate
            readyToGo = 1
        if (looping != 0)
            targetBeat += looping
        active = false
    }
}
