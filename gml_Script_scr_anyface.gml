_speakerC = argument0
_msgno = argument1
_emotion = argument2
if argument2
{
    if (argument2 >= 10)
    {
        if (argument2 < 36)
            _emotion = (55 + argument2)
        else
            emotion = (61 + argument2)
    }
}
_speaker = _speakerC
if (_speaker == "susie" || _speaker == "sus")
    gml_Script_scr_susface(_msgno, _emotion)
if (_speaker == "ralsei" || _speaker == "ral")
    gml_Script_scr_ralface(_msgno, _emotion)
if (_speaker == "noelle" || _speaker == "noe")
    gml_Script_scr_noeface(_msgno, _emotion)
if (_speaker == "toriel" || _speaker == "tor")
    gml_Script_scr_torface(_msgno, _emotion)
if (_speaker == "asgore" || _speaker == "asg")
    gml_Script_scr_asgface(_msgno, _emotion)
if (_speaker == "king" || _speaker == "kin")
    gml_Script_scr_kingface(_msgno, _emotion)
if (_speaker == "rudy" || _speaker == "rud")
    gml_Script_scr_rudface(_msgno, _emotion)
if (_speaker == "lancer" || _speaker == "lan")
    gml_Script_scr_lanface(_msgno, _emotion)
if (_speaker == "berdly" || _speaker == "ber")
    gml_Script_msgsetsubloc(argument1, "\\TX \\F0 \\E~1 \\FB \\TB %", string(_emotion), "scr_anyface_slash_scr_anyface_gml_23_0")
if (_speaker == "alphys" || _speaker == "alp")
    gml_Script_msgsetsubloc(argument1, "\\TX \\F0 \\E~1 \\Fa \\Ta %", string(_emotion), "scr_anyface_slash_scr_anyface_gml_24_0")
if (_speaker == "none" || _speaker == "x" || _speaker == "no name" || _speaker == "no_name")
    _msgno
if (_speaker == "rouxls" || _speaker == "rou")
    gml_Script_scr_rurusface(_msgno, _emotion)
if (_speaker == "queen" || _speaker == "que")
    gml_Script_msgsetsubloc(argument1, "\\TX \\F0 \\E~1 \\FQ \\TQ %", string(_emotion), "scr_anyface_slash_scr_anyface_gml_27_0")
if (_speaker == "queen2" || _speaker == "que2")
    gml_Script_msgsetsubloc(argument1, "\\TX \\F0 \\E~1 \\F0 \\Tq %", string(_emotion), "scr_anyface_slash_scr_anyface_gml_28_0_b")
if (_speaker == "sans" || _speaker == "san")
    gml_Script_msgsetsubloc(argument1, "\\TX \\F0 \\E~1 \\Fs \\Ts %", string(_emotion), "scr_anyface_slash_scr_anyface_gml_28_0")
if (_speaker == "undyne" || _speaker == "und")
    gml_Script_msgsetsubloc(argument1, "\\TX \\F0 \\E~1 \\FU \\TU %", string(_emotion), "scr_anyface_slash_scr_anyface_gml_29_0")
if (_speaker == "burgerpants")
    gml_Script_msgsetsubloc(argument1, "\\TX \\F0 \\E~1 \\Fb \\T0 %", string(_emotion), "scr_anyface_slash_scr_anyface_gml_30_0")
if (_speaker == "sneo")
    gml_Script_msgsetsub(argument1, "\\TX \\F0 \\E~1 \\Tp %", _emotion)
return;
