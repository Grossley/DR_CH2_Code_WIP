if (!init_butler)
{
    if 107
    {
        with (obj_npc_butler)
        {
            if (y <= 650 && x <= 700)
                image_xscale = -2
            if (y > 900 && x <= 400)
                image_xscale = -2
        }
    }
}
if (80 && triggered == 0)
{
    if ((obj_mainchara.y + obj_mainchara.sprite_height) >= 520)
    {
        if (spawnVase == 0)
        {
            spawnVase = 1
            gml_Script_instance_create(x, y, obj_balancepot)
        }
    }
}
if (101 && readtrigger == 0)
{
    readcount = 0
    with (obj_npc_room)
    {
        if (talked != 0)
            other.readcount++
    }
    if (readcount == 8)
        readtrigger = 1
}
if (spawnVase == 1 && (!1257))
    alarm[0] = 1
if 32
{
    if 1257
        obj_balancepot.falling = 3
}
if (con == 1)
{
    obj_balancepot.falling = 3
    obj_balancepot.balance = 0
    obj_balancepot.image_angle = 0
    global.interact = 1
    57
    timer = 0
    con++
}
if (con == 2)
{
    timer++
    if (timer == 30)
    {
        with (obj_npc_butler)
        {
            sprite_index = spr_npc_butler_clap
            image_speed = 0.25
            normalanim = 3
            remanimspeed = 0.25
        }
        99
    }
    if (timer == 72)
        con++
}
if (con == 3)
{
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    con++
}
if (con == 4)
{
    con = 5
    alarm[1] = 30
    su
    gml_Script_c_walkdirect((kr_actor.x + 35), (kr_actor.y - 14), 14)
    ra
    gml_Script_c_walkdirect((kr_actor.x + 120), (kr_actor.y - 7), 20)
    gml_Script_c_delayfacing(21, "l")
    14
    su
    "l"
    "susie"
    gml_Script_c_msgsetloc(0, "* Heh^1, not bad^1, Kris!/%", "obj_controller_dw_mansion_potBalance_slash_Step_0_gml_83_0")
    // WARNING: Popz'd an empty stack.
    6
    su
    833
    gml_Script_c_addxy(-4, 2)
    gml_Script_c_animate(0, 2, 0.1)
    10
    kr
    // WARNING: Popz'd an empty stack.
    166
    15
    su
    0
    "l"
    gml_Script_c_addxy(4, -2)
    1
    gml_Script_c_var_instance(id, "timer", 0)
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (con == 6 && (!895))
{
    with (obj_balancepot)
    {
        if (image_angle < 7)
            image_angle++
        else
            other.con++
    }
}
if (con == 7)
{
    with (obj_balancepot)
    {
        if (image_angle > -7)
            image_angle--
        else
            other.con = 8
    }
}
if (con == 8)
{
    with (obj_balancepot)
    {
        if (image_angle < 0)
            image_angle++
        else
        {
            other.con++
            other.timer = 0
        }
    }
}
if (con == 9)
{
    timer++
    if (timer == 15)
    {
        with (obj_balancepot)
        {
            falling = 1
            remy = y
        }
    }
    if (timer > 15)
    {
        if (!1257)
            con++
    }
}
if (con == 10)
{
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    con++
}
if (con == 11)
{
    con = 12
    alarm[1] = 30
    su
    994
    gml_Script_c_emote("!", 30)
    // WARNING: Popz'd an empty stack.
    ra
    1517
    gml_Script_c_emote("!", 30)
    // WARNING: Popz'd an empty stack.
    30
    1
    0
    su
    if (su_actor.y > 1140)
        gml_Script_c_walkdirect_wait(su_actor.x, 1078, 10)
    gml_Script_c_walk_wait("r", 16, 20)
    30
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (con == 13 && (!895))
{
    with (obj_caterpillarchara)
    {
        if (name == "susie")
            image_alpha = 0
        else
        {
            parent = obj_mainchara
            target = 12
            // WARNING: Popz'd an empty stack.
        }
    }
    global.interact = 0
    con++
}
if (con == 14)
    con++
if (con > 14)
{
    with (obj_caterpillarchara)
    {
        if (name == "susie")
        {
            x = (obj_mainchara.x + 60)
            y = obj_mainchara.y
        }
    }
}
