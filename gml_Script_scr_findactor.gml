with (obj_cutscene_master)
{
    __foundactor = -1
    for (_jjj = 0; _jjj < 20; _jjj++)
    {
        if (actor_name[_jjj] == argument0 && actor_id[_jjj])
            __foundactor = _jjj
    }
    return __foundactor;
}
