i = 0
loop = true
noroom = false
global.litem[8] = 999
while (loop == true)
{
    if (global.litem[i] == 0)
    {
        global.litem[i] = argument0
        break
    }
    else if (i == 8)
    {
        noroom = true
        break
    }
    else
    {
        i += 1
        continue
    }
}
gml_Script_scr_litemname()
return;
