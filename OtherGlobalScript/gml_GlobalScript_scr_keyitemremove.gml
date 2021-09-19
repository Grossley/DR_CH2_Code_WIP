removed = 0
gml_Script_scr_keyitemcheck(argument0)
if (haveit == 1)
{
    loc = 0
    skip = 0
    if (global.keyitem[0] == argument0 && skip == 0)
    {
        loc = 0
        skip = 1
    }
    if (global.keyitem[1] == argument0 && skip == 0)
    {
        loc = 1
        skip = 1
    }
    if (global.keyitem[2] == argument0 && skip == 0)
    {
        loc = 2
        skip = 1
    }
    if (global.keyitem[3] == argument0 && skip == 0)
    {
        loc = 3
        skip = 1
    }
    if (global.keyitem[4] == argument0 && skip == 0)
    {
        loc = 4
        skip = 1
    }
    if (global.keyitem[5] == argument0 && skip == 0)
    {
        loc = 5
        skip = 1
    }
    if (global.keyitem[6] == argument0 && skip == 0)
    {
        loc = 6
        skip = 1
    }
    if (global.keyitem[7] == argument0 && skip == 0)
    {
        loc = 7
        skip = 1
    }
    if (global.keyitem[8] == argument0 && skip == 0)
    {
        loc = 8
        skip = 1
    }
    if (global.keyitem[9] == argument0 && skip == 0)
    {
        loc = 9
        skip = 1
    }
    if (global.keyitem[10] == argument0 && skip == 0)
    {
        loc = 10
        skip = 1
    }
    if (global.keyitem[11] == argument0 && skip == 0)
    {
        loc = 11
        skip = 1
    }
    gml_Script_scr_keyitemshift(loc, 0)
    removed = 1
}
return;
