i = 0
while (i < 10)
{
    var _temp_local_var_1 = _charactsprite[i]
    instance_destroy()
}
with (obj_heroparent)
{
    if (image_alpha == 0)
    {
        image_alpha = 1
        acttimer = 0
        state = 0
        global.faceaction[myself] = 0
    }
}
return;
