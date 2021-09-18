var swatchling_npc_b, _temp_local_var_2;
con = (global.plot >= 101 ? 99 : 0)
customcon = 0
lancerfade = 0
fadetimer = 0
krisdoor = -1
berdlydoor = -1
krisdoor_open = 0
krisdoor_open_timer = 0
susie_heal = 0
heal_timer = 0
heal_beam = -1
berdly_door_open = 0
berdly_door_close = 0
if (global.chapter != 2)
{
    con = -1
    // WARNING: Popz'd an empty stack.
}
else if (global.plot >= 120)
{
    var swatchling_npc_a = gml_Script_instance_create(1335, 165, obj_npc_butler)
    var _temp_local_var_2 = swatchling_npc_a
    current_pal = yellow
}
else if (global.plot >= 101)
    // WARNING: Popz'd an empty stack.
