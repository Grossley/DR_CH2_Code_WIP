var _temp_local_var_2, _temp_local_var_3, _temp_local_var_5;
if (y < (gml_Script_cameray() + 110))
    return;
if (y > (gml_Script_cameray() + 233))
    return;
if (image_alpha < 0.5)
    return;
if (destroyable == 1 && active == true)
{
    if (hitshot.big == 0)
    {
        var _temp_local_var_2 = hitshot
        event_user(0)
    }
    gml_Script_snd_play_pitch(141, (1.1 + random(0.2)))
    gml_Script_scr_afterimage_cut()
    anim = gml_Script_instance_create(x, y, obj_yshot_anim)
    anim.image_xscale = image_xscale
    anim.image_yscale = image_yscale
    var _temp_local_var_3 = anim
    sprite_index = spr_yheart_shot_hit3
}
else if (destroyable == 0 && active == true)
{
    var _temp_local_var_5 = hitshot
    event_user(0)
}
