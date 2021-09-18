var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3;
if (sprite_index == spr_sneo_bullet_box)
    return;
if (destroyable == 1)
{
    if (hitshot.big == 0)
    {
        var _temp_local_var_1 = hitshot
        event_user(0)
    }
    if (red == 1)
    {
        with (obj_sneo_wallbullet_new)
        {
            if (wallnumber == other.wallnumber)
            {
                gml_Script_snd_play_pitch(141, (1.1 + random(0.2)))
                var _cut = hitshot
                _cut.flash = true
                // WARNING: Popz'd an empty stack.
            }
        }
        with (obj_sneo_rotatingwall_pipis)
        {
            if (wallnumber == other.wallnumber)
            {
                0
                // WARNING: Popz'd an empty stack.
            }
        }
    }
    anim = gml_Script_instance_create(x, y, obj_yshot_anim)
    anim.image_xscale = image_xscale
    anim.image_yscale = image_yscale
    var _temp_local_var_2 = anim
    sprite_index = spr_yheart_shot_hit3
}
else
{
    var _temp_local_var_3 = hitshot
    event_user(0)
}
