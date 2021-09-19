if gml_Script_i_ex(837)
{
    with (obj_gigaqueen_enemy)
    {
        obj_gigaqueen_enemy.healcount = 0
        global.actcost[myself][2] = 50
        gml_Script_scr_spellmenu_setup()
    }
}
global.hp[1] = 1
dead = 0.5
if (global.flag[526] < 10)
{
    obj_queen_explodinghead.flag[global.flag[obj_queen_explodinghead]] = (global.flag[obj_queen_explodinghead] + 1)
    global
}
gml_Script_snd_free(global.batmusic[0])
health_count = 0
dead_timer = 0
global.turntimer = 0
if (instance_exists(obj_heart) || instance_exists(obj_returnheart))
{
    event_user(0)
    with (obj_battlecontroller)
    {
        gigaqueencon = 5
        gigaqueentimer = 0
    }
}
