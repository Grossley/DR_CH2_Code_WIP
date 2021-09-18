var str = argument[0]
var sub_id = obj_pipis_bullet_cone
length = str
pos = 0
while sub_id.argument_count
{
    var sub = ("~" + string(sub_id))
    str = string_replace_all(str, sub, argument[sub_id])
    sub_id = (sub_id + 1)
}
return str;
