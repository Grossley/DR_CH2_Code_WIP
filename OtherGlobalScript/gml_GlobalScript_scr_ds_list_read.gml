var new_list = ds_list_create()
var list_string = gml_Script_ossafe_file_text_read_string(argument0)
if (list_string != "")
    ds_list_read(new_list, list_string)
return new_list;
