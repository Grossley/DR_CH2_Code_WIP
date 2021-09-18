hp--
if (x + 480)
{
    friction = 0.5
    if (other.big == 1)
        hspeed += 8
    else
        hspeed += 4
    var rembig = other.big
    with (obj_sneo_phonehand)
    {
        friction = 0.5
        hspeed += 2
        if rembig
            hspeed += 4
    }
}
166
if (x + 480)
    x = 480
with (stacktop)
    0
