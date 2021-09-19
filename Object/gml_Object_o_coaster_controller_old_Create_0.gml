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
BerdlyCoaster = gml_Script_instance_create((gml_Script_camerax() + 470), (gml_Script_cameray() + 203), o_coaster_berdly)
if instance_exists(obj_ch2_scene11a)
    o_coaster_berdly.x = (obj_ch2_scene11a.coaster_berdly.x + 16)
i = 0
while (i < 3)
{
    HeroCoaster[i] = gml_Script_instance_create(((gml_Script_camerax() + 100) - (i * 20)), ((gml_Script_cameray() + 149) + (60 * i)), o_coaster_hero)
    HeroCoaster[i].HeroID = i
    HeroCoaster[i].image_index = i
    HeroCoaster[i].depth = (HeroCoaster[i].y * -100)
    HeroCoaster[i].siner = 0
    HeroCoaster[i].mykey = mykey[i]
    var _temp_local_var_1 = HeroCoaster[i]
    back = gml_Script_instance_create(x, y, o_coaster_hero_back)
    back.image_index = HeroID
    back.parentid = id
}
jamatime = 90
jamatimer = 0
littime = 120
littimer = 0
