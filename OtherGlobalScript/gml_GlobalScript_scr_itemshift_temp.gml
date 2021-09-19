tempitem[12][argument1] = 0
for (i = argument0; i < 12; i += 1)
    tempitem[i][argument1] = tempitem[(i + 1)][argument1]
return;
