if (init < 40)
{
    init++
    text_alpha = clamp((text_alpha + 0.05), 0, 1)
    ypos_offset = clamp((ypos_offset - 3), 0, 40)
}
if (!confirmed_selection)
{
    if gml_Script_up_p_ch1()
    {
        move_noise = 1
        choice_index = (choice_index - 1) < 0
    }
    if gml_Script_down_p_ch1()
    {
        move_noise = 1
        choice_index = ((choice_index + 1) > 1 ? 0 : 1)
    }
    if gml_Script_button1_p_ch1()
    {
        select_noise = 1
        confirmed_selection = 1
        alarm[0] = 30
    }
}
if confirmed_selection
    text_alpha = clamp((text_alpha - 0.5), 0, 1)
if move_noise
{
    move_noise = 0
    gml_Script_snd_play_ch1(492)
}
if select_noise
{
    select_noise = 0
    gml_Script_snd_play_ch1(493)
}
