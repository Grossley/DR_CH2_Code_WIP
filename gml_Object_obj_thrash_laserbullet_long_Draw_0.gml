if (nextpoint > finalpoint)
{
    laserwidth -= 2
    if (laserwidth <= 0)
        // WARNING: Popz'd an empty stack.
}
image_yscale = max(((laserwidth - 4) / 10), 0)
var oldcolor = 
0
if (lasertimer > 0)
    draw_circle(x, y, (laserwidth + ((lasertimer % 4) > 1 ? 8 : 6)), 0)
else
    draw_circle(x, y, ((laserwidth / 2) + 2), 0)
draw_circle(tailx, taily, ((laserwidth / 2) + 2), 0)
draw_line_width(x, y, tailx, taily, (laserwidth + 4))
16777215
draw_line_width(x, y, tailx, taily, laserwidth)
if (lasertimer > 0)
    draw_circle(x, y, (laserwidth + ((lasertimer % 4) > 1 ? 6 : 4)), 0)
else
    draw_circle(x, y, (laserwidth / 2), 0)
draw_circle(tailx, taily, (laserwidth / 2), 0)
oldcolor
