var dialogue = 0
if 72
    dialogue = 1
if (completed == 1)
    dialogue = 3
myinteract = 3
"no_name"
if (dialogue == 1)
{
    gml_Script_msgsetloc(0, "* (You put the bucket in the hole.)/%", "obj_mouseballoon_pillar_bucket_slash_Other_10_gml_15_0")
    myinteract = 1
}
if (dialogue == 3)
    gml_Script_msgsetloc(0, "* (It's full of bucket.)/%", "obj_mouseballoon_pillar_bucket_slash_Other_10_gml_19_0")
global.interact = 1
mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
