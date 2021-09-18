var _temp_local_var_1, _temp_local_var_3, _temp_local_var_6, _temp_local_var_13;
if (myinteract == 1)
{
}
else
    var _temp_local_var_13 = 0
myinteract = 0
global.interact = 0
if 32
    tasquespawn = 1
if (extflag == 2 && tasquespawn == 1)
{
    if (tasquecon == 0 && tasqueTrig == 0)
    {
        tasqueTrig = 1
        timer = 0
        tasquetimer = 0
        tasquecon = 2
        image_index = 1
        tasquemarker_head1 = gml_Script_scr_dark_marker((x + 4), (y + 10), 1668)
        tasquemarker1 = gml_Script_scr_dark_marker((x + 4), (y + 10), 1663)
        tasquemarker1.image_alpha = 0
        tasquemarker_head1.depth = (depth - 11)
        tasquemarker1.depth = (depth - 10)
        159
        tasquemarker1.remid = id
        var _temp_local_var_3 = tasquemarker1
        remjump = gml_Script_scr_jump_to_point(other.x, 610, 15, 24)
        remid.remjump = remjump
    }
    if (tasquecon == 2)
    {
        var _temp_local_var_6 = remjump
        image_alpha += 0.05
    }
}
