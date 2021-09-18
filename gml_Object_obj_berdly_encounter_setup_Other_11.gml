var _temp_local_var_1;
state = 1
gml_Script_instance_create(x, y, o_berdly_hide_intro_markers)
global.specialbattle = 3
global.encounterno = 58
encounterflag = 529
global.flag[54] = encounterflag
global.encounterno
if (global.flag[9] != 2)
{
    global.flag[9] = 1
    global.batmusic[0] = "berdly_chase.ogg"
}
global.interact = 2
if (global.flag[9] == 1)
    gml_Script_snd_volume(global.currentsong[1], 0, 20)
global.encounterno
with (obj_mainchara)
    visible = false
var _temp_local_var_1 = global.cinstance[0]
visible = false
