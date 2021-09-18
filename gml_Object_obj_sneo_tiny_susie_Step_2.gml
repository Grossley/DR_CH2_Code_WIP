if (hp < 1)
    // WARNING: Popz'd an empty stack.
if 628
{
    if (init == 0)
    {
        init = 1
        x = (obj_heart.x - 30)
        y = obj_heart.y
    }
    depth = (obj_heart.depth + 1)
    x = (obj_heart.x + 30)
    y = (obj_heart.y + 10)
}
axe_timer++
if (axe_timer > 10 && visible == true)
{
    axe_timer = 0
    gml_Script_instance_create(x, y, obj_sneo_tiny_susie_axe)
}
if (!628)
    visible = false
if 628
{
    if (alarm[0] == 9)
        visible = false
    else if (alarm[0] == 8)
        visible = false
    else if (alarm[0] == 5)
        visible = false
    else if (alarm[0] == 4)
        visible = false
    else if (alarm[0] == 1)
        visible = false
    else if (alarm[0] == 0)
        visible = false
    else
        visible = true
}
