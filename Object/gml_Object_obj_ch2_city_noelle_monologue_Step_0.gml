if (!init_forcefields)
{
    init_forcefields = 1
    if gml_Script_i_ex(obj_ch2_noellepuzzle_forcefield)
    {
        with (obj_ch2_noellepuzzle_forcefield)
        {
            if (x > 300)
                stayVisible = true
        }
    }
}
if (init == false)
{
    for (i = 0; i < instance_number(obj_ch2_noellepuzzle_key_noelle); i++)
    {
        buttonX[i] = (instance_find(obj_ch2_noellepuzzle_key_noelle, i).x - 4)
        buttonY[i] = (instance_find(obj_ch2_noellepuzzle_key_noelle, i).y - 70)
    }
    buttonX = gml_Script_scr_array_sort(buttonX, 1)
    buttonY = gml_Script_scr_array_sort(buttonY, 1)
    init = true
}
if (con == 0 && obj_mainchara.x > 150)
{
    global.interact = 1
    con = 1
    global.facing = 1
    global.flag[7] = 1
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    no_silhouette = gml_Script_instance_create(no_actor.x, (gml_Script_cameray() - 100), obj_following_silhouette)
    no_silhouette.target_char = no_actor
    var exit_forcefield = gml_Script_instance_create(20, 240, obj_forcefield)
    with (exit_forcefield)
    {
        image_xscale = 2
        image_yscale = 4
        gml_Script_scr_depth()
    }
}
if (con == 1)
{
    if instance_exists(obj_dialoguer)
        obj_dialoguer.zurasu = 1
    con = 10
    gml_Script_c_sel(kr)
    gml_Script_c_walk("r", 4, 15)
    gml_Script_c_sel(no)
    gml_Script_c_walk("r", 4, 15)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E2* Gosh^1, that was close^1, wasn't it^1, Kris...?/%", "obj_ch2_noelle_monologue_slash_Step_0_gml_32_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_walk("d", 3, 3)
    gml_Script_c_delaywalkdirect(4, 270, 216, 40)
    gml_Script_c_delayfacing(45, "l")
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E1* This..^1. Strange world..^1. this big city.../", "obj_ch2_noelle_monologue_slash_Step_0_gml_49_0")
    gml_Script_c_msgnextloc("\\E9* It's so wild..^1. It kind of makes my head spin./%", "obj_ch2_noelle_monologue_slash_Step_0_gml_50_0")
    gml_Script_c_talk()
    gml_Script_c_wait(46)
    gml_Script_c_waittalk()
    gml_Script_c_sel(no)
    gml_Script_c_facing("u")
    gml_Script_c_wait(10)
    gml_Script_c_sprite(spr_noelle_walk_up_headtilt_dw)
    gml_Script_c_halt()
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E9* ...?/%", "obj_ch2_noelle_monologue_slash_Step_0_gml_59_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_facing("u")
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E2* Looks like another puzzle.../%", "obj_ch2_noelle_monologue_slash_Step_0_gml_71_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("d")
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E9* Maybe if I go..^1. down..^1. here?/%", "obj_ch2_noelle_monologue_slash_Step_0_gml_78_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_autowalk(false)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walk_wait("u", 2, 10)
    gml_Script_c_imagespeed(0)
    gml_Script_c_wait(10)
    gml_Script_c_autowalk(true)
    gml_Script_c_wait(5)
    gml_Script_c_walk("d", 6, 3)
    gml_Script_c_wait(3)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("d")
    gml_Script_c_sel(no)
    gml_Script_c_jump(270, buttonY[0], 20, 10)
    gml_Script_c_soundplay(snd_jump)
    gml_Script_c_wait(20)
    gml_Script_c_walkdirect_wait(buttonX[0], buttonY[0], 30)
    gml_Script_c_sprite(spr_noelle_walk_face_up_dw)
    gml_Script_c_halt()
    gml_Script_c_actortokris()
    gml_Script_c_waitcustom()
}
if (con == 10 && (!gml_Script_d_ex()) && customcon == 1)
{
    con = 11
    global.interact = 0
}
if (con == 12 && customcon == 1)
{
    con = 14
    customcon = 0
    gml_Script_c_waitcustom_end()
    gml_Script_c_sel(no)
    gml_Script_c_wait(30)
    gml_Script_c_autowalk(false)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect_wait(buttonX[1], buttonY[1], 60)
    gml_Script_c_halt()
    gml_Script_c_wait(30)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_delaycmd(161, "imagespeed", 0)
    gml_Script_c_walkdirect_wait(1355, buttonY[1], 160)
    gml_Script_c_var_instance(id, "text_con", 0)
    gml_Script_c_waitcustom()
}
if (con == 15 && customcon == 1)
{
    con = 16
    customcon = 0
    gml_Script_c_waitcustom_end()
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect_wait(1700, buttonY[1], 60)
    gml_Script_c_autowalk(true)
    gml_Script_c_walkdirect_wait(1700, buttonY[2], 100)
    gml_Script_c_autowalk(false)
    gml_Script_c_sprite(spr_noelle_walk_face_up_dw)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect_wait(buttonX[2], buttonY[2], 30)
    gml_Script_c_halt()
    gml_Script_c_var_instance(id, "text_con", 2)
    gml_Script_c_waitcustom()
}
if (con == 17 && customcon == 1)
{
    con = 19
    customcon = 0
    gml_Script_c_waitcustom_end()
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect_wait(buttonX[3], buttonY[3], 120)
    gml_Script_c_halt()
    gml_Script_c_wait(30)
    gml_Script_c_var_instance(id, "text_con", 4)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect_wait(2780, buttonY[3], 60)
    gml_Script_c_autowalk(true)
    gml_Script_c_walkdirect_wait(2780, buttonY[4], 100)
    gml_Script_c_autowalk(false)
    gml_Script_c_sprite(spr_noelle_walk_face_up_dw)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect_wait(2970, buttonY[4], 30)
    gml_Script_c_halt()
    gml_Script_c_waitcustom()
}
if (con == 20 && customcon == 1)
{
    con = 21
    customcon = 0
    gml_Script_c_waitcustom_end()
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect_wait(buttonX[4], buttonY[4], 130)
    gml_Script_c_halt()
    gml_Script_c_wait(30)
    gml_Script_c_var_instance(id, "text_con", 6)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect_wait(4330, buttonY[4], 100)
    gml_Script_c_halt()
    gml_Script_c_waitcustom()
}
if (con == 22 && (!gml_Script_d_ex()) && customcon == 1)
{
    con = 23
    customcon = 0
    gml_Script_c_waitcustom_end()
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect_wait(4610, buttonY[4], 60)
    gml_Script_c_autowalk(true)
    gml_Script_c_walkdirect_wait(4610, buttonY[5], 100)
    gml_Script_c_autowalk(false)
    gml_Script_c_sprite(spr_noelle_walk_face_up_dw)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect_wait(buttonX[5], buttonY[5], 60)
    gml_Script_c_halt()
    gml_Script_c_wait(30)
    gml_Script_c_var_instance(id, "young_noelle", 1)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_delaycmd(81, "imagespeed", 0)
    gml_Script_c_walkdirect_wait(5327, buttonY[5], 80)
    gml_Script_c_var_instance(id, "text_con", 8)
    gml_Script_c_waitcustom()
}
if (con == 24 && customcon == 1)
{
    con = 25
    customcon = 0
    global.fc = 0
    gml_Script_c_var_instance(id, "young_noelle", -1)
    gml_Script_c_waitcustom_end()
    gml_Script_c_var_instance(id, "wait_ready", 0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect_wait(buttonX[6], buttonY[6], 130)
    gml_Script_c_halt()
    gml_Script_c_wait(30)
    gml_Script_c_var_instance(id, "text_con", 10)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect_wait(6500, buttonY[6], 100)
    gml_Script_c_halt()
    gml_Script_c_var_instance(id, "wait_ready", 1)
    gml_Script_c_waitcustom()
}
if (con == 26 && (!gml_Script_d_ex()) && customcon == 1)
{
    con = 33
    customcon = 0
    global.fc = 0
    gml_Script_c_waitcustom_end()
    gml_Script_c_var_instance(id, "wait_ready", 0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect_wait(buttonX[7], buttonY[7], 100)
    gml_Script_c_halt()
    gml_Script_c_var_instance(id, "pause_kris", 1)
    gml_Script_c_wait(30)
    gml_Script_c_var_instance(id, "wait_ready", 1)
    gml_Script_c_waitcustom()
}
if pause_kris
{
    pause_kris = 0
    global.interact = 1
}
if (con == 33 && (!gml_Script_d_ex()) && customcon == 1 && wait_ready)
{
    con = 34
    customcon = 0
    global.interact = 1
    global.facing = 0
    obj_mainchara.visible = false
    kr_actor.visible = true
    kr_actor.x = obj_mainchara.x
    kr_actor.y = obj_mainchara.y
}
if (con == 34 && (!gml_Script_d_ex()) && wait_ready)
{
    con = 35
    gml_Script_c_waitcustom_end()
    gml_Script_c_var_instance(id, "wait_ready", 0)
    gml_Script_c_var_instance(id, "auto_continue", 0)
    gml_Script_c_sel(no)
    gml_Script_c_wait(15)
    gml_Script_c_autowalk(true)
    gml_Script_c_facing("u")
    gml_Script_c_walk_wait("u", 5, 10)
    gml_Script_c_wait(15)
    gml_Script_c_autowalk(false)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walk_wait("d", 5, 10)
    gml_Script_c_autowalk(true)
    gml_Script_c_soundplay(snd_jump)
    gml_Script_c_jump(6796, (kr_actor.y - 20), 20, 10)
    gml_Script_c_wait(15)
    if (gml_Script_scr_directOverTime((kr_actor.x + 50), 6796, 4) <= 4)
        gml_Script_c_walkdirect_wait((kr_actor.x + 50), (kr_actor.y - 20), 4)
    else
        gml_Script_c_walkdirect_wait((kr_actor.x + 50), (kr_actor.y - 20), gml_Script_scr_directOverTime((kr_actor.x + 50), 6796, 4))
    gml_Script_c_wait(20)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("r")
    gml_Script_c_msgside(1)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E6* (Sigh...)/%", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_348_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_facing("r")
    gml_Script_c_msgsetloc(0, "\\E4* (Kris is the only one who knows how weird I am.)/", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_352_0")
    gml_Script_c_msgnextloc("\\E8* (It's not fair^1, y'know!?)/%", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_353_0")
    gml_Script_c_talk()
    gml_Script_c_wait(20)
    gml_Script_c_waittalk()
    gml_Script_c_sel(no)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E4* (Everyone knows how weird YOU are. Fahahaha.)/%", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_360_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(kr)
    gml_Script_c_facing("d")
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 35 && (!gml_Script_i_ex(obj_cutscene_master)))
{
    con = 99
    global.interact = 0
    global.facing = 0
    global.flag[7] = 0
    global.plot = 94
}
if auto_continue
{
    if instance_exists(obj_dialoguer)
    {
        obj_dialoguer.zurasu = 1
        obj_dialoguer.side = 0
    }
    if instance_exists(obj_writer)
    {
        obj_writer.skippable = false
        if (obj_writer.halt != false)
        {
            msgtimer++
            var max_timer = 60
            if (global.lang == "ja")
            {
                if (text_con == 3 || text_con == 5)
                    max_timer = 120
                if (text_con == 9)
                    max_timer = 90
            }
            if (msgtimer >= max_timer)
            {
                with (obj_writer)
                    forcebutton1 = true
                msgtimer = 0
            }
        }
        else
            msgtimer = 0
    }
}
if (custom_delay > 0)
{
    customcon = 1
    alarm[9] = custom_delay
    custom_delay = 0
}
if allow_move
{
    allow_move = 0
    global.interact = (!global.interact)
    if (global.interact == 1)
    {
        obj_mainchara.visible = false
        kr_actor.visible = true
        kr_actor.x = obj_mainchara.x
        kr_actor.y = obj_mainchara.y
    }
}
if (young_noelle != 0)
{
    no_silhouette.copy_sprite = young_noelle < 0
    young_noelle = 0
}
if (text_con == 0)
{
    text_con = 1
    auto_continue = 1
    gml_Script_scr_speaker("noelle")
    gml_Script_msgsetloc(0, "* ...when I said this city makes my head spin.../", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_470_0")
    gml_Script_msgnextloc("* I didn't mean in a bad way... you know?/", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_471_0")
    gml_Script_msgnextloc("* I always wanted to go someplace new^1, you know?/%", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_472_0")
    global.fc = 0
    d = gml_Script_d_make()
    d.zurasu = 1
    d.side = 0
}
if (text_con == 2 && (!gml_Script_d_ex()))
{
    text_con = 3
    gml_Script_scr_speaker("noelle")
    gml_Script_msgsetloc(0, "* ..^1. And Dess..^1. always told me she'd take me./", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_486_0")
    gml_Script_msgnextloc("* Somewhere like this./", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_487_0")
    gml_Script_msgnextloc("* Somewhere with shining lights./%", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_488_0")
    global.fc = 0
    d = gml_Script_d_make()
    d.zurasu = 1
    d.side = 0
}
if (text_con == 4 && (!gml_Script_d_ex()))
{
    text_con = 5
    gml_Script_scr_speaker("noelle")
    gml_Script_msgsetloc(0, "* ... don't you miss exploring, Kris?/", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_502_0")
    gml_Script_msgnextloc("* Back when the four of us were kids?/", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_503_0")
    gml_Script_msgnextloc("* Gosh, remember that night we explored the forest behind the graveyard?/%", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_504_0")
    global.fc = 0
    d = gml_Script_d_make()
    d.zurasu = 1
    d.side = 0
}
if (text_con == 6 && (!gml_Script_d_ex()))
{
    text_con = 7
    gml_Script_scr_speaker("noelle")
    gml_Script_msgsetloc(0, "* Ha, I know we never found anything interesting back there.../", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_518_0")
    gml_Script_msgnextloc("* I mostly remember... Crying because I was scared./%", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_519_0")
    global.fc = 0
    d = gml_Script_d_make()
    d.zurasu = 1
    d.side = 0
}
if (text_con == 8 && (!gml_Script_d_ex()))
{
    text_con = 9
    gml_Script_scr_speaker("noelle")
    gml_Script_msgsetloc(0, "* But for some reason I feel..^1. nostalgic thinking about it./", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_533_0")
    gml_Script_msgnextloc("* Dess wiping away my tears with Azzy's jacket.../", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_534_0")
    gml_Script_msgnextloc("* With warm sleeves that smelled like cinnamon./%", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_535_0")
    global.fc = 0
    d = gml_Script_d_make()
    d.zurasu = 1
    d.side = 0
}
if (text_con == 10 && (!gml_Script_d_ex()))
{
    text_con = 11
    gml_Script_scr_speaker("noelle")
    gml_Script_msgsetloc(0, "* I guess I didn't mind being scared if it meant.../", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_549_0")
    gml_Script_msgnextloc("* Someone would comfort me./%", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_550_0")
    global.fc = 0
    d = gml_Script_d_make()
    d.zurasu = 1
    d.side = 0
}
