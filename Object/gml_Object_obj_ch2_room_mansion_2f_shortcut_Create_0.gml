var _temp_local_var_1;
con = 0
key = 0
dooropen = -1
keyfloat = 0
floattimer = 0
keysparkle = 0
sparkletimer = 0
fadeplatters = 0
keyXPos = 0
keyYPos = 0
make_forcefield = 0
forcefield = -4
if (global.flag[346] == 0)
{
    bookcase = gml_Script_instance_create(221, 40, obj_npc_sign)
    bookcase.sprite_index = spr_dw_mansion_bookcase
    var _temp_local_var_1 = bookcase
    gml_Script_scr_depth()
}