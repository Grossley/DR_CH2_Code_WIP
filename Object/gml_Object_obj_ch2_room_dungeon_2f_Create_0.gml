var _temp_local_var_1;
con = -1
cutscene_master = -4
leaveCounter = 0
var cagesama = gml_Script_instance_create(70, 75, obj_npc_room)
cagesama.sprite_index = spr_npc_gouldensam
cagesama.depth = 500000
var cagesamb = gml_Script_instance_create((cagesama.x + 280), cagesama.y, obj_npc_room)
cagesamb.sprite_index = spr_npc_gouldensam
cagesamb.depth = 500000
var cageking = gml_Script_instance_create(cagesama.x, cagesama.y, obj_npc_room)
cageking.sprite_index = spr_npc_cage_king_castle
cageking.depth = (cagesama.depth - 10)
var cageanimal = gml_Script_instance_create(cagesamb.x, cagesamb.y, obj_npc_room)
cageanimal.sprite_index = spr_npc_cage_animals_castle
cageanimal.depth = (cagesamb.depth + 10)
var checkers = gml_Script_instance_create(60, 260, obj_npc_room_animated)
checkers.sprite_index = spr_smallcheckers_front
var _temp_local_var_1 = checkers
gml_Script_scr_depth()
