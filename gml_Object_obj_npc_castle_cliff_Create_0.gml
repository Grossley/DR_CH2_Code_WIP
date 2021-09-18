var _temp_local_var_4;
con = -1
sinerx = 0
sinery = 0
siner0 = 0
siner_add0 = 0.2
siner_amplitude0 = 0
siner_direction0 = 0
siner1 = 0
siner_add1 = 0.2
siner_amplitude1 = 5
siner_direction1 = 90
sfx = 0
shine = noone
remove_shine = 0
if (global.plot >= 10)
{
    if (7 == 0 && 7 == 0 && 7 == 0 && global.charweapon[2] != 7)
    {
        if (global.tempflag[35] == 0)
        {
            global.tempflag[35] = 1
            // WARNING: Popz'd an empty stack.
        }
    }
    var show_shine = (global.tempflag[36] == 1 || global.tempflag[36] == 2)
    if (show_shine && global.plot >= 200 && global.flag[309] < 9)
        show_shine = 0
    var hole = gml_Script_scr_marker(281, 200, 3327)
    var _temp_local_var_4 = hole
}
if (global.chapter != 2 || global.flag[314] == 1)
    // WARNING: Popz'd an empty stack.
