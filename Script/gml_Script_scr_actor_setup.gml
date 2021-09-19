var _temp_local_var_1;
_actorid = argument0
_actorinstance = argument1
_actorname = argument2
obj_cutscene_master.actor_id[_actorid] = _actorinstance
obj_cutscene_master.actor_name[_actorid] = _actorname
with (_actorinstance)
{
    number = argument0
    gml_Script_scr_set_facing_sprites(argument2)
}
