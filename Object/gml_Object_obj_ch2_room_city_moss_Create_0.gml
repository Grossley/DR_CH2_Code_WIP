con = -1
global.interact = 0
global.facing = 0
dumpster = gml_Script_instance_create(300, 120, obj_npc_dumpster)
with (dumpster)
    gml_Script_scr_depth()
dumpster_con = ((gml_Script_scr_sideb_get_phase() == 0 || (!gml_Script_scr_havechar(4))) ? 0 : 10)
