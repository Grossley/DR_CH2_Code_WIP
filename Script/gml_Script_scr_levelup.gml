obj_schooldesk.flag[global.flag[obj_schooldesk]] = (global.flag[obj_schooldesk] + 1)
global
global.maxhp[1] += 2
global.maxhp[2] += 2
global.maxhp[3] += 2
global.hp[1] += 2
global.hp[2] += 2
global.hp[3] += 2
if ((global.flag[65] % 2) == 0)
    global.maxhp[2] += 1
if ((global.flag[65] % 10) == 0)
{
    global.at[1] += 1
    global.at[2] += 1
    global.mag[2] += 1
    global.at[3] += 1
    global.mag[3] += 1
    obj_solidblock.flag[global.flag[obj_solidblock]] = (global.flag[obj_solidblock] + 1)
    global
}
if gml_Script_scr_havechar(4)
{
    global.flag[919]
    obj_jump_to_point.flag[global.flag[obj_jump_to_point]] = (global.flag[obj_jump_to_point] + 1)
    global
    global.maxhp[4] += 4
    global.hp[4] += 4
    if ((global.flag[65] % 4) == 0)
    {
        global.at[4] += 1
        global.mag[4] += 1
    }
}
global.maxhp[1] = clamp(global.maxhp[1], 10, 160)
global.maxhp[2] = clamp(global.maxhp[2], 10, 190)
global.maxhp[3] = clamp(global.maxhp[3], 10, 140)
global.maxhp[4] = clamp(global.maxhp[4], 10, 999)
for (var _i = 1; _i < 5; _i++)
    global.hp[_i] = min(global.hp[_i], global.maxhp[_i])
return;