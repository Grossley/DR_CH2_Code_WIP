initsongvar = ("mus/" + argument0)
_mystream = audio_create_stream(initsongvar)
_astream = gml_Script_instance_create_ch1(0, 0, 1451)
_astream.mystream = _mystream
return _mystream;