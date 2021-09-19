playtextsound = true
if (gml_Script_button2_h_ch1() == 1)
    playtextsound = false
if (skippable == false)
    playtextsound = true
if (playtextsound == true)
{
    if (rate <= 2)
        getchar = string_char_at(mystring, pos)
    else
        getchar = string_char_at(mystring, (pos - 1))
    play = 1
    playcheck = 0
    if (getchar == "&")
    {
        if (rate < 3)
        {
            playcheck = 1
            getchar = string_char_at(mystring, (pos + 1))
        }
        else
            play = 0
    }
    if (getchar == " ")
        play = 0
    if (getchar == "^")
        play = 0
    if (getchar == "!")
        play = 0
    if (getchar == ".")
        play = 0
    if (getchar == "?")
        play = 0
    if (getchar == ",")
        play = 0
    if (getchar == ":")
        play = 0
    if (getchar == "/")
        play = 0
    if (getchar == "\\")
        play = 0
    if (getchar == "|")
        play = 0
    if (getchar == "*")
        play = 0
    if (play == 1)
    {
        gml_Script_snd_play_ch1(textsound)
        with (obj_face_parent_ch1)
            mouthmove = 1
    }
}
return;
