if gml_Script_button1_p_ch1()
    event_user(0)
if gml_Script_left_p_ch1()
{
    if (mychoice == 0)
        mychoice = 1
    else
        mychoice = 0
    if (mychoice == 1)
        x = ((185 * dar) + add)
    else
        x = ((89 * dar) + add)
}
if gml_Script_right_p_ch1()
{
    if (mychoice == 0)
        mychoice = 1
    else
        mychoice = 0
    if (mychoice == 1)
        x = ((185 * dar) + add)
    else
        x = ((89 * dar) + add)
}
