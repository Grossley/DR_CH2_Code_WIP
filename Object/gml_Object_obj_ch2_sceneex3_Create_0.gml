con = -1
customcon = 0
if (global.chapter != 2 || global.flag[309] < 8 || global.flag[324] > 0)
{
    if (global.flag[324] == 0)
        gml_Script_scr_losechar()
    instance_destroy()
}
