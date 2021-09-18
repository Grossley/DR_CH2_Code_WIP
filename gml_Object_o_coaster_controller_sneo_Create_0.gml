var _temp_local_var_1;
timer = 0
timermax = 180
playerinput = 0
playerinputtimer = 0
actcon = 0
krisgooffscreen = 0
susiegooffscreen = 0
ralseigooffscreen = 0
buttonspressed = 0
bumpmercy = 0
mykey[0] = 90
mykey[1] = 88
mykey[2] = 67
i = 0
while (i < 3)
{
    HeroCoaster[i] = gml_Script_instance_create(0, 0, o_coaster_hero_sneo)
    HeroCoaster[i].HeroID = i
    HeroCoaster[i].image_index = i
    HeroCoaster[i].depth = (HeroCoaster[i].y * -100)
    HeroCoaster[i].siner = 0
    HeroCoaster[i].mykey = mykey[i]
    var _temp_local_var_1 = HeroCoaster[i]
    back = gml_Script_instance_create(x, y, o_coaster_hero_back_sneo)
    back.parentid = id
    back.depth = (depth + 2)
}
