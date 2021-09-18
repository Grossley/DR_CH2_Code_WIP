var _temp_local_var_1, _temp_local_var_4, _temp_local_var_10, _temp_local_var_11;
if (obj_mainchara.x > 120 && con == 0)
    con = 1
if (con == 1)
{
}
else
    var _temp_local_var_11 = 0
queen_monitor.turnon = 1
global.interact = 1
global.flag[400] = 1
con++
if (con == 2)
{
}
else
    var _temp_local_var_10 = 0
"queen"
gml_Script_msgsetloc(0, "* Now I Know You Are All Loving My Mansion/", "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_16_0_b")
gml_Script_msgnextloc("* But We Have A Few Rules Around Here You Have To Follow/", "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_17_0")
gml_Script_msgnextloc("* One Wipe Your Shoes/", "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_18_0")
gml_Script_msgnextloc("* Two Have Fun/", "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_19_0")
gml_Script_msgnextloc("* Three Respect The Pottery/", "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_20_0")
gml_Script_msgnextloc("* Four Have Fun/", "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_21_0")
gml_Script_msgnextloc("* Five List Entry Duplication Error/%", "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_22_0")
d = 
d.side = 1
con++
timer = 0
if (con == 3 && queen_monitor.turnoff == 0)
{
    queen_monitor.turnoff = 1
    global.interact = 0
}
if (con == 3 && (!1254))
{
    global.flag[400] = 2
    163
    enemy1 = gml_Script_instance_create(-146, 200, obj_chaseenemy)
    var _temp_local_var_4 = enemy1
    myencounter = 64
    sprite_index = spr_npc_swatchling_sweep_walk
    touchsprite = spr_swatchling_hurt
    radius = 10000
    ignoresolid = true
    alertcon = 0
    alertskip = 1
    eraser = true
    facing = 1
    chasetype = 7
}
if (con == 4)
{
    if ((!gml_Script_i_ex(enemy1)) || (!gml_Script_i_ex(enemy2)))
        con = 5
}
if (con == 5)
{
}
