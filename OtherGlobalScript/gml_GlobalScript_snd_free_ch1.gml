if instance_exists(obj_astream_ch1)
{
    _xstream = argument0
    obj_astream_ch1.bstream = _xstream
    with (obj_astream_ch1)
    {
        if (bstream == mystream)
            instance_destroy()
    }
}
return;
