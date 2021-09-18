setup_encounter = 0
if (global.fighting == false)
{
    if 49
        global.encounterno--
    if 50
        global.encounterno++
    if 51
        global.encounterno -= 5
    if 52
        global.encounterno += 5
}
global.encounterno = clamp(global.encounterno, encountermin, encountermax)
if 238
    obj_chaseenemy.myencounter = global.encounterno
if (global.fighting == false)
{
    if 54
    {
        // WARNING: Popz'd an empty stack.
        2
        3
    }
    if 55
        // WARNING: Popz'd an empty stack.
    if 56
    {
        // WARNING: Popz'd an empty stack.
        3
    }
    if 57
    {
        // WARNING: Popz'd an empty stack.
        4
        1
    }
    65280
    "main"
    draw_text(0, 440, ((((("Party:  " + string(global.charname[global.char[0]])) + " ") + string(global.charname[global.char[1]])) + " ") + string(global.charname[global.char[2]])))
    draw_text(0, 455, "6: full party. 7:kris only. 8:kris and ralsei 9: kris + noelle")
}
if (!900)
{
    if (global.fighting == false)
    {
        global.encounterno
        0
        draw_rectangle(0, 0, 80, 50, false)
        16777215
        "mainbig"
        draw_text(0, 0, ("EncounterNo: " + string(global.encounterno)))
        for (i = 0; i < 3; i++)
        {
            if (global.monstertype[i] > 0)
                draw_text(0, (20 + (i * 20)), global.monsterinstancetype[i])
        }
        12632256
        "main"
        for (j = 1; j < 5; j++)
        {
            (global.encounterno + j)
            for (i = 0; i < 3; i++)
            {
                draw_text(0, (60 + (j * 70)), ("Encounter: " + string((global.encounterno + j))))
                if (global.monstertype[i] > 0)
                    draw_text(0, ((70 + (i * 10)) + (j * 70)), global.monsterinstancetype[i])
            }
        }
        draw_text(300, 0, "Adjust EncounterNo:#1- 2+#3----- 4+++++")
        global.encounterno
    }
}
if (global.fighting == true && 68)
{
    if (!914)
        gml_Script_instance_create(0, 0, obj_danmaku_analyzer)
    else
    {
        with (obj_danmaku_analyzer)
            // WARNING: Popz'd an empty stack.
    }
}
