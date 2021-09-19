var _temp_local_var_2;
if release
{
    if (!head_init)
        head_init = 1
    if (head_x_pos < 0)
        head_x_pos = ((gml_Script_camerax() + (view_wport[0] / 2)) - sprite_get_width(spr_cutscene_26_queen_giga_head))
    if (head_y_pos == -1)
        head_y_pos = ((gml_Script_cameray() + view_hport[0]) + 100)
    head_y_pos = clamp((head_y_pos - 10), (gml_Script_cameray() - 15), ((gml_Script_cameray() + view_hport[0]) + 100))
    if (head_y_pos <= (gml_Script_cameray() - 15))
        release = 0
}
if release_fast
{
    head_y_pos = clamp((head_y_pos - 35), (gml_Script_cameray() - 15), ((gml_Script_cameray() + view_hport[0]) + 100))
    if (head_y_pos <= (gml_Script_cameray() - 15))
        release_fast = 0
}
if leave
{
    head_y_pos = clamp((head_y_pos + 10), (gml_Script_cameray() - 15), ((gml_Script_cameray() + view_hport[0]) + 100))
    if (head_y_pos >= ((gml_Script_cameray() + view_hport[0]) + 100))
        leave = 0
}
if leave_fast
{
    head_y_pos = clamp((head_y_pos + 30), (gml_Script_cameray() - 15), ((gml_Script_cameray() + view_hport[0]) + 100))
    if (head_y_pos >= ((gml_Script_cameray() + view_hport[0]) + 100))
        leave = 0
}
if laugh
{
    animsiner++
    if (pilot_alpha == 0)
        pilot_alpha = 1
    head_sprite = (damaged ? 350 : 264)
    anim_index = (animsiner / 4)
}
else
{
    animsiner = 0
    anim_index = 0
}
if surprised
{
    surprised = 0
    head_sprite = 347
    pilot_alpha = 0
    if (!damaged)
        head_sprite = 332
}
if unhappy
{
    unhappy = 0
    head_sprite = 2553
    pilot_sprite = 273
    pilot_alpha = 1
}
if static_start
{
    static_start = 0
    head_sprite = 345
    pilot_alpha = 0
    static_happened = 1
    my_static = gml_Script_instance_create(252, 123, obj_ch2_queen_static)
    var _temp_local_var_2 = my_static
    gml_Script_scr_depth()
}
if static_stop
{
    static_stop = 0
    static_start = 0
    static_happened = 0
    pilot_alpha = 1
    if gml_Script_i_ex(1065)
    {
        instance_destroy(obj_ch2_queen_static)
        instance_destroy(crack)
    }
}
if damagedfx
{
    smoketimer++
    if (smoketimer >= 3)
    {
        smoke = gml_Script_instance_create((head_x_pos + 300), (head_y_pos + 120), obj_afterimage_grow)
        smoke.depth = (depth + 200)
        smoke.sprite_index = spr_cakesmoke
        smoke.gravity = -0.5
        smoke.image_alpha = 2
        smoke.hspeed = random(2)
        smoke.image_xscale = 2
        smoke.image_yscale = 2
        smoke.visible = true
        smoke = gml_Script_instance_create((head_x_pos + 330), (head_y_pos + 180), obj_afterimage_grow)
        smoke.depth = (depth + 200)
        smoke.sprite_index = spr_cakesmoke
        smoke.gravity = -0.5
        smoke.image_alpha = 1.6
        smoke.hspeed = (random(2) + 2)
        smoke.image_xscale = 0
        smoke.image_yscale = 0
        smoke.visible = true
        smoketimer = 0
    }
    if (climb > 0)
        shaketimer = 0
    else
        shaketimer++
    if (shaketimer == 53)
    {
        smoke = gml_Script_instance_create((head_x_pos + 240), (head_y_pos + 180), obj_afterimage_grow)
        smoke.depth = (depth - 10)
        smoke.sprite_index = spr_plugboy_spare_electricity
        smoke.hspeed = -2
        smoke.gravity = -0.5
        smoke.image_alpha = 1.6
        smoke.hspeed = 0
        smoke.image_xscale = 0
        smoke.image_yscale = 0
        smoke.visible = true
    }
    if (shaketimer >= 55 && shaketimer <= 60)
    {
        head_x_pos = (rem_head_x_pos + random_range(2, -2))
        head_y_pos = (rem_head_y_pos + random_range(1, -1))
    }
    if (shaketimer == 61)
        shaketimer = 0
}
if (climb == 1)
{
    if (!head_init)
        head_init = 1
    climbtimer++
    if (climbtimer == 1)
        rem_head_y_pos = head_y_pos
    if (climbtimer == 2)
        gml_Script_scr_lerpvar_instance(id, "head_y_pos", rem_head_y_pos, (rem_head_y_pos - 120), 30, -3, "out")
    if (climbtimer == 10)
    {
        var deepsnd = gml_Script_snd_play(235)
        gml_Script_snd_pitch(deepsnd, 0.5)
        gml_Script_instance_create(0, 0, obj_shake)
    }
    if (climbtimer == 40)
    {
        climbtimer = 0
        climb = 0
        rem_head_y_pos = head_y_pos
    }
}