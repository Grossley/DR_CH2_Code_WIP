if (con == 0)
{
    con = 1
    alarm[4] = 40
}
if (con == 1)
    global.interact = 1
if (con == 2)
{
    sndplay = false
    if global.currentsong[1]
    {
        sndplay = true
        global.currentsong[1]
    }
    371
    con = 3
    alarm[4] = 200
}
if (con == 4)
{
    with (obj_dialoguer_ch1)
        // WARNING: Popz'd an empty stack.
    with (obj_writer_ch1)
        // WARNING: Popz'd an empty stack.
    con = 7
}
if (con == 7)
{
    371
    if (sndplay == true)
        global.currentsong[1]
    global.msg[0] = "obj_darkphone_event_slash_Step_0_gml_42_0"
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 5
    global.interact = 6
    // WARNING: Popz'd an empty stack.
}
