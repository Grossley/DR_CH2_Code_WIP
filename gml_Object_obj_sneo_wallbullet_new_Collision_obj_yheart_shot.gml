var _temp_local_var_5;
if (destroyable == 0 && other.big == 1)
{
    if ((other.y < y && instance_place(x, (y - 40), obj_sneo_wallbullet_new) && instance_nearest(x, (y - 40), obj_sneo_wallbullet_new).sprite_index == spr_sneo_mail) || (other.y > y && instance_place(x, (y + 40), obj_sneo_wallbullet_new) && instance_nearest(x, (y + 40), obj_sneo_wallbullet_new).sprite_index == spr_sneo_mail))
    {
    }
    else if ((other.y - y) > 12)
        return;
}
hitshot = 
0
if (destroyable == 1 && active == true)
{
    if (hitshot.big == 0)
    {
        var _temp_local_var_5 = hitshot
        event_user(0)
    }
    gml_Script_snd_volume(141, 0.7, 0)
    gml_Script_snd_play_x(141, 0.7, (1.1 + random(0.2)))
    var _cut = hitshot
    _cut.flash = true
    anim = gml_Script_instance_create(x, y, obj_yshot_anim)
    anim.image_xscale = image_xscale
    anim.image_yscale = image_yscale
    _temp_local_var_5 = anim
    sprite_index = spr_yheart_shot_hit3
}
