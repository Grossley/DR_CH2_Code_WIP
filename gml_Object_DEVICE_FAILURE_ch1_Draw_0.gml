FADEFACTOR
if (WHITEFADE == 0)
    0
else
    16777215
draw_rectangle(-10, -10, 999, 999, false)
1
if (FADEUP > 0)
{
    if (FADEFACTOR < 1)
        FADEFACTOR += FADEUP
}
