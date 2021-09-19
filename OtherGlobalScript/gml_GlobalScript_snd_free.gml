if instance_exists(obj_astream)
{
    _xstream = argument0
    obj_astream.bstream = _xstream
    with (obj_astream)
    {
        if (bstream == mystream)
            instance_destroy()
    }
}
return;
