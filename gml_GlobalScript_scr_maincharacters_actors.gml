var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3;
actor_count = 0
kr = 0
kr_actor = gml_Script_instance_create(obj_mainchara.x, obj_mainchara.y, obj_actor)
gml_Script_scr_actor_setup(kr, kr_actor, "kris")
kr_actor.sprite_index = obj_mainchara.sprite_index
kr_actor.depth = obj_mainchara.depth
with (obj_mainchara)
    visible = false
for (__jj = 0; __jj < array_length_1d(global.cinstance); __jj++)
{
    if global.cinstance[__jj]
    {
        if (global.cinstance[__jj].name == "susie")
        {
            actor_count++
            su = (__jj + 1)
            su_actor = gml_Script_instance_create(global.cinstance[__jj].x, global.cinstance[__jj].y, obj_actor)
            gml_Script_scr_actor_setup(su, su_actor, "susie")
            su_actor.sprite_index = global.cinstance[__jj].sprite_index
            su_actor.depth = global.cinstance[__jj].depth
            var _temp_local_var_1 = global.cinstance[__jj]
            visible = false
        }
        if (global.cinstance[__jj].name == "ralsei")
        {
            actor_count++
            ra = (__jj + 1)
            ra_actor = gml_Script_instance_create(global.cinstance[__jj].x, global.cinstance[__jj].y, obj_actor)
            gml_Script_scr_actor_setup(ra, ra_actor, "ralsei")
            ra_actor.sprite_index = global.cinstance[__jj].sprite_index
            ra_actor.depth = global.cinstance[__jj].depth
            var _temp_local_var_2 = global.cinstance[__jj]
            visible = false
        }
        if (global.cinstance[__jj].name == "noelle")
        {
            actor_count++
            no = (__jj + 1)
            no_actor = gml_Script_instance_create(global.cinstance[__jj].x, global.cinstance[__jj].y, obj_actor)
            gml_Script_scr_actor_setup(no, no_actor, "noelle")
            no_actor.sprite_index = global.cinstance[__jj].sprite_index
            no_actor.depth = global.cinstance[__jj].depth
            var _temp_local_var_3 = global.cinstance[__jj]
            visible = false
        }
    }
}
return;
