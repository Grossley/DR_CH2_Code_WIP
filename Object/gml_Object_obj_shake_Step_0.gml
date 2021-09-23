if (active == false)
{
    beenset = true
    mycamerax = gml_Script___view_get(0, camera)
    mycameray = gml_Script___view_get(1, camera)
    if (global.flag[12] == 0)
    {
        gml_Script___view_set(0, camera, (mycamerax + shakex))
        gml_Script___view_set(1, camera, (mycameray + shakey))
    }
    shakesign = (-shakesign)
    active = true
    alarm[0] = shakespeed
}
