var _temp_local_var_1;
__writerkilled = 0
__writerkillable = 0
__writerended = 0
if 62
{
    obj_writer.__endcheckid = id
    with (obj_writer)
    {
        if (reachedend == 1)
        {
            var _temp_local_var_1 = __endcheckid
            __writerended++
        }
    }
    if (__writerended == instance_number(obj_writer))
        __writerkillable = 1
}
else
    __writerkilled = 1
if (__endcheckid && __writerkillable == 1)
{
    with (obj_writer)
        // WARNING: Popz'd an empty stack.
    __writerkilled = 1
}
return __writerkilled;
