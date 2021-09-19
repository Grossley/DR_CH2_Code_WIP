outline = 1
var d = gml_Script_instance_create(x, (gml_Script_cameray() - 100), obj_following_silhouette)
d.target_char = 80
with (obj_caterpillarchara)
{
    d = gml_Script_instance_create(x, (gml_Script_cameray() - 100), obj_following_silhouette)
    d.target_char = self
}
depth = 200
