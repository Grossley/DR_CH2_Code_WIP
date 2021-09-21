var redscreen = 27
if (gml_Script_scr_onscreen(id) && gml_Script_scr_onscreen(other) && active == true && other.aligned == 1 && other.image_index != redscreen && other.image_index != 9 && other.sprite_index != spr_queenscreen_red)
{
    make_simple_bullet = 0
    simple_bullet_index = 0
    cause_explosion = 0
    speed = 0
    active = false
    exploded = 1
    other.extflag = 0
    make_simple_bullet = 1
    btype = "dancer"
    if (make_simple_bullet == 1)
    {
        b = gml_Script_instance_create(other.x, other.y, obj_overworldbulletparent)
        b.sprite_index = spr_queenscreen_bullet_dance
        b.image_speed = 0.25
        b.tolerance = 10
        b.active = true
        b.target = 3
        b.damage = 16
        b.depth = 200
        b.alarm[0] = -10
        b.image_xscale = 2
        b.image_yscale = 2
        with (b)
            move_towards_point((obj_mainchara.x + 2), (obj_mainchara.y + 4), 4)
        b.friction = -0.2
    }
    with (other)
    {
        dance_active = 0
        sprite_index = spr_queenscreen_red
        image_speed = 0
        image_index = redscreen
    }
    active = false
    gml_Script_snd_play_pitch(snd_jump, 2.5)
}
