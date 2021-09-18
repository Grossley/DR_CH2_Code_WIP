if (global.currentsong[1] && inSync == 1)
    beats = (global.currentsong[1] / spb)
else
{
    inSync = 0
    beats += bpf
}
if ((beats - beatsPrev) > 3)
    inSync = 0
beatsPrev = beats
framesAway = ((targetBeat - beats) / bpf)
var _percent = max(0, (framesAway / frames))
var _yDiff = (ystart - endY)
y = gml_Script_ease_out_cubic(_percent, endY, (-_yDiff), 1)
y = max(y, ystart)
if (image_alpha >= 1)
    active = true
else if (follow != noone)
    x = (follow.x + targetX)
if (framesAway < (frames + fadeInSpeed))
    image_alpha = gml_Script_scr_approach(image_alpha, 1, (1 / fadeInSpeed))
if (framesAway < frames)
{
    if (_percent <= 0)
        // WARNING: Popz'd an empty stack.
}
if (room == room_dw_cyber_maze_virokun && y >= 240)
{
    y = 240
    // WARNING: Popz'd an empty stack.
}
if (room == room_dw_cyber_maze_rhythm && y > 2440)
{
    y = 2440
    // WARNING: Popz'd an empty stack.
}
