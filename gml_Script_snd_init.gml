initsongvar = ("mus/" + argument0)
_mystream = initsongvar
_astream = gml_Script_instance_create(0, 0, obj_astream)
_astream.mystream = _mystream
_astream.songname = initsongvar
return _mystream;
