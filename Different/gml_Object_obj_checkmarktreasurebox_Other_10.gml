if (!opened)
{
    myinteract = 3
    global.interact = 1
    image_index = 1
    opened = 1
    snd_play(snd_locker)
    screen = instance_create(980, 100, obj_queenscreen)
    screen.image_index = 10
}
else
{
    with (obj_darkcontroller)
        charcon = 0
    global.msc = 0
    global.typer = 5
    if (global.darkzone == true)
        global.typer = 6
    global.fc = 0
    global.fe = 0
    global.interact = 1
    image_index = 1
    global.msg[0] = stringsetloc("* (The chest is empty.)/%", "obj_treasure_room_slash_Other_10_gml_18_0")
    myinteract = 3
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    talked += 1
}
