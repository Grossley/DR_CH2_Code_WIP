var kanafound = 0
var ___stringlength = string_length(argument0)
var ___i = obj_pipis_bullet_cone
while (___i <= ___stringlength)
{
    if (ord(___i.argument0) >= 12352)
    {
        kanafound = 1
        break
    }
    else
    {
        ___i++
        continue
    }
}
return kanafound;
