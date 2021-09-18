with (obj_writer)
    // WARNING: Popz'd an empty stack.
if (theystoppeddancing == 1)
{
    alarm[0] = -1
    global.typer = 6
    theystoppeddancing = 2
    "susie"
    gml_Script_msgsetloc(0, "* They stopped dancing!/", "obj_musical_controller_slash_Alarm_0_gml_11_0")
    gml_Script_msgnextloc("* We need to do it again!/%", "obj_musical_controller_slash_Alarm_0_gml_12_0")
    gml_Script_c_facenext("none", 0)
    // WARNING: Popz'd an empty stack.
    return;
}
if ((global.hp[1] <= 0 && happyfeetscene == 0) || (obj_sweet_enemy.actCounter > 3 && happyfeetscene == 0))
{
    with (obj_battlecontroller)
        noreturn = true
    obj_sweet_enemy.dancecon = 1
    obj_sweet_enemy.postattackscene = 1
    if (global.hp[2] < 1)
    {
        star = 1
        (global.hp[2] + 1)
    }
    if (global.hp[3] < 1)
    {
        star = 2
        (global.hp[3] + 1)
    }
    return;
}
skiptext = 0
with (obj_battlecontroller)
    noreturn = false
with (obj_battlecontroller)
{
    if (obj_musical_controller.ralseiportrait == 1)
        "ralsei"
    alarm[2] = 2
}
