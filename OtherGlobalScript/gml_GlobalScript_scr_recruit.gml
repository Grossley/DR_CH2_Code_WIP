if (recruitable == 1 && global.flag[61] == 0)
{
    if (global.flag[(global.monstertype[myself] + 600)] >= 0 && global.flag[(global.monstertype[myself] + 600)] < 1 && recruitcount > 0)
    {
        if (recruitcount == -1)
        {
            gml_Script_scr_recruit_info(global.monstertype[myself])
            recruitcount = _recruitcount
        }
        global.flag[(global.monstertype[myself] + 600)] += (1 / recruitcount)
        if (global.flag[(global.monstertype[myself] + 600)] > 1)
            global.flag[(global.monstertype[myself] + 600)] = 1
        gml_Script_snd_play(337)
        _recruitanim = gml_Script_instance_create(global.monsterx[myself], (global.monstery[myself] - 40), obj_recruitanim)
        _recruitanim.firstnumber = round((global.flag[(global.monstertype[myself] + 600)] / (1 / recruitcount)))
        _recruitanim.secondnumber = recruitcount
    }
}
return;
