var _temp_local_var_3, _temp_local_var_4, _temp_local_var_5;
if (bon == 0 && obj_mainchara.x >= (x - 100) && global.interact == 0)
    bon = 1
if (con == 0 && obj_mainchara.x >= x && global.interact == 0)
{
    con = 1
    global.interact = 1
}
if (con == 1)
{
    con = 2
    cutscene_master = 
    kr = 0
    kr_actor = gml_Script_instance_create(obj_mainchara.x, obj_mainchara.y, obj_actor)
    gml_Script_scr_actor_setup(kr, kr_actor, "kris")
    kr_actor.sprite_index = spr_krisr_dark
    with (obj_mainchara)
        visible = false
    su = 1
    su_actor = gml_Script_instance_create((obj_mainchara.x + 300), obj_mainchara.y, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_susiel_dark
    specialsprite[6] = su_actor
    var _temp_local_var_3 = kr_actor
    var _temp_local_var_4 = 21
    gml_Script_scr_emote("!", 30)
}
if (con == 2)
{
    if (!instance_exists(obj_cutscene_master))
    {
        con = 3
        global.interact = 0
    }
}
if (honkcon == 1)
{
    honkcount++
    if (honkcount >= 30)
        honkcon = 2
    else
        gml_Script_snd_play(151)
    var _temp_local_var_5 = su_actor
    gml_Script_scr_flip(choose("x", "y"))
}
