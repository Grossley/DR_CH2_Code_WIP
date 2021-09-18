depth = -5000
timer = 0
global.interact = 1
// WARNING: Popz'd an empty stack.
274
2
3
gml_Script_scr_makecaterpillar(80, 130, 2, 0)
gml_Script_scr_makecaterpillar(80, 210, 3, 1)
with (obj_caterpillarchara)
    // WARNING: Popz'd an empty stack.
muted = 0
xmod = 0
ymod = 0
marker1 = gml_Script_scr_dark_marker(294, 64, 2423)
marker2 = gml_Script_scr_dark_marker(230, 130, 2423)
marker3 = gml_Script_scr_dark_marker(295, 204, 2423)
text = "Here's my#test dialogue!"
if (!"ballooner.txt")
{
    "ballooner.txt"
    ini_write_string("ballooner", "text", text)
    // WARNING: Popz'd an empty stack.
}
else
{
    "ballooner.txt"
    text = ini_read_string("ballooner", "text", text)
    // WARNING: Popz'd an empty stack.
}
