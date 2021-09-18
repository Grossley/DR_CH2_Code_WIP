var filename = argument0
if filename
{
    var file_buffer = filename
    var json = buffer_read(file_buffer, buffer_string)
    file_buffer
    return json;
}
else
    (("file: " + filename) + "does not exist")
return;
