xx = gml_Script___view_get(0, 0)
yy = gml_Script___view_get(1, 0)
if (global.fc != 0)
    battlewriter = gml_Script_instance_create_ch1((xx + 30), (yy + 376), 1327)
if (global.fc == 0)
    battlewriter = gml_Script_instance_create_ch1((xx + 30), (yy + 376), 1327)
myface = gml_Script_instance_create_ch1((xx + 26), (yy + 380), 1324)
with (battlewriter)
{
    dialoguer = 1
    facer = 1
    if (global.fc == 0 && originalcharline == 33)
        charline = 26
}
return battlewriter;
