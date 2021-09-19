if (con == -1)
    event_inherited()
if (con == 0 && (!gml_Script_d_ex()))
{
    con = 1
    event_user(0)
}
if (con == 1 && (!gml_Script_d_ex()))
    con = -1
