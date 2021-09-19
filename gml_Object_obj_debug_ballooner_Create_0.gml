depth = -5000
timer = 0
global.interact = 1
gml_Script_scr_losechar()
gml_Script_safe_delete(274)
gml_Script_scr_getchar(2)
gml_Script_scr_getchar(3)
gml_Script_scr_makecaterpillar(80, 130, 2, 0)
gml_Script_scr_makecaterpillar(80, 210, 3, 1)
with (obj_caterpillarchara)
    gml_Script_scr_caterpillar_interpolate()
muted = 0
xmod = 0
ymod = 0
marker1 = gml_Script_scr_dark_marker(294, 64, 2424)
marker2 = gml_Script_scr_dark_marker(230, 130, 2424)
marker3 = gml_Script_scr_dark_marker(295, 204, 2424)
text = "Here's my#test dialogue!"
if (!file_exists("ballooner.txt"))
{
    ini_open("ballooner.txt")
    ini_write_string("ballooner", "text", text)
    ini_close()
}
else
{
    ini_open("ballooner.txt")
    text = ini_read_string("ballooner", "text", text)
    ini_close()
}
