if (!init_butler)
{
    if gml_Script_i_ex(obj_npc_butler)
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
if (instance_exists(obj_mainchara) && triggered == 0)
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
if (gml_Script_i_ex(obj_npc_room) && readtrigger == 0)
{
    readcount = 0
    with (obj_npc_room)
    {
        if (talked != false)
            other.readcount++
    }
    if (readcount == 8)
        readtrigger = 1
}
if (spawnVase == 1 && (!instance_exists(obj_balancepot)))
    alarm[0] = 1
if gml_Script_scr_debug()
{
    if keyboard_check_pressed(vk_space)
    {
        if gml_Script_i_ex(obj_balancepot)
            obj_balancepot.falling = 3
    }
}
if (con == 1)
{
    obj_balancepot.falling = 3
    obj_balancepot.balance = 0
    obj_balancepot.image_angle = 0
    global.interact = 1
    gml_Script_snd_play(snd_won)
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
        gml_Script_snd_play(snd_applause)
    }
    if (timer == 72)
        con++
}
if (con == 3)
{
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    con++
}
if (con == 4)
{
    con = 5
    alarm[1] = 30
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect((kr_actor.x + 35), (kr_actor.y - 14), 14)
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect((kr_actor.x + 120), (kr_actor.y - 7), 20)
    gml_Script_c_delayfacing(21, "l")
    gml_Script_c_wait(14)
    gml_Script_c_sel(su)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "* Heh^1, not bad^1, Kris!/%", "obj_controller_dw_mansion_potBalance_slash_Step_0_gml_83_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(6)
    gml_Script_c_sel(su)
    gml_Script_c_sprite(spr_susie_playful_punch_dw)
    gml_Script_c_addxy(-4, 2)
    gml_Script_c_animate(0, 2, 0.1)
    gml_Script_c_wait(10)
    gml_Script_c_sel(kr)
    gml_Script_c_shakeobj()
    gml_Script_c_soundplay(snd_damage)
    gml_Script_c_wait(15)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(false)
    gml_Script_c_facing("l")
    gml_Script_c_addxy(4, -2)
    gml_Script_c_autowalk(true)
    gml_Script_c_var_instance(id, "timer", 0)
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 6 && (!gml_Script_i_ex(obj_cutscene_master)))
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
        if (!instance_exists(obj_balancepot))
            con++
    }
}
if (con == 10)
{
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    con++
}
if (con == 11)
{
    con = 12
    alarm[1] = 30
    gml_Script_c_sel(su)
    gml_Script_c_sprite(spr_susie_shock)
    gml_Script_c_emote("!", 30)
    gml_Script_c_shakeobj()
    gml_Script_c_sel(ra)
    gml_Script_c_sprite(spr_ralsei_surprised_down)
    gml_Script_c_emote("!", 30)
    gml_Script_c_shakeobj()
    gml_Script_c_wait(30)
    gml_Script_c_imageindex(1)
    gml_Script_c_autowalk(false)
    gml_Script_c_sel(su)
    if (su_actor.y > 1140)
        gml_Script_c_walkdirect_wait(su_actor.x, 1078, 10)
    gml_Script_c_walk_wait("r", 16, 20)
    gml_Script_c_wait(30)
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 13 && (!gml_Script_i_ex(obj_cutscene_master)))
{
    with (obj_caterpillarchara)
    {
        if (name == "susie")
            image_alpha = 0
        else
        {
            parent = obj_mainchara
            target = obj_magicalglass
            gml_Script_scr_caterpillar_interpolate()
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
