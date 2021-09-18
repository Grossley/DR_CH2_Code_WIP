dtimer += 1
if (type == 0)
{
    if (dtimer == 15 || dtimer == 19 || dtimer == 23)
    {
        move_towards_point((obj_heart_ch1.x + 8), (obj_heart_ch1.y + 8), 0.1)
        bul = gml_Script_instance_create_ch1(x, y, 1520)
        if bul
        {
            bul.sprite_index = spr_clubsball_b_ch1
            bul.direction = direction
            bul.speed = 4
            bul.image_angle = direction
            bul.damage = damage
            bul.target = target
            bul.grazepoints = 2
            bul.timepoints = 1
        }
        bul = gml_Script_instance_create_ch1(x, y, 1520)
        if bul
        {
            bul.sprite_index = spr_clubsball_c_ch1
            bul.direction = (direction - 17)
            bul.speed = 4
            bul.image_angle = direction
            bul.damage = damage
            bul.target = target
            bul.grazepoints = 2
            bul.timepoints = 1
        }
        bul = gml_Script_instance_create_ch1(x, y, 1520)
        if bul
        {
            bul.sprite_index = spr_clubsball_a_ch1
            bul.direction = (direction + 17)
            bul.speed = 4
            bul.image_angle = direction
            bul.damage = damage
            bul.target = target
            bul.grazepoints = 2
            bul.timepoints = 1
        }
    }
    if (dtimer == 25)
    {
        a = gml_Script_instance_create_ch1(x, y, 1509)
        a.sprite_index = sprite_index
        a.image_angle = image_angle
        // WARNING: Popz'd an empty stack.
    }
}
if (type == 2)
{
    if (dtimer == 20 || dtimer == 22 || dtimer == 24)
    {
        move_towards_point((obj_heart_ch1.x + 8), (obj_heart_ch1.y + 8), 0.1)
        bul = gml_Script_instance_create_ch1(x, y, 1520)
        if bul
        {
            bul.sprite_index = spr_clubsball_b_ch1
            bul.direction = ((direction - 2) + initangle)
            bul.speed = 2
            if (type == 2)
                bul.speed = 5
            bul.image_angle = direction
            bul
        }
        bul = gml_Script_instance_create_ch1(x, y, 1520)
        if bul
        {
            bul.sprite_index = spr_clubsball_c_ch1
            bul.direction = (((direction - 19) - 2) + initangle)
            bul.speed = 2
            if (type == 2)
                bul.speed = 5
            bul.image_angle = direction
            bul
        }
        bul = gml_Script_instance_create_ch1(x, y, 1520)
        if bul
        {
            bul.sprite_index = spr_clubsball_a_ch1
            bul.direction = (((direction + 19) - 2) + initangle)
            bul.speed = 2
            if (type == 2)
                bul.speed = 5
            bul.image_angle = direction
            bul
        }
        initangle += 2
    }
    if (dtimer == 26)
    {
        a = gml_Script_instance_create_ch1(x, y, 1509)
        a.sprite_index = sprite_index
        a.image_angle = image_angle
        // WARNING: Popz'd an empty stack.
    }
}
