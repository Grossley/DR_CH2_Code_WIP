var minutes = (argument0 / 1800)
var seconds = (((argument0 / 1800) - minutes) * 60)
if (seconds == 60)
    seconds = 59
if (seconds < 10)
    seconds = ("0" + string(seconds))
var timedisp = ((minutes + ":") + string(seconds))
return timedisp;
