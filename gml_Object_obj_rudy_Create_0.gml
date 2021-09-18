con = 0
if (global.flag[255] == 0)
{
    global.interact = 1
    con = 1
    n = gml_Script_scr_marker(118, 88, 750)
    n.depth = 100000
    sprite_index = spr_rudy_l
}
else
{
    gml_Script_instance_create(x, y, obj_npc_room)
    // WARNING: Popz'd an empty stack.
}
interact = 0
myinteract = 0
talked = 0
