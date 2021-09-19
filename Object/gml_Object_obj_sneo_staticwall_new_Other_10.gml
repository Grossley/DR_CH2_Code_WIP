var _temp_local_var_2, _temp_local_var_3, _temp_local_var_4;
if (destroyable == 1 && active == true)
{
    if (hitshot.big == 0)
    {
        var _temp_local_var_2 = hitshot
        event_user(0)
    }
    gml_Script_snd_play(166)
    anim = gml_Script_instance_create(x, y, obj_yshot_anim)
    anim.image_xscale = image_xscale
    anim.image_yscale = image_yscale
    var _temp_local_var_3 = anim
    sprite_index = spr_yheart_shot_hit3
}
else
{
    var _temp_local_var_4 = hitshot
    event_user(0)
}
