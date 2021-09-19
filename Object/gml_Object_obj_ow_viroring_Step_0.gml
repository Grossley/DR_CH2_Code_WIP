with (obj_ow_viroringTrig)
{
    if (trigNum == other.trigNum)
    {
        if place_meeting(x, y, obj_mainchara)
            other.active = true
        else
            other.active = false
    }
}
if (con == 0)
{
    if (active == true)
    {
        timer = 0
        con = 1
    }
}
if (con == 1)
{
    if ((startingX + (abs(sprite_width) / 2)) < gml_Script_charaX())
    {
        image_xscale = -2
        x = (startingX - sprite_width)
    }
    else
    {
        image_xscale = 2
        x = startingX
    }
    if (active == true)
        cooldown = cooldownAmount
    if (active == false)
        cooldown -= 1
    if (cooldown == 0)
        con = 0
    timer++
    if (timer == shotSpeed)
    {
        if gml_Script_scr_onscreen(id)
        {
            gml_Script_snd_play_pitch(131, 0.6)
            spear = gml_Script_instance_create((x + (sprite_width / 2)), (y + 65), obj_virospear)
            spear.depth = (depth - 20)
            shotSpeed = (irandom(20) + 20)
        }
        timer = 0
    }
}
if (con == 99)
{
    direction = (point_direction(x, y, obj_mainchara.x, obj_mainchara.y) + 180)
    speed = 8
    x += sin((timer / 4))
    if (!gml_Script_scr_onscreen(id))
        instance_destroy()
}