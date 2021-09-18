_offcamera = 0
rightx = (x + sprite_width)
leftx = x
bottomy = (y + sprite_height)
topy = y
if (x > ((gml_Script___view_get(0, 0) + gml_Script___view_get(2, 0)) + argument0))
    _offcamera = 1
if (rightx < (gml_Script___view_get(0, 0) - argument0))
    _offcamera = 1
if (y > ((gml_Script___view_get(1, 0) + gml_Script___view_get(3, 0)) + argument0))
    _offcamera = 1
if (bottomy < (gml_Script___view_get(1, 0) - argument0))
    _offcamera = 1
return _offcamera;
