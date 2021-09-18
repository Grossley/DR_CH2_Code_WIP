if (global.monster[myself] == true)
{
    if (global.mnfight == 1 && talked == 0)
    {
        // WARNING: Popz'd an empty stack.
        if (!1522)
            gml_Script_instance_create_ch1(0, 0, 1522)
        global.typer = 50
        rr = choose(0, 1, 2, 3)
        if (rr == 0)
            global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_11_0"
        if (rr == 1)
            global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_12_0"
        if (rr == 2)
            global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_13_0"
        if (rr == 3)
            global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_14_0"
        if (acting == 2)
            global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_17_0"
        if (acting == 3)
        {
            if (rr == 0 || rr == 1)
                global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_21_0"
            if (rr == 2 || rr == 3)
                global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_22_0"
            if (complimented >= 2)
                global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_25_0"
        }
        gml_Script_scr_enemyblcon_ch1((x - 160), y, 3)
        talked = 1
        talktimer = 0
    }
    if (talked == 1 && global.mnfight == 1)
    {
        rtimer = 0
        15
        if (global.mnfight == 2)
        {
            if (!1536)
                // WARNING: Popz'd an empty stack.
            if (!1628)
                gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), 1628)
        }
    }
    if (global.mnfight == 2 && attacked == false)
    {
        rtimer += 1
        if (rtimer == 12)
        {
            rr = object_index
            if (rr == 99)
            {
                dc = gml_Script_instance_create_ch1(x, y, 1558)
                dc.type = 1
                dc.target = mytarget
                dc.damage = (global.monsterat[myself] * 5)
                dc.ratio = 1
            }
            else
            {
                visible = false
                dc = gml_Script_instance_create_ch1(x, y, 1574)
                dc.inv = 60
                dc.target = mytarget
                dc.grazepoints = 6
                dc.timepoints = 2
                dc.active = false
                dc.creator = id
                dc.damage = (global.monsterat[myself] * 5)
            }
            turns += 1
            global.turntimer = 180
            attacked = true
            global.typer = 6
            global.fc = 0
            rr = choose(0, 1, 2, 3, 4)
            if (rr == 0)
                global.battlemsg[0] = "obj_rudinnranger_slash_Step_0_gml_81_0"
            if (rr == 1)
                global.battlemsg[0] = "obj_rudinnranger_slash_Step_0_gml_82_0"
            if (rr == 2)
                global.battlemsg[0] = "obj_rudinnranger_slash_Step_0_gml_83_0"
            if (rr == 3)
                global.battlemsg[0] = "obj_rudinnranger_slash_Step_0_gml_84_0"
            if (rr == 4)
                global.battlemsg[0] = "obj_rudinnranger_slash_Step_0_gml_85_0"
            if (global.monsterstatus[myself] == true)
                global.battlemsg[0] = "obj_rudinnranger_slash_Step_0_gml_86_0"
            if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
                global.battlemsg[0] = "obj_rudinnranger_slash_Step_0_gml_87_0"
            if (global.mercymod[myself] >= global.mercymax[myself])
                global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_88_0"
        }
        else
            global.turntimer = 120
    }
    if (global.mnfight == 2)
    {
        if (global.turntimer <= 1)
        {
            if (battlecancel == 1)
                global.mercymod[myself] = 999
            if (battlecancel == 2)
            {
                with (obj_battlecontroller_ch1)
                    noreturn = true
                con = 1
                battlecancel = 3
            }
        }
    }
}
if (con == 1)
{
    con = 2
    alarm[4] = 10
}
if (con == 3)
{
    global.typer = 50
    global.mercymod[myself] = 999
    global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_122_0"
    gml_Script_scr_enemyblcon_ch1((x - 160), y, 3)
    con = 4
}
if (con == 4 && (!1327))
{
    hspeed = 15
    con = 5
    alarm[4] = 15
    with (obj_battlecontroller_ch1)
        alarm[2] = 17
}
if (con == 6)
{
    with (obj_battlecontroller_ch1)
        noreturn = false
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    con = 7
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_158_0"
        // WARNING: Popz'd an empty stack.
    }
    if (acting == 2 && actcon == 0)
    {
        global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_167_0"
        global.msg[1] = "obj_rudinnranger_slash_Step_0_gml_168_0"
        global.monstercomment[myself] = "obj_rudinnranger_slash_Step_0_gml_169_0"
        global.monsterstatus[myself] = true
        gml_Script_scr_mercyadd_ch1(myself, 50)
        // WARNING: Popz'd an empty stack.
        actcon = 1
    }
    if (acting == 3 && actcon == 0)
    {
        global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_181_0"
        gml_Script_scr_susface_ch1(1, 2)
        rrr = choose(0, 1, 2)
        if (rrr == 0)
            global.msg[2] = "obj_rudinnranger_slash_Step_0_gml_184_0"
        if (rrr == 1)
            global.msg[2] = "obj_rudinnranger_slash_Step_0_gml_185_0"
        if (rrr == 2)
            global.msg[2] = "obj_rudinnranger_slash_Step_0_gml_186_0"
        if (global.flag[503] == 0)
        {
            global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_190_0"
            gml_Script_scr_susface_ch1(1, 0)
            global.msg[2] = "obj_rudinnranger_slash_Step_0_gml_192_0"
            global.msg[3] = "obj_rudinnranger_slash_Step_0_gml_193_0"
            gml_Script_scr_ralface_ch1(4, 6)
            global.msg[5] = "obj_rudinnranger_slash_Step_0_gml_195_0"
            global.msg[6] = "obj_rudinnranger_slash_Step_0_gml_196_0"
            gml_Script_scr_susface_ch1(7, 0)
            global.msg[8] = "obj_rudinnranger_slash_Step_0_gml_198_0"
            global.msg[9] = "obj_rudinnranger_slash_Step_0_gml_199_0"
            global.flag[503] = 1
        }
        if (complimented >= 1)
        {
            global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_205_0"
            gml_Script_scr_susface_ch1(1, 0)
            global.msg[2] = "obj_rudinnranger_slash_Step_0_gml_207_0"
            complimented = 2
        }
        // WARNING: Popz'd an empty stack.
        actcon = 1
        if (complimented == 0)
            complimented = 1
    }
    if (actcon == 1 && (!1327))
    {
        if (acting == 3)
            gml_Script_scr_mercyadd_ch1(myself, 100)
        actcon = 0
        // WARNING: Popz'd an empty stack.
    }
    if (actcon == 10 && 1327 == 0)
    {
        global.typer = 50
        global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_235_0"
        gml_Script_scr_enemyblcon_ch1((x - 160), y, 3)
        actcon = 11
    }
    if (actcon == 11 && 1327 == 0)
    {
        global.typer = 45
        global.fc = 2
        global.fe = 8
        global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_245_0"
        // WARNING: Popz'd an empty stack.
        actcon = 12
    }
    if (actcon == 12 && 1327 == 0)
    {
        global.typer = 50
        global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_253_0"
        global.msg[1] = "obj_rudinnranger_slash_Step_0_gml_254_0"
        gml_Script_scr_enemyblcon_ch1((x - 160), y, 3)
        actcon = 14
    }
    if (actcon == 14 && 1327 == 0)
    {
        global.typer = 45
        global.fc = 2
        global.fe = 3
        global.msg[0] = "obj_rudinnranger_slash_Step_0_gml_264_0"
        // WARNING: Popz'd an empty stack.
        nexttry = true
        actcon = 1
    }
}
if (global.myfight == 7)
    hspeed = 15
