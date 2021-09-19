showArea = gml_Script_scr_debug()
image_alpha = 0
depth = 777777
keepHidden = 0
active = false
cancel = 0
onlyActiveIfBulletsExist = 0
onlyActiveIfSpecialObjectExists = 0
specialObject = 0
checkid = id
extflag = 0
timer = 0
ignorebuffer = 0
if (!gml_Script_i_ex(242))
    gml_Script_instance_create(0, 0, obj_battlealphaer)
if (!gml_Script_i_ex(44))
    gml_Script_instance_create(0, 0, obj_battleLayerHighlight)
if (showArea == 0)
    image_alpha = 0
if (showArea == 1 && gml_Script_scr_debug())
    image_alpha = 0.1
checkid = id
