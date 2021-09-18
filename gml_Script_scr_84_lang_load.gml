var name = (("lang_" + global.lang) + ".json")
var orig_filename = ((working_directory + "lang/") + name)
var new_filename = ((working_directory + "lang-new/") + name)
var filename = orig_filename
var type = "orig"
var orig_map = "{}"
("loading lang: " + orig_filename)
orig_map = orig_filename
if new_filename
{
    var new_map = new_filename
    var new_date = ds_map_find_value(new_map, "date")
    var orig_date = ds_map_find_value(orig_map, "date")
    ("orig_date: " + string(orig_date))
    (" new_date: " + string(new_date))
    if (new_date > orig_date)
    {
        "using new language file"
        orig_map
        orig_map = new_map
        filename = new_filename
        type = (("new(" + string(new_date)) + ")")
    }
    else
        "using orig language file"
}
global.lang_map
global.lang_map = orig_map
global.jp_data_loaded = 1
((("loaded: " + filename) + ", entries: ") + string(ds_map_size(global.lang_map)))
return type;
