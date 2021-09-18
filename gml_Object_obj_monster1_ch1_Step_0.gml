var _temp_local_var_6;
if (global.monster[myself] == true)
{
    if (global.mnfight == 1 && talked == 0)
    {
        abletotarget = true
        if (global.charcantarget[0] == false && global.charcantarget[1] == false && global.charcantarget[2] == false)
            abletotarget = false
        mytarget = choose(0, 1, 2)
        if (abletotarget == true)
        {
            while (global.charcantarget[mytarget] == false)
                mytarget = choose(0, 1, 2)
        }
        else
            target = 3
        global.targeted[mytarget] = true
        gml_Script_instance_create_ch1(0, 0, 1522)
        global.typer = 7
        global.msg[0] = "obj_monster1_slash_Step_0_gml_25_0"
        if (global.mercymod[myself] >= global.mercymax[myself])
            global.msg[0] = "obj_monster1_slash_Step_0_gml_26_0"
        mywriter = gml_Script_instance_create_ch1((x - 60), (y - 30), 1327)
        talked = 1
        talktimer = 0
    }
    if (talked == 1 && global.mnfight == 1)
    {
        if (talktimer > 15)
            talktimer = talkmax
        talktimer += 1
        if (talktimer >= talkmax)
        {
            with (obj_writer_ch1)
                // WARNING: Popz'd an empty stack.
            global.mnfight = 2
        }
    }
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        global.msg[0] = "obj_monster1_slash_Step_0_gml_75_0"
        global.typer = global.battletyper
        battlewriter = gml_Script_instance_create_ch1((xx + 30), (yy + 376), 1327)
        if (global.fc != 0)
            myface = gml_Script_instance_create_ch1((xx + 26), (yy + 380), 1324)
        if (acting == 1)
            global.mercymod[myself] += 120
        if (global.mercymod[myself] >= global.mercymax[myself])
            global.msg[0] = "obj_monster1_slash_Step_0_gml_82_0"
    }
    if (acting == 2)
    {
        if (acttimer == 0)
        {
            global.msg[0] = "obj_monster1_slash_Step_0_gml_91_0"
            global.typer = global.battletyper
            battlewriter = gml_Script_instance_create_ch1((xx + 130), (yy + 376), 1327)
            if (global.fc != 0)
                myface = gml_Script_instance_create_ch1((xx + 26), (yy + 380), 1324)
        }
        if (acttimer == 20)
        {
            global.chartarget[0] = myself
            global.chartarget[1] = myself
            global.charspecial[0] = 1
            global.charspecial[1] = 1
            var _temp_local_var_6 = global.charinstance[0]
            state = 2
        }
        if (acttimer == 40)
            actcon = 1
        acttimer += 1
    }
    if (actcon == 1 && (!instance_exists(obj_writer_ch1)))
    {
        actcon = 0
        gml_Script_scr_attackphase_ch1()
    }
}
if (x > (gml_Script___view_get(0, 0) + 800) && global.myfight != 3)
    instance_destroy()
