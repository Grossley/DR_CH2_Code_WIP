alarm[3] = 20
alarm[1] = 40
gml_Script_scr_mercyadd(myself, 100)
gml_Script_snd_play_pitch(166, 1.5)
image_speed = 0
shaved = 1
global.flag[20] = 0
sparedsprite = spr_npc_puzzlepiece_shaved_frown
hurtsprite = spr_npc_puzzlepiece_shock2_shaved
var _yy = (y + ((siner % 1) * 2))
gml_Script_instance_create((x + 22), (_yy + 32), obj_dojo_shaveeffect)
gml_Script_instance_create((x + 46), (_yy + 32), obj_dojo_shaveeffect)
gml_Script_instance_create((x + 24), (_yy + 34), obj_dojo_shaveeffect)
gml_Script_instance_create((x + 28), (_yy + 34), obj_dojo_shaveeffect)
gml_Script_instance_create((x + 32), (_yy + 34), obj_dojo_shaveeffect)
gml_Script_instance_create((x + 36), (_yy + 34), obj_dojo_shaveeffect)
gml_Script_instance_create((x + 40), (_yy + 34), obj_dojo_shaveeffect)
gml_Script_instance_create((x + 44), (_yy + 34), obj_dojo_shaveeffect)
gml_Script_instance_create((x + 26), (_yy + 36), obj_dojo_shaveeffect)
gml_Script_instance_create((x + 42), (_yy + 36), obj_dojo_shaveeffect)
gml_Script_instance_create((x + 30), (_yy + 38), obj_dojo_shaveeffect)
gml_Script_instance_create((x + 34), (_yy + 38), obj_dojo_shaveeffect)
gml_Script_instance_create((x + 38), (_yy + 38), obj_dojo_shaveeffect)
list = 
with (obj_dojo_shaveeffect)
    other.list
list
for (i = 0; i < ds_list_size(list); i++)
{
    var _item = ds_list_find_value(list, i)
    _item.sparkle_timer = (((i * -1) + irandom(2)) - 5)
}
list
