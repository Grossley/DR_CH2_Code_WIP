qualify = 0
if (type == 0)
{
    if (obj_mainchara_ch1.y >= (y + 200) && last_touched != 1)
    {
        qualify = 1
        last_touched = 1
    }
    if (obj_mainchara_ch1.y <= (y + 200) && last_touched != 0)
    {
        qualify = 1
        last_touched = 0
    }
}
if (type == 1 && last_touched != -1)
{
    if (obj_mainchara_ch1.x >= (x + 200) && last_touched != 3)
    {
        qualify = 1
        last_touched = 3
    }
    if (obj_mainchara_ch1.x <= (x + 200) && last_touched != 2)
    {
        qualify = 1
        last_touched = 2
    }
}
if (qualify == 1)
{
    var _temp_local_var_6 = object_index
    if (last_touched == -1)
        last_touched = 4
}
