if (room == room_dw_mansion_krisroom)
{
    var bathbombs = gml_Script_instance_create(120, 152, obj_npc_room)
    bathbombs.sprite_index = spr_dw_mansion_room_kris_bathbomb
    with (bathbombs)
        gml_Script_scr_depth()
    var jongler = gml_Script_instance_create(124, 323, obj_npc_room_animated)
    jongler.sprite_index = spr_dw_mansion_room_kris_book_juggling
    with (jongler)
        gml_Script_scr_depth()
    var tutoriel = gml_Script_instance_create(448, 326, obj_npc_room_animated)
    tutoriel.sprite_index = spr_dw_mansion_room_kris_toriel_piano
    with (tutoriel)
        gml_Script_scr_depth()
    if (global.lang == "en")
    {
        var tutorial = gml_Script_instance_create(378, 326, obj_npc_room_animated)
        tutorial.sprite_index = spr_dw_mansion_room_kris_toriel_piano
        with (tutorial)
            gml_Script_scr_depth()
    }
    var jello = gml_Script_instance_create(124, 275, obj_npc_room_animated)
    jello.sprite_index = spr_dw_mansion_room_kris_knife_jello
    with (jello)
        gml_Script_scr_depth()
    var calendar = gml_Script_instance_create(199, 345, obj_npc_room_animated)
    calendar.sprite_index = spr_dw_mansion_room_kris_calendar
    with (calendar)
        gml_Script_scr_depth()
    var casette = gml_Script_instance_create(470, 266, obj_npc_room_animated)
    casette.sprite_index = spr_dw_mansion_room_kris_casette_floating
    casette.depth = 500000
    if (global.plot >= 100)
    {
        var computer = gml_Script_instance_create(130, 24, obj_npc_room)
        computer.sprite_index = spr_dw_mansion_room_kris_monitor
        with (computer)
            gml_Script_scr_depth()
        var talktube = gml_Script_instance_create(437, 150, obj_npc_sign)
        talktube.sprite_index = spr_dw_mansion_room_kris_talk_tube
        talktube.image_speed = 0
        with (talktube)
            gml_Script_scr_depth()
    }
}
if (room == room_dw_mansion_susieroom)
{
    var book = gml_Script_instance_create(138, 335, obj_npc_room_animated)
    book.sprite_index = spr_dw_mansion_room_susie_book_vacuum
    with (book)
        gml_Script_scr_depth()
    var egg = gml_Script_instance_create(142, 282, obj_npc_room)
    egg.sprite_index = spr_dw_mansion_room_susie_easter_egg
    with (egg)
        gml_Script_scr_depth()
    var glitch = gml_Script_instance_create(447, 200, obj_npc_room_animated)
    glitch.sprite_index = spr_dw_mansion_room_susie_glitch
    with (glitch)
        gml_Script_scr_depth()
    computer = gml_Script_instance_create(130, 26, obj_npc_room)
    computer.sprite_index = spr_dw_mansion_room_susie_computer
    with (computer)
        gml_Script_scr_depth()
    var game = gml_Script_instance_create(368, 330, obj_npc_room_animated)
    game.sprite_index = spr_dw_mansion_room_susie_video_game
    with (game)
        gml_Script_scr_depth()
    var gamebroke = gml_Script_instance_create(450, 302, obj_npc_room_animated)
    gamebroke.sprite_index = spr_dw_mansion_room_susie_video_game_broken
    with (gamebroke)
        gml_Script_scr_depth()
    talktube = gml_Script_instance_create(124, 168, obj_npc_room)
    talktube.sprite_index = spr_dw_mansion_room_susie_talk_tube
    with (talktube)
        gml_Script_scr_depth()
}
