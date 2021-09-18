i = 0
loop = true
noroom = false
global.armor[12] = 999
while (loop == true)
{
    if (global.armor[i] == 0)
    {
        global.armor[i] = argument0
        break
    }
    else if (i == 12)
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
gml_Script_scr_armorinfo_all_ch1
return;
