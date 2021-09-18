16777215
draw_text(10, 10, 1099)
if global.currentsong[1]
{
    var _beats = (global.currentsong[1] / spb)
    draw_text(10, 40, _beats)
}
