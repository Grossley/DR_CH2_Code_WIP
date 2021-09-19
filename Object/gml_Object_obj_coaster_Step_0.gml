if (type == 0 && (!init))
{
    init = 1
    character_sprite = spr_krisr_dark
    actor = gml_Script_scr_dark_marker(0, 0, 652)
    actor.image_speed = 0
    actor.visible = false
}
if (type == 1 && (!init))
{
    init = 1
    default_sprite_front = (spam_car ? 2054 : 840)
    default_sprite_back = (spam_car ? 2053 : 842)
    hurt_sprite_front = 838
    hurt_sprite_back = 839
    hurt_character_sprite = 1464
    character_sprite = spr_susie_walk_right_dw
    actor = gml_Script_scr_dark_marker(0, 0, 823)
    actor.image_speed = 0
    actor.visible = false
    coaster_offset_x = -20
    coaster_offset_y = 55
}
if (type == 2 && (!init))
{
    init = 1
    default_sprite_front = (spam_car ? 2054 : 805)
    default_sprite_back = (spam_car ? 2053 : 807)
    hurt_sprite_front = 803
    hurt_sprite_back = 804
    hurt_character_sprite = 1507
    character_sprite = spr_ralsei_walk_right
    actor = gml_Script_scr_dark_marker(0, 0, 794)
    actor.image_speed = 0
    actor.visible = false
    coaster_offset_x = -30
    coaster_offset_y = 45
}
if (type == 3 && (!init))
{
    init = 1
    default_sprite_front = 688
    default_sprite_back = 689
    hurt_sprite_front = 686
    hurt_sprite_back = 687
    hurt_character_sprite = 1849
    character_sprite = spr_berdly_walk_left_dw
    actor = gml_Script_scr_dark_marker(0, 0, 669)
    actor.image_speed = 0
    actor.visible = false
    coaster_offset_x = -65
    coaster_offset_y = 30
}
if (type == 4 && (!init))
{
    init = 1
    default_sprite_front = 734
    default_sprite_back = -1
    character_sprite = spr_noelle_walk_left_dw
    actor = gml_Script_scr_dark_marker(0, 0, 718)
    actor.image_speed = 0
    actor.visible = false
    coaster_offset_x = -65
    coaster_offset_y = 45
}
if (character_sprite != actor.sprite_index)
{
    actor.sprite_index = character_sprite
    actor.image_index = 0
}
if (con == 0)
    actor.image_speed = (animate ? 0.25 : 0)
else
{
    image_speed = 0
    if (type == 0 && actor.image_index < 6)
        actor.image_index += 0.25
    if (type == 1 && actor.image_index < 5)
        actor.image_index += 0.25
    if (type == 2 && actor.image_index < 10)
        actor.image_index += 0.5
}
if (stop_siner == 1)
{
    sinerx = 0
    battlecoasterx = ((gml_Script_camerax() + 122) - (type * 20))
    if (type == 3)
        battlecoasterx = (gml_Script_camerax() + 515)
    if (type == 0)
        battlecoasterx += 4
    repeat (4)
    {
        if (x < battlecoasterx)
            x += 1
        if (x > battlecoasterx)
            x -= 1
    }
}
else
{
    sinerx = 0
    sinery = 0
    if (siner_add0 != 0)
    {
        siner0 += siner_add0
        if (siner_type0 == "sin")
            sinmove = (sin(siner0) * siner_amplitude0)
        else
            sinmove = (cos(siner0) * siner_amplitude0)
        if (siner_visual0 == 1)
        {
            sinerx += lengthdir_x(sinmove, siner_direction0)
            sinery += lengthdir_y(sinmove, siner_direction0)
        }
        else
        {
            x += lengthdir_x(sinmove, siner_direction0)
            y += lengthdir_y(sinmove, siner_direction0)
        }
    }
}
