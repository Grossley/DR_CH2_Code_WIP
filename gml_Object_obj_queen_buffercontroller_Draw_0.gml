if (buffering == 1)
{
    var rightside = lerp(-65, 65, (bufferbar / bufferduration))
    8421504
    draw_rectangle((obj_growtangle.x - 65), (obj_growtangle.y - 100), (obj_growtangle.x + 65), (obj_growtangle.y - 90), false)
    16777215
    0
    draw_text((obj_growtangle.x - 65), (obj_growtangle.y - 160), "Buffering...")
    draw_rectangle((obj_growtangle.x - 65), (obj_growtangle.y - 100), (obj_growtangle.x + rightside), (obj_growtangle.y - 90), false)
}
