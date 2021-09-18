talking = 0
if (global.plot == 17 && global.chapter == 2)
    talking = 1
if (talking == 0)
{
    if (!190)
    {
        myinteract = 1
        global.interact = 1
        con = 1
    }
}
if (talking == 1)
{
    global.interact = 1
    talking = 2
    myinteract = 3
    "none"
    gml_Script_msgsetloc(0, "* (Can't go back there for now.)/%", "obj_dw_transition_interactable_slash_Other_10_gml_18_0")
    d = 
}
